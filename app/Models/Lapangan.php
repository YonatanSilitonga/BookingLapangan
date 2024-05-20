<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lapangan extends Model
{
    protected $primaryKey = 'id_lapangan';
    
    use HasFactory;
    protected $table = 'lapangan_olahraga';

    protected $fillable = [
        'id_katlapangan',
        'nama_lapangan',
        'harga_lapangan',
        'deskripsi_lapangan', 
        'img_lapangan',
    ];
    public function kategori()
    {
        return $this->belongsTo(KategoriLapangan::class,'id_katlapangan');
    }
    
    public function pengguna()
    {
        return $this->belongsToMany(PenggunaOlahraga::class, 'booking_olahraga', 'id_lapangan', 'id_pengguna');
    }
    
}


