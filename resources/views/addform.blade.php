@extends('auth.layouts')

@section('content')

<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Laravel 8 Add/Remove Multiple Input Fields Example</title>
    <!-- CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
      .container {
            max-width: 600px;
        }
    </style>
</head>
<body>
    <div class="container">
        <form action="{{ url('addforms') }}" method="POST" enctype="multipart/form-data">
            @csrf

                @if ($errors->any())
            <div class="alert alert-danger" role="alert">
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif
            @if (Session::has('success'))
            <div class="alert alert-success text-center">
                <p>{{ Session::get('success') }}</p>
            </div>
            @endif
                
           
           
            <table style="margin-top:30px" class="table table-bordered" id="dynamicAddRemove">
                <tr>
                    <th>Subject</th>
                    <th>Action</th>
                </tr>
                <tr>
                    <td><input type="file" name="addMoreInputFields[0][subject]" class="myfrm form-control">
                    </td>
                    <td><button type="button" name="add" id="dynamic-ar" class="btn btn-outline-primary">Add Image</button></td>
                </tr>
            </table>

         
            <button   id="cf-form" class="btn btn-outline-success btn-block">Save</button>
        </form>
    </div>
</body>
<!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
    var i = 0;
    $("#dynamic-ar").click(function () {
        console.log('some')
        ++i;
        $("#dynamicAddRemove").append('<tr><td><input type="file" name="addMoreInputFields[' + i +
            '][subject]"  class="myfrm form-control"></td><td><button type="button" class="btn btn-outline-danger remove-input-field">Delete</button></td></tr>'
            );
    });
    $(document).on('click', '.remove-input-field', function () {
        $(this).parents('tr').remove();
    });
</script>


    <script>
    $(document).ready(function() {
        $('#cf-form').submit(function(e) {
            e.preventDefault();
            console.log('inside ajax');


            // Serialize the form data
           const formData = new FormData(form);
            // Send an AJAX request
            $.ajax({
                type: 'POST',
                url: '{!! route('addforms') !!}',
                data: formData,
                dataType: 'json',
                success: function(response) {
                    console.log(response)
                    $('#cf-response-message').text(response.message);
                },
                error: function(xhr, status, error) {
                    // Handle errors if needed
                    console.error(xhr.responseText);
                }
            });
        });
    });
</script>
    
    


    


</html>
    
@endsection