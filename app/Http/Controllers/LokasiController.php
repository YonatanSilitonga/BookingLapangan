<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Lokasi;

class LokasiController extends Controller
{
    public function index()
    {
        $data = Lokasi::all();
        return view('court.lokasi_lapangan', ['data' => $data]);
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'nama_lokasi' => 'required|string|max:255',
            'alamat' => 'required|string|max:255',
            'deskripsi' => 'required|string',
            'foto' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $path = $request->file('foto') ? $request->file('foto')->store('public/lokasi') : null;

        $username = session('username');

        Lokasi::create([
            'nama_lokasi' => $validatedData['nama_lokasi'],
            'alamat' => $validatedData['alamat'],
            'deskripsi' => $validatedData['deskripsi'],
            'foto' => $path,
            'update_at' => time(),
            'created_by' => $username,
            'updated_by' => $username,
        ]);

        return redirect()->route('lapangan_index')->with('success', 'Lokasi berhasil ditambahkan');
    }
    public function update_lokasi(Request $request, string $id_lokasi)
    {
        $Lokasi = Lokasi::findOrFail($id_lokasi);

        $validatedData = $request->validate([
            'nama_lokasi' => 'required|string|max:255',
            'alamat' => 'required|string|max:255',
            'deskripsi' => 'required|string',
        ], [
            'nama_lokasi.required' => 'Nama lokasi wajib diisi.',
            'alamat.required' => 'Alamat lapangan wajib diisi.',
            'deskripsi.required' => 'Deskripsi alamat wajib diisi.',
        ]);        

        $Lokasi->update($validatedData);

        return redirect()->route('lapangan_index')->with('success', 'Lokasi '.$Lokasi->nama_lokasi.' telah diperbaharui');
    }
    public function edit_lokasi($id_lokasi)
    {
        $lokasi = Lokasi::findOrFail($id_lokasi);
        return view('court.lokasi.lokasi_lapangan_edit', compact('lokasi'));
    }
    public function destroy_lokasi(string $id_lokasi)
    {

        $lokasi = Lokasi::findOrFail($id_lokasi);


        $lokasi->delete();


        return redirect()->route('lapangan_index')->with('success', 'Lokasi ' .$lokasi->nama_lokasi. ' telah dihapus');
    }
}
