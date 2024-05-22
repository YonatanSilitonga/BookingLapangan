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
<<<<<<< Updated upstream
                                    <th>Nama Lapangan</th>
                                    <th>Harga Sewa</th>
                                    <th>Jumlah Stok</th>
                                    <th>Gambar</th>
=======
                                    <th>Lokasi</th>
                                    <th>Alamat</th>
                                    <th>Deskripsi</th>
>>>>>>> Stashed changes
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data_lapangan as $item)
                                    <tr>
<<<<<<< Updated upstream
                                        <td>{{ $item->nama_lapangan }}</td>
                                        <td>{{ $item->harga_lapangan }}</td>
                                        <td>{{ $item->jumlahLapangan }}</td>
                                        <td>
                                            <img src="{{ asset('storage/' . $item->img_lapangan) }}" alt="Gambar Lapangan"
                                                width="100">
=======
                                        <td>{{ $item->nama_lokasi }}</td>
                                        <td>{{ $item->alamat }}</td>
                                        <td>{{ $item->deskripsi }}</td>
                                        
                                        <td>
                                            <div class="btn-group" role="group">
                                                <button type="button" class="btn btn-success m-2" data-toggle="modal" data-target="#editLokasiModal{{ $item->id_lokasi }}">
                                                    EDIT
                                                </button>
                                                <button type="button" class="btn btn-success m-2" data-toggle="modal" data-target="#detailLokasiModal{{ $item->id_lokasi }}">
                                                    DETAIL
                                                </button>
                                                <form action="{{ route('lokasi.destroy', $item->id_lokasi) }}" method="POST" onsubmit="return confirm('Apakah anda yakin ingin menghapus?')" class="float-right text-red-800">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button class="btn btn-danger m-2">Delete</button>
                                                </form>
                                            </div>
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
                        <!-- Button Add Lapangan -->
                        <button type="button" class="btn btn-primary m-2"
                            onclick="window.location='{{ route('create_lapangan') }}'">ADD</button>
                    </div>
                </div>            
            </div>
        </div>
=======
                        <!-- Tombol Add -->
                        <a href="/lapangan/lokasi/tambah">
                            <button type="button" class="btn btn-primary m-2">ADD</button>
                        </a>
                    </div>
                </div>

                <!-- Tabel Lapangan -->
                <div class="card">
                    <div class="card-header">Lapangan</div>
                    <div class="card-body">
                        <table class="table table-striped">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Nama Lapangan</th>
                                    <th>Harga Sewa</th>
                                    <th>Gambar</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data_lapangan as $item)
                                    <tr>
                                        <td>{{ $item->nama_lapangan }}</td>
                                        <td>{{ $item->harga_lapangan }}</td>
                                        <td>
                                            @if ($item->img_lapangan)
                                                <img src="{{ asset('storage/' . $item->img_lapangan) }}" alt="Gambar Lapangan" width="100">
                                            @else
                                                <img src="{{ asset('images/no-image.png') }}" alt="No Image" width="100">
                                            @endif
                                        </td>
                                        <td>
                                            <div class="btn-group" role="group">
                                                <button type="button" class="btn btn-success m-2" data-toggle="modal" data-target="#editModal{{ $item->id_lapangan }}">
                                                    EDIT
                                                </button>
                                                <button type="button" class="btn btn-success m-2" data-toggle="modal" data-target="#detailModal{{ $item->id_lapangan }}">
                                                    DETAIL
                                                </button>
                                                <form action="{{ route('lapangan.destroy', $item->id_lapangan) }}" method="POST" onsubmit="return confirm('Apakah anda yakin ingin menghapus?')" class="float-right text-red-800">
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
                        <button type="button" class="btn btn-primary m-2" onclick="window.location='{{ route('create_lapangan') }}'">ADD</button>
                    </div>
                </div>
            </div>
        </div>

        @foreach ($data as $item)
            <!-- Modal Edit Lokasi -->
            <div class="modal fade" id="editLokasiModal{{ $item->id_lokasi }}" tabindex="-1" aria-labelledby="editLokasiModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="editLokasiModalLabel">Edit Lokasi</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="{{ route('lokasi.update', $item->id_lokasi) }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')

                                <div class="mb-3">
                                    <label for="namaLokasi" class="form-label">Nama Lokasi</label>
                                    <input type="text" class="form-control" id="namaLokasi" name="nama_lokasi" value="{{ $item->nama_lokasi }}">
                                </div>

                                <div class="mb-3">
                                    <label for="alamatLokasi" class="form-label">Alamat Lokasi</label>
                                    <input type="text" class="form-control" id="alamatLokasi" name="alamat" value="{{ $item->alamat }}">
                                </div>

                                <div class="mb-3">
                                    <label for="deskripsiLokasi" class="form-label">Deskripsi Lokasi</label>
                                    <textarea class="form-control" id="deskripsiLokasi" name="deskripsi">{{ $item->deskripsi }}</textarea>
                                </div>

                                <div class="mb-3">
                                    <label for="fotoLokasi" class="form-label">Foto Lokasi</label>
                                    @if ($item->foto)
                                        <img src="{{ asset('storage/' . $item->foto) }}" class="img-fluid" width="100" alt="Foto Lokasi">
                                    @else
                                        <img src="{{ asset('images/no-image.png') }}" class="img-fluid" width="100" alt="No Image">
                                    @endif
                                    <input type="file" class="form-control" id="fotoLokasi" name="foto">
                                </div>

                                <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal Detail Lokasi -->
            <div class="modal fade" id="detailLokasiModal{{ $item->id_lokasi }}" tabindex="-1" role="dialog" aria-labelledby="detailLokasiModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="detailLokasiModalLabel">Detail Lokasi</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-6">
                                    @if ($item->foto)
                                        <img src="{{ asset('storage/' . $item->foto) }}" class="img-fluid" alt="Foto Lokasi">
                                    @else
                                        <img src="{{ asset('images/no-image.png') }}" class="img-fluid" alt="No Image">
                                    @endif
                                </div>
                                <div class="col-md-6">
                                    <ul class="list-group">
                                        <li class="list-group-item">Nama Lokasi: {{ $item->nama_lokasi }}</li>
                                        <li class="list-group-item">Alamat: {{ $item->alamat }}</li>
                                        <li class="list-group-item">Deskripsi: {{ $item->deskripsi }}</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach

        @foreach ($data_lapangan as $item)
            <!-- Modal Edit Lapangan -->
            <div class="modal fade" id="editModal{{ $item->id_lapangan }}" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="editModalLabel">Edit Lapangan</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="{{ route('lapangan.update', $item->id_lapangan) }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')

                                <div class="mb-3">
                                    <label for="namaLapangan" class="form-label">Nama Lapangan</label>
                                    <input type="text" class="form-control" id="namaLapangan" name="nama_lapangan" value="{{ $item->nama_lapangan }}">
                                </div>

                                <div class="mb-3">
                                    <label for="hargaLapangan" class="form-label">Harga Sewa</label>
                                    <input type="number" class="form-control" id="hargaLapangan" name="harga_lapangan" value="{{ $item->harga_lapangan }}">
                                </div>

                                <div class="mb-3">
                                    <label for="imgLapangan" class="form-label">Gambar Lapangan</label>
                                    @if ($item->img_lapangan)
                                        <img src="{{ asset('storage/' . $item->img_lapangan) }}" class="img-fluid" width="100" alt="Gambar Lapangan">
                                    @else
                                        <img src="{{ asset('images/no-image.png') }}" class="img-fluid" width="100" alt="No Image">
                                    @endif
                                    <input type="file" class="form-control" id="imgLapangan" name="img_lapangan">
                                </div>

                                <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal Detail Lapangan -->
            <div class="modal fade" id="detailModal{{ $item->id_lapangan }}" tabindex="-1" role="dialog" aria-labelledby="detailModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="detailModalLabel">Detail Lapangan</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-6">
                                    @if ($item->img_lapangan)
                                        <img src="{{ asset('storage/' . $item->img_lapangan) }}" class="img-fluid" alt="Gambar Lapangan">
                                    @else
                                        <img src="{{ asset('images/no-image.png') }}" class="img-fluid" alt="No Image">
                                    @endif
                                </div>
                                <div class="col-md-6">
                                    <ul class="list-group">
                                        <li class="list-group-item">Nama Lapangan: {{ $item->nama_lapangan }}</li>
                                        <li class="list-group-item">Harga Sewa: {{ $item->harga_lapangan }}</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
>>>>>>> Stashed changes
    </div>
@endsection
