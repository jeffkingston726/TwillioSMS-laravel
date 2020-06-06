<?php

namespace App\Http\Middleware;

use Closure;
use Twilio\Security\RequestValidator;
use Twilio\Twiml\MessagingResponse;

class TwilioWebhookValidator
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
    	
    	$token = env('TWILIO_AUTH_TOKEN');
        $signature = $request->header('X-Twilio-Signature');
        if(!$signature) {
        	$response = new MessagingResponse();
        	$response->message("You are a scammer :)");
        	return response($response);
        }
        $url = $request->fullUrl();
        
        $requestData = $request->toArray();

        if (array_key_exists('bodySHA256', $requestData)) {
            $requestData = $request->getContent();
        }

        $validator = new RequestValidator($token);

        if ($validator->validate($signature, $url, $requestData)) {
        	return $next($request);
        } else {
        	$response = new MessagingResponse();
        	$response->message("You are a scammer :("." Token: ".$token." Signature: ".$signature. "Url: ".$url);
        	return response($response);
        }
    }
}