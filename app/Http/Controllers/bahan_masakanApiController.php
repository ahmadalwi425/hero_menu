<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\bahan_masakan;
use App\Models\masakan;
use App\Models\bahan;

class bahan_masakanApiController extends Controller
{
    public function index()
    {
        $data = masakan::get();
        return response()->json(['data'=>$data]);
    }
    public function bahan()
    {
        $data = bahan::get();
        return response()->json(['data'=>$data]);
    }
    public function byBahan($id)
    {
        $data = bahan_masakan::with('bahan','masakan')->where('id_bahan',$id)->get();
        return response()->json(['data'=>$data]);
    }
    public function show($id)
    {
        $data = masakan::where('id_bahan',$id)->get();
        return response()->json(['data'=>$data]);
    }
}
