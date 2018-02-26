@extends('base')

@section('content')

<table class="table table-striped">
    <thead>
    <tr>
        <th>Pavadinimas</th>
        <th>Aprašymas</th>
        <th>Kam priskirta</th>
        <th>Statusas</th>
        <th>Redaguoti</th>
    </tr>
    </thead>
    <tbody>
    @foreach ($tasks as $task)
        <tr>
            <td>{{ $task->title }}</td>
            <td>{{ $task->description }}</td>
            <td>{{ $task->user }}</td>
            <td>
                @if( $task->done )
                    Įvykdyta
                @else
                    Neįvykdyta
                @endif
            </td>
            <td><a href="{{ url('admin/'.$task->id.'/edit') }}">Redaguoti</a></td>
        </tr>
    @endforeach
    </tbody>
</table>

@stop