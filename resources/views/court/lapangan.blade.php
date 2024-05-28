@extends('layout.admin')

@section('title', 'Lokasi & Lapangan - Admin Badminton Jagoku')

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
                @if (session('jenis_pengguna') === 'pemilik')
                    <div class="card mb-4">
                        <div class="card-header">Lokasi</div>
                        <div class="card-body">
                            <table class="table table-striped">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>Lokasi</th>
                                        <th>Alamat</th>
                                        <th>Deskripsi</th>
                                        <th>Foto</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($data as $item)
                                        <tr>
                                            <td>{{ $item->nama_lokasi }}</td>
                                            <td>{{ $item->alamat }}</td>
                                            <td>{{ $item->deskripsi }}</td>
                                            <td>
                                                <img src="{{ asset('storage/' . $item->foto) }}"
                                                    alt="{{ $item->nama_lokasi }}" width="100">
                                            </td>
                                            <td>
                                            <div class="btn-group" role="group">
                                                <a href="{{ route('update.lokasi', $item->id_lokasi) }}"
                                                    class="btn btn-success m-2">Edit</a>
                                                <form action="{{ route('lokasi.destroy', $item->id_lokasi) }}"
                                                    method="POST"
                                                    onsubmit="return confirm('Apakah anda yakin ingin menghapus?')"
                                                    class="float-right text-red-800">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button class="btn btn-danger m-2">Delete</button>
                                                </form>
                                            </div>
                                    @endforeach
                                    </td>
                                    </tr>
                                </tbody>
                            </table>
                            <a href="/lapangan/lokasi/tambah">
                                <button type="button" class="btn btn-primary m-2">ADD</button>
                            </a>
                        </div>
                    </div>
                @endif
                <br><br>
                <div class="card">
                    <div class="card-header">Data Lapangan
                    @if(session('jenis_pengguna') === 'pengelola')
                    <br>
                    Lokasi Cabang : <b>{{ session('nama_lokasi') }}</b>
                    @endif
                    </div>
                    <div class="card-body">
                        <table class="table table-striped">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Nama Lapangan</th>
                                    <th>Harga Sewa</th>
                                    <th>Lokasi</th>
                                    <th>Gambar</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>

                            <tbody>
                                @if(session('jenis_pengguna') === 'pemilik')
                                    
                                @foreach ($data_lapangan as $item)
                                    <tr>
                                        <td>{{ $item->nama_lapangan }}</td>
                                        <td>{{ $item->harga_lapangan }}</td>
                                        @foreach ($data->where('id_lokasi', $item->id_lokasi) as $lokasi)
                                            <td>{{ $lokasi->nama_lokasi }}</td>
                                        @endforeach
                                        <td>
                                            <img src="{{ asset('storage/' . $item->img_lapangan) }}"
                                                alt="Lapangan {{ $item->nama_lapangan }}" width="100">
                                        </td>
                                        <td>
                                            <div class="btn-group" role="group">
                                                <a href="{{ route('update.lapangan', $item->id_lapangan) }}"
                                                    class="btn btn-success m-2">Edit</a>
                                                <form action="{{ route('lapangan.destroy', $item->id_lapangan) }}"
                                                    method="POST"
                                                    onsubmit="return confirm('Apakah anda yakin ingin menghapus?')"
                                                    class="float-right text-red-800">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button class="btn btn-danger m-2">Delete</button>
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                                @else
                                @foreach ($data_lapangan->where('id_lokasi', session('id_lokasi')) as $item)
                                    <tr>
                                        <td>{{ $item->nama_lapangan }}</td>
                                        <td>{{ $item->harga_lapangan }}</td>
                                        @foreach ($data->where('id_lokasi', session('id_lokasi')) as $lokasi)
                                            <td>{{ $lokasi->nama_lokasi }}</td>
                                        @endforeach
                                        <td>
                                            <img src="{{ asset('storage/' . $item->img_lapangan) }}"
                                                alt="Lapangan {{ $item->nama_lapangan }}" width="100">
                                        </td>
                                        <td>
                                            <div class="btn-group" role="group">
                                                <a href="{{ route('update.lapangan', $item->id_lapangan) }}"
                                                    class="btn btn-success m-2">Edit</a>
                                                <form action="{{ route('lapangan.destroy', $item->id_lapangan) }}"
                                                    method="POST"
                                                    onsubmit="return confirm('Apakah anda yakin ingin menghapus?')"
                                                    class="float-right text-red-800">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button class="btn btn-danger m-2">Delete</button>
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                                @endif
                            </tbody>
                        </table>
                        <button type="button" class="btn btn-primary m-2"
                            onclick="window.location='{{ route('create_lapangan') }}'">ADD</button>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
@endsection
