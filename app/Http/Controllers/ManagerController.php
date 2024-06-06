<?php

namespace App\Http\Controllers;

use App\Models\Lokasi;
use App\Models\Manager;
use Illuminate\Http\Request;
use App\Models\PenggunaOlahraga;
use Illuminate\Support\Facades\Hash;

class ManagerController extends Controller
{
    public function index()
    {
        // Retrieve all manager with jenis_pengguna 'pengelola' from the database
        $managers = PenggunaOlahraga::with('pengelola')->where('jenis_pengguna', 'pengelola')->get();

        $data = Lokasi::all();

        // Pass the manager data to the view
        return view('manager.manager', compact('managers','data'));
    }


    public function show_member($id_pengguna)
    {
        // Retrieve the member with the given ID from the database
        $member = PenggunaOlahraga::findOrFail($id_pengguna)->where('jenis_pengguna', 'pengelola')->get();

        // Pass the member data to the view
        return view('manager.manager_show', compact('member'));
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
            'id_pengguna' => 'required',
            'username' => 'required|unique:pengguna_olahraga,username_pengguna',
            'password' => 'required|min:6',
            'id_lokasi' => 'required|exists:lokasi,id_lokasi', // Validasi untuk ID kategori lapangan
        ]);

        PenggunaOlahraga::create([
            'id_pengguna' => $request -> id_pengguna,
            'username_pengguna' => $request->username,
            'password_pengguna' => Hash::make($request->password),
            'jenis_pengguna' => 'pengelola',
            'created_by' => 'admin', // Nilai default 'admin'                  
            'udpated_by' => 'admin', // Nilai default 'admin'                  
        ]);
        
        Manager::create([
            'id_lapangan' => $request->id_lokasi,
            'id_pengguna' => $request->id_pengguna,            
            'tanggal_mulai' => time(),            
            'created_by' => 'admin', // Nilai default 'admin'                  
            'status' => 'aktif', // Nilai default 'admin'                  
        ]);
    

        return redirect()->back()->with('success', 'Member berhasil ditambahkan.');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
