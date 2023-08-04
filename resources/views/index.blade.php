<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{csrf_token()}}">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Select Option By DB and Ajax</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="d-flex flex-column align-items-center justify-content-center">
                <div class="col-6 mt-5">
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label fw-bold">Division</label>
                        <div class="col-sm-10">
                            <select name="division" id="division" class="form-select" aria-label="Default select example">
                                <option value="0" selected>Select Division</option>
                                @foreach ($divisions as $division)
                                    <option value="{{$division->id}}">{{$division->name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-6 mt-3" id="districtData"></div>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

    <script>
        $(function(){
            $('#division').change(function(e){
                e.preventDefault();
                let id = this.value;
                if(id > 0){
                    $.ajax({
                        url: '{{route('districts')}}',
                        method: 'get',
                        data: {
                            div_id: id,
                            _token: '{{csrf_token()}}'
                        },
                        success: function(response){
                            $('#districtData').html(response);
                        }
                    });
                }else{
                    $('#districtData').html('');
                }
            });
        });
    </script>

</body>
</html>