<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lokasi extends Model
{
    protected $table = 'lokasi'; 

    protected $primaryKey = 'id_lokasi'; 

    protected $fillable = [
        'id_lokasi',
        'nama_lokasi', 
        'alamat',
        'foto',
        'deskripsi',
        'created_at',
        'updated_at'
    ];
 
    public function lapangan()
    {
        return $this->hasMany(Lokasi::class, 'id_lokasi');
    }
    use HasFactory;
}
