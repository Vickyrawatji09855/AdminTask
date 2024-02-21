<?php

namespace App\Http\Controllers;

use Illuminate\Support\Carbon;
use Illuminate\Http\Request;
use App\Models\Task;

class FilterController extends Controller
{
    public function filter(Request $req){

        if($req->filter=='seven')
        {
            $currentDate = Carbon::now();

            $sevenDaysAgo = $currentDate->subDays(7);


            $task = Task::whereDate('created_at', '>=', $sevenDaysAgo)->paginate(3);

            return view('dashboard',compact('task'));

        }else{

            $currentDate = Carbon::now();

            $thirtyDaysAgo = $currentDate->subDays(30);


            $task = Task::whereDate('created_at', '>=', $thirtyDaysAgo)->paginate(3);

            return view('dashboard',compact('task'));

        }
    }
}
