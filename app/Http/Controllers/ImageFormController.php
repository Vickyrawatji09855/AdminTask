<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Task;

class ImageFormController extends Controller
{
    public function  addform(Request $request){
        // dd($request->all());
       $images= $request->all();
       $arr=$images['addMoreInputFields'];
       $filenames=array();

      foreach($arr as $img){
        // dd($img);
        $file=$img['subject'];
        $filename = $file->getClientOriginalName();
        // dd($filename);
        array_push($filenames, $filename);
      
        $file->storeAs('public/images',$filename);
      }

    //  dd(print_r($filenames));
     $jsonFilenames = json_encode($filenames);


      $task_table=new Task;
      $task_table->task= 'some task';
      $task_table->images=    $jsonFilenames;
      $task_table->save();


      $task=Task::paginate(3);

        return view('dashboard',compact('task'));
       

    }

    public function delete($id){
       $task= Task::find($id);
       $task->delete();
       return redirect('/dashboard');
    }

    public function edit($id){

       $task= Task::find($id);
       
        return view('editform', compact('task'));
     }

     public function update(Request $request, $id ){
        $images= $request->all();
        if(empty($images['addMoreInputFields'])){
            $task=Task::paginate(3);

        return view('dashboard',compact('task'));
        }

        $arr=$images['addMoreInputFields'];
        $filenames=array();
 
       foreach($arr as $img){
         // dd($img);
       
         $file=$img['subject'];
         $filename = $file->getClientOriginalName();
         // dd($filename);
         array_push($filenames, $filename);
       
         $file->storeAs('public/images',$filename);
       }
 
     //  dd(print_r($filenames));
      $jsonFilenames = json_encode($filenames);
      $task= Task::find($id);
      $task->task='some updated';
      $task->images= $jsonFilenames;
      $task->save();

      $task=Task::paginate(3);

        return view('dashboard',compact('task'));

     }
}
