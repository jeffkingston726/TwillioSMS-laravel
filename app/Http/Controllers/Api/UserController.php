<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use App\User;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $users = User::all();

        return response()->json($users);
    }

    public function profile(Request $request)
    {
        return response()->json(["success"=>1 ,"profile"=>auth()->user()]);
    }

    public function detail($id)
    {
        $user = User::find($id);
        return response()->json($user);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::find($id);
        if($user) {
        	$user->update($request->all());
        	$success = 1;
        	$message = 'A user has been updated.';
        } else {
        	$success = 0;
        	$message = 'User id '.$id.' does not exist.';
        }

        return response()->json(['success' => $success, 'message' => $message]);
    }

    public function changePassword(Request $request)
    {
        $validatedData = $request->validate([
            'password'=>'required|confirmed'
        ]);

        $user = auth()->user();
        if($user) {
            $password_old = $request->password_old;
            $password_db = $user->password;
            if(!Hash::check($password_old, $password_db)) {
                return response()->json(['success' => 0, 'message' => 'Earlier password is not correct.']);
            }

            $user->password = bcrypt($request->password);
            $user->save();
            return response()->json(['success' => 1, 'message' => 'Password has been changed.']);
        }
    }

    public function destroy($id)
    {
        $user = User::find($id);
        if($user) {
        	$user->delete();
        	$success = 1;
        	$message = 'A user has been deleted.';
        } else {
        	$success = 0;
        	$message = 'User id '.$id.' does not exist.';
        }

        return response()->json(['success' => $success, 'message' => $message]);
    }

}
