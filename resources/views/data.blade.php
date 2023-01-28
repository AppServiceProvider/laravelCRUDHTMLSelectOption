{{-- {{print_r($data)}} --}}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    @foreach ($data as $item)
        <p>{{$item->name}}</p>
        <p>{{$item->email}}</p>
    @endforeach
</body>
</html>