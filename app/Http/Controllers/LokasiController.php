<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Lokasi;

class LokasiController extends Controller
{
    public function index()
    {
        $data = Lokasi::all();
        return view('court.lokasi_lapangan',['data'=>$data]);
    }
    public function store(Request $request) {
        $validatedData = $request->validate([
            'nama_lokasi' => 'required|string|max:255',
            'alamat' => 'required|string|max:255',
            'deskripsi' => 'required|string',
            'foto' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
    
        $path = $request->file('foto')->store('public/lokasi');
    
        Lokasi::create([
            'nama_lokasi' => $request->nama_lokasi,
            'alamagt' => $request->alamat,
            'deskripsi' => $request->deskripsi,
            'foto' => $path,
        ]);
    
        return response()->json(['success' => 'Lokasi berhasil ditambahkan']);
    }
}
