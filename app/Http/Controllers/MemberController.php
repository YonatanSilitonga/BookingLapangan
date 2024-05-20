<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PenggunaOlahraga;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Hash;

class MemberController extends Controller
{
    public function index()
    {
        // Retrieve all members from the database
        $members = PenggunaOlahraga::all();

        // Pass the members data to the view
        return view('member.member', compact('members'));
    }

    public function show_member($id_pengguna)
    {
        // Retrieve the member with the given ID from the database
        $member = PenggunaOlahraga::findOrFail($id_pengguna);

        // Pass the member data to the view
        return view('member.member_show', compact('member'));
    }
    public function destroy_member($id)
    {
        // Find the member by ID
        $member = PenggunaOlahraga::findOrFail($id);

        // Delete the member
        $member->delete();

        // Redirect back with a success message
        return redirect()->back()->with('success', 'Member has been deleted successfully.');
    }

    // Method untuk menyimpan member baru
    public function store(Request $request)
    {
        $request->validate([
            'username' => 'required|unique:pengguna_olahraga,username_pengguna',
            'password' => 'required|min:6',            
        ]);

        PenggunaOlahraga::create([
            'username_pengguna' => $request->username,
            'password_pengguna' => Hash::make($request->password),
            'jenis_pengguna' => 'pengelola',
            'created_by' => 'admin', // Nilai default 'admin'      
            'updated_by' => 'admin', // Nilai default 'admin'      
        ]);

        return redirect()->back()->with('success', 'Member berhasil ditambahkan.');
    }
}
