@extends('auth.layouts')

@section('content')




<a href="{{url('/addform')}}" class="btn btn-primary" style="margin-top: 30px; margin-left: 990px">Add Form</a>

<form action="/filter" method="get">
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <label for="filter">Filter by dates</label>
                <select name="filter" id="filter" class="form-control">
                    <option value="seven">Last 7 days</option>
                    <option value="thirty">Last 30 days</option>
                </select>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <label for="submitBtn">&nbsp;</label>
                <button type="submit" class=" col-md-4 btn btn-primary btn-block">Filter</button>
            </div>
        </div>
    </div>
</form>


<table style="margin-top:50px" class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Task</th>
      <th scope="col">Action</th>
    
    </tr>
  </thead>
  <tbody>
    <?php 
    $i=0;
    ?>
  @foreach($task as $t)
                                    <tr>
                                    <td>{{ $i }}</td>
                                        <td>{{ $t->task }}</td>
                                        <td>
                                            <a href="{{ url('/edit/'.$t->id  ) }}" title="View Student"><button class="btn btn-info btn-sm"><i class="fa fa-eye" aria-hidden="true"></i> edit</button></a>
                                            <a id="del" onclick="return confirm(&quot;Confirm delete?&quot;)"  href="{{ url('/delete/'.$t->id) }}" title="Edit Student"><button class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> delete</button></a>
                                        </td>
                                    </tr>
                                    <?php
                                        $i++;
                                        ?>

                                @endforeach
   

  </tbody>
 
</table>
<div class="row">
    {{ $task->links() }}
  </div>
    
@endsection