<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\bahan_masakan;

class bahan extends Model
{
    use HasFactory;
    protected $table = 'bahan';
    protected $guarded = [];
    public $timestamps = false;
    public function bahan_masakan(){
        return $this->hasMany(bahan_masakan::class, 'id');
    }
}
