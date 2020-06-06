<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\User;

class AuthController extends Controller
{
    public $successStatus = 200;

    public function register(Request $request)
    {
        $validatedData = $request->validate([
            'name'=>'required|max:55',
            'email'=>'email|required|unique:users',
            'password'=>'required|confirmed'
        ]);

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        $user = User::find($user->id);
        $accessToken = $user->createToken('authToken')->accessToken;
        $message = 'Request for registeration has been sent. Please wait until the administrator accepts your request.';

        return response()->json(['success'=>1,'message'=>$message,'user'=>$user, 'access_token'=>$accessToken], $this->successStatus);
    }


    public function login(Request $request)
    {
        $loginData = $request->validate([
            'email' => 'email|required',
            'password' => 'required'
        ]);

        if(!auth()->attempt($loginData)) {
            return response(['success'=>0, 'message'=>'Invalid credentials']);
        }

        $accessToken = auth()->user()->createToken('authToken')->accessToken;

        return response()->json(['success'=>1, 'message'=>'Login success','user' => auth()->user(), 'access_token' => $accessToken]);

    }

    public function logout(Request $request)
    {
        $request->user()->token()->revoke();
        return response()->json(['success'=>1, 'message' => 'Successfully logged out']);
    }
}
