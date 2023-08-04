<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SelectOptionController extends Controller
{
    public function index(){
        $divisions = DB::table('divisions')->get();

        return view('index', ['divisions' => $divisions]);
    }

    public function districts(Request $request){
        $districts = DB::table('districts')
                    ->where('div_id', '=', $request->div_id)
                    ->get();

        $selectOpt = '';
        if($districts->count() > 0){
            $selectOpt .='
            <div class="row mb-3">
                <label class="col-sm-2 col-form-label fw-bold">District</label>
                    <div class="col-sm-10">

            <select name="district" id="district" class="form-select" aria-label="Default select example">
            <option value="0" selected>Select District</option>';

            foreach($districts as $district){
                $selectOpt .='<option value="'.$district->id.'">'.$district->name.'</option>';
            }

            $selectOpt .='</div></div></select>';
        }

        echo $selectOpt;
    }
}
