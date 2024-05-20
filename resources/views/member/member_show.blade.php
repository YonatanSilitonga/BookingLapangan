@extends('layout.admin')

@section('title', 'Member Details')

@section('contents')
    <div class="container">
        <h1>Member Details</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Last Login</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $member->id_pengguna }}</td>
                    <td>{{ $member->username_pengguna }}</td>
                    <td>{{ $member->email_pengguna }}</td>
                    <td>{{ $member->last_login }}</td>
                </tr>
            </tbody>
        </table>
        <a href="{{ route('member') }}" class="btn btn-primary">Back</a>
    </div>
@endsection
