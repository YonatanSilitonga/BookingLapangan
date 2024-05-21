@extends('layout.admin')

@section('title', 'Home Lapangan List')

@section('contents')
    <div class="container">
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
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="card">
                    <div class="card-header">Lapangan</div>
                    <div class="card-body">
                        <!-- Tabel Lapangan -->
                        <table class="table table-stripped">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Lokasi</th>
                                    <th>Alamat</th>
                                    <th>Deskripsi</th>
                                    <th>Foto</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data as $item)
                                    <tr>
                                        <td>{{ $item->nama_lokasi }}</td>
                                        <td>{{ $item->alamat }}</td>
                                        <td>{{ $item->deskripsi }}</td>
                                        
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
