@extends('base')

@section('content')
<table class="table table-striped">
    <form action="{{ url('admin') }}" method="post">
        {{ csrf_field() }}
        <tr>
            <th>Pavadinimas:</th>
            <th>Aprašymas</th>
            <th>Saugoti</th>
        </tr>
        <tr>
            <td><input type="text" name="title"></td>
            <td><textarea name="description"></textarea></td>
            <td><input type="submit" value="Saugoti"></td>
        </tr>
    </form>
</table>
@stop