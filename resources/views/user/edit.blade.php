@extends('base')

@section('content')

<table class="table table-striped">
    <tr>
        <th>Pavadinimas</th>
        <th>Aprašymas</th>
        <th>Statusas</th>
        <th>Saugoti</th>
    </tr>
    <tr>
        <form method="post" action="{{ url('user/'.$task->id) }}">
            <input name="_method" type="hidden" value="PUT">
            {{ csrf_field() }}
            <td>{{ $task->title }}</td>
            <td>{{ $task->description }}</td>
            <td>
                <select name="done">
                    <option value="1">Įvykdyta</option>
                    <option value="0">Neįvykdyta</option>
                </select>
            </td>
            <td><input type="submit" value="Saugoti" name="save"></td>
        </form>
    </tr>
</table>

@stop