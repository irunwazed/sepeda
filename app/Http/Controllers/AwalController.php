<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;

class AwalController extends Controller
{
  public function awal(){
    return view('pages/awal');
  }

}
