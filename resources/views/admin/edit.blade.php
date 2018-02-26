@extends('base')

@section('content')

<table class="table table-striped">
    <thead>
    <tr>
        <th>Pavadinimas</th>
        <th>Aprašymas</th>
        <th>Priskirti užduotį</th>
        <th>Saugoti</th>
        <th>Ištrinti</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <form method="post" action="{{ url('admin/'.$task->id) }}">
            <input name="_method" type="hidden" value="PUT">
            {{ csrf_field() }}
            <td><input type="text" name="title" value="{{ $task->title }}"></td>
            <td><textarea name="description">{{ $task->description }}</textarea></td>
            <td>
                <select name="user">
                    @foreach ($users as $user)
                        <option value="{{ $user->name }}">{{ $user->name }}</option>
                    @endforeach
                </select>
            </td>
            <td><input type="submit" value="Saugoti" name="save"></td>
        </form>
        <td>
            <form style="display:inline" action="{{ url('admin/' . $task->id) }}"
                  method="post" onsubmit="return confirm('Ar tikrai?')">
                <input type="hidden" name="_method" value="DELETE" />
                {{ csrf_field() }}
                <input type="submit" value="Trinti" />
            </form>
        </td>
    </tr>
    </tbody>
</table>

@stop