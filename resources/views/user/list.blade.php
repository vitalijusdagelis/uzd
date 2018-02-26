@extends('base')

@section('content')

<table class="table table-striped">
    <thead>
    <tr>
        <th>Priskirtos užduotis</th>
        <th>Statusas</th>
        <th>Peržiūrėti</th>
    </tr>
    </thead>
    <tbody>
    @foreach ($tasks as $task)
    <tr>
        <td>{{ $task->title }}</td>
        <td>
            @if( $task->done )
                Įvykdyta
            @else
                Neįvykdyta
            @endif
        </td>
        <td><a href="{{ url('user/'.$task->id.'/edit') }}">Peržiūrėti</a></td>
    </tr>
    @endforeach
    </tbody>
</table>

@stop