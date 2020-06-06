<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\SMS;
use Twilio\Rest\Client;
use Twilio\Twiml\MessagingResponse;
use Twilio\Security\RequestValidator;

class SMSController extends Controller
{
    protected $twilio_number;
    protected $twilio_sid;
    protected $twilio_auth_token;

    public function __construct() {
        $this->twilio_number = env('TWILIO_PHONE');
        $this->twilio_sid = env('TWILIO_SID');
        $this->twilio_auth_token = env('TWILIO_AUTH_TOKEN');
    }

    public function send(Request $request) {
        
        $phone_numbers = $request->input('phone');
        $message = $request->input('message');

        $client = new Client($this->twilio_sid, $this->twilio_auth_token);

        $count = 0;
        foreach ($phone_numbers as $phone_number) {
            if(empty($phone_number)) continue;
            $client->messages->create(
                $phone_number,
                array(
                    'from' => $this->twilio_number,
                    'body' => $message
                )
            );
            $count ++;

            // Create a record to SMS table
            $user = auth()->user();
            $sms = new SMS();
            $sms->user_id = $user->id;
            $sms->phone_number = $phone_number;
            $sms->message = $message;
            $sms->type = SMS::TYPE_OUT;
            $sms->save();
        }



        return response()->json(['success' => 1, 'numbers'=>$phone_numbers, 'message'=>'Your SMS has been sent to '.$count.' phone number(s)']);
    }

    public function reply(Request $request) {

        $number_from = $request->input('From');
        $body = $request->input('Body');
        $NumMedia = (int)$request->input('NumMedia');

        $mediaUrl = array();
        for ($i=0; $i < $NumMedia; $i++) { 
            $mediaUrl[] = $request->input("MediaUrl".$i);
        }

        $message = "You have received a message from a customer.\n";
        $message .= "Phone number: ".$number_from."\n";
        $message .= "Message: ".$body;

        $client = new Client($this->twilio_sid, $this->twilio_auth_token);
        
        if ($NumMedia > 0) {
            $client->messages->create(
                env("TWILIO_REDIRECT_REPLY_TO"),
                array(
                    'from' => $this->twilio_number,
                    'body' => $message,
                    'mediaUrl' => $mediaUrl
                )
            );
        } else {
            $client->messages->create(
                env("TWILIO_REDIRECT_REPLY_TO"),
                array(
                    'from' => $this->twilio_number,
                    'body' => $message
                )
            );
        }
        

        // Create a record to SMS table
        $user = auth()->user();
        $sms = new SMS();
        $sms->phone_number = $number_from;
        $sms->message = $body;
        $sms->type = SMS::TYPE_IN;
        $sms->save();

        $response = new MessagingResponse();
        return response($response);
    }

    public function getSentSMS(Request $request) {
        $sms = new SMS();
        $result = $sms->getMessage($request->all(), SMS::TYPE_OUT);
        return response()->json($result);
    }

    public function getReceivedSMS(Request $request) {
        $sms = new SMS();
        $result = $sms->getMessage($request->all(), SMS::TYPE_IN);
        return response()->json($result);
    }

}
