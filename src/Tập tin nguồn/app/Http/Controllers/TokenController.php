<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TokenController extends Controller
{
    public function createToken(Request $request)
    {
        // Tạo một user giả lập nếu không có user nào đăng nhập
        $user = User::firstOrCreate([
            'email' => 'guest@example.com',
        ], [
            'name' => 'Guest User',
            'password' => bcrypt('guestpassword'), // Đặt mật khẩu mặc định nếu cần thiết
        ]);

        // Tạo token cho user
        $token = $user->createToken('guest-token')->plainTextToken;

        return response()->json(['token' => $token]);
    }
}
