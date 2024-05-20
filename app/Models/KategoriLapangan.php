<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KategoriLapangan extends Model
{
    protected $table = 'kategori_lapangan'; 

    protected $primaryKey = 'id_katlapangan'; 

    protected $fillable = [
        'nama_katlapangan',
        'jenis_lapangan', // Tambahkan kolom ini
        'file_katlapangan',
        'jumlah_lapangan',
        'updated_by',
        'created_by', // Pastikan kolom ini ada di tabel atau tambahkan jika belum ada
        'created_at',
        'updated_at'
    ];
 
    public function lapangan()
    {
        return $this->hasMany(Lapangan::class, 'id_katlapangan');
    }
}
