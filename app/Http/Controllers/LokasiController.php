<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Lokasi;
use Illuminate\Support\Facades\Storage;

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

        Lokasi::create([
            'nama_lokasi' => $validatedData['nama_lokasi'],
            'alamat' => $validatedData['alamat'],
            'deskripsi' => $validatedData['deskripsi'],
            'foto' => $path,
            'updated_at' => now() // gunakan now() untuk timestamp yang sesuai
        ]);

        return redirect()->route('lapangan_index')->with('success', 'Lokasi berhasil ditambahkan');
    }

    public function update(Request $request, $id)
    {
        $lokasi = Lokasi::findOrFail($id);

        $validatedData = $request->validate([
            'nama_lokasi' => 'required|string|max:255',
            'alamat' => 'required|string|max:255',
            'deskripsi' => 'required|string',
            'foto' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        if ($request->hasFile('foto')) {
            // Hapus foto lama jika ada
            if ($lokasi->foto) {
                Storage::delete($lokasi->foto);
            }
            $path = $request->file('foto')->store('public/lokasi');
            $lokasi->foto = $path;
        }

        $lokasi->nama_lokasi = $validatedData['nama_lokasi'];
        $lokasi->alamat = $validatedData['alamat'];
        $lokasi->deskripsi = $validatedData['deskripsi'];
        $lokasi->updated_at = now();

        $lokasi->save();

        return redirect()->route('lapangan_index')->with('success', 'Lokasi berhasil diperbarui');
    }

    public function destroy($id)
    {
        $lokasi = Lokasi::findOrFail($id);

        // Hapus foto jika ada
        if ($lokasi->foto) {
            Storage::delete($lokasi->foto);
        }

        $lokasi->delete();

        return redirect()->route('lapangan_index')->with('success', 'Lokasi berhasil dihapus');
    }
}
