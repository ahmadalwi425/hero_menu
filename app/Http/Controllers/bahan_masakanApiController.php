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
    public function bahanSearch($nama)
    {
        $data = bahan::where('nama_bahan',$nama)->get();
        return response()->json(['data'=>$data]);
    }
    public function masakanSearch($nama)
    {
        $data = masakan::where('nama_masakan', $nama)->get();
        return response()->json(['data'=>$data]);
    }
    public function byBahan($id)
    {
        $data = bahan_masakan::with('masakan')->where('id_bahan',$id)->get();
        return response()->json(['data'=>$data]);
    }
    public function show($id)
    {
        $data = masakan::where('id_bahan',$id)->get();
        return response()->json(['data'=>$data]);
    }
    public function bljr()
    {
        $data = array(
          array("title" => "hello",
          "description" => "test test test"),
          array("title" => "hello2",
          "description" => "test test test2")
        );
        return response()->json(['data'=>$data]);
    }
}
