@extends('layout.admin')

@section('title', 'Pengelola Details')

@section('contents')
    <div class="container">
        <h1>Player List</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Last Login</th>
                    <th>Jenis Pelanggan</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($players as $player)
                    <tr>
                        <td>{{ $player->id_pengguna }}</td>
                        <td>{{ $player->username_pengguna }}</td>
                        <td>{{ $player->last_login }}</td>
                        <td>{{ $player->pelanggan->jenis_pelanggan }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <a href="{{ route('home') }}" class="btn btn-primary">Back</a>
    </div>
@endsection
