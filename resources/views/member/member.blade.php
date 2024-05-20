@extends('layout.admin')

@section('title', 'Home Member List')

@section('contents')
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    @if (session('success'))
        <div class="alert alert-success" role="alert">
            {{ session('success') }}
        </div>
    @endif
    <div class="container">
        <h1>Member List</h1>
        
        <!-- Add Member Button -->
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addMemberModal">
            Add Member
        </button>
        
        <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Jenis Pengguna</th>
                    <th>Last Login</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($members as $member)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $member->id_pengguna }}</td>
                        <td>{{ $member->username_pengguna }}</td>
                        <td>{{ $member->jenis_pengguna }}</td>
                        <td>{{ $member->last_login }}</td>
                        <td>
                            {{-- View Button --}}
                            <a href="{{ route('members.show', $member->id_pengguna) }}" class="btn btn-primary">View</a>

                            {{-- Delete Form --}}
                            <form action="{{ route('members.destroy', $member->id_pengguna) }}" method="POST" class="d-inline"
                                onsubmit="return confirm('Are you sure you want to delete this member?')">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <!-- Add Member Modal -->
    <div class="modal fade" id="addMemberModal" tabindex="-1" role="dialog" aria-labelledby="addMemberModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addMemberModalLabel">Add Member</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="{{ route('members.store') }}" method="POST">
                    @csrf
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" id="username" name="username" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
