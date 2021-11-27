<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\masakan;
use App\Models\bahan;

class bahan_masakan extends Model
{
    use HasFactory;
    protected $table = 'bahan_masakan';
    protected $guarded = [];
    public $timestamps = false;
    public function masakan(){
        return $this->belongsTo(masakan::class, 'id_masakan');
    }
    public function bahan(){
        return $this->belongsTo(bahan::class, 'id_bahan');
    }
}
