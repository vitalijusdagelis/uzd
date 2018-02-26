@extends('base')

@section('content')

{!! Form::open(['url' => 'login']) !!}
<div class="col-md-2 col-md-offset-5">
    <div class="form-group">
        <label for="email">El.pašto adresas</label>
        {!! Form::email('email', old('email'), array('class'=>'form-control')) !!}
    </div>

    <div class="form-group">
        <label for="password">Slaptažodis</label>
        {!! Form::password('password', array('class'=>'form-control')) !!}
    </div>

    <button type="submit" class="btn btn-default">Prisijungti</button>
    {!! Form::close() !!}
</div>

@stop