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
                                    <th>Nama Lapangan</th>
                                    <th>Harga Sewa</th>
                                    <th>Jumlah Stok</th>
                                    <th>Gambar</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data_lapangan as $item)
                                    <tr>
                                        <td>{{ $item->nama_lapangan }}</td>
                                        <td>{{ $item->harga_lapangan }}</td>
                                        <td>{{ $item->jumlahLapangan }}</td>
                                        <td>
                                            <img src="{{ asset('storage/' . $item->img_lapangan) }}" alt="Gambar Lapangan"
                                                width="100">
                                        </td>
                                        <td>
                                            <div class="btn-group" role="group">
                                                <a href="{{ route('update_lapangan', $item->id_lapangan) }}"
                                                    class="btn btn-success m-2">EDIT</a>
                                                <a href="{{ route('detail_lapangan', $item->id_lapangan) }}"
                                                    class="btn btn-success m-2">DETAIL</a>
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
                            </tbody>
                        </table>
                        <!-- Button Add Lapangan -->
                        <button type="button" class="btn btn-primary m-2"
                            onclick="window.location='{{ route('create_lapangan') }}'">ADD</button>
                    </div>
                </div>
                <!-- Tabel Kategori Lapangan -->
                <div class="card mt-5">
                    <div class="card-header">Kategori Lapangan</div>
                    <div class="card-body">
                        <table class="table table-stripped">
                            <thead class="thead-dark">
                                <tr>
                                    <th>id Kategori</th>
                                    <th>Nama Kategori</th>
                                    <th>Deskripsi</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($kategori_lapangan as $kategori)
                                    <tr>
                                        <td>{{ $kategori->id_katlapangan }}</td>
                                        <td>{{ $kategori->nama_katlapangan }}</td>
                                        <td>{{ $kategori->file_katlapangan }}</td>
                                        <td>
                                            <div class="btn-group" role="group">
                                                <a href="{{ route('edit_katlapangan', $kategori->id_katlapangan) }}" class="btn btn-success m-2">EDIT</a>
                                                <a href="{{ route('detail_katlapangan', $kategori->id_katlapangan) }}" class="btn btn-success m-2">DETAIL</a>
                                                <form action="{{ route('kategori_lapangan.destroy', $kategori->id_katlapangan) }}" method="POST"
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
                            </tbody>
                        </table>
                        <button type="button" class="btn btn-primary m-2"onclick="window.location='{{ route('create_katlapangan') }}'">ADD</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
