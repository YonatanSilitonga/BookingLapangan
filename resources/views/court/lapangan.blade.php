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
                <!-- Tabel Lokasi -->
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
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data as $item)
                                    <tr>
                                        <td>{{ $item->nama_lokasi }}</td>
                                        <td>{{ $item->alamat }}</td>
                                        <td>{{ $item->deskripsi }}</td>
                                        <td>
                                            <img src="{{ asset('storage/' . $item->foto) }}" alt="Foto Lokasi" width="100">
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <!-- Tombol Add -->
                        <button type="button" class="btn btn-primary m-2" data-toggle="modal" data-target="#addLocationModal">ADD</button>
                        <!-- Modal -->
                        <div class="modal fade" id="addLocationModal" tabindex="-1" role="dialog" aria-labelledby="addLocationModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="addLocationModalLabel">Tambah Lokasi</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <!-- Isi Formulir Tambah Lokasi -->
                                        <form id="addLocationForm">
                                            @csrf
                                            <div class="form-group">
                                                <label for="nama_lokasi">Nama Lokasi</label>
                                                <input type="text" class="form-control" id="nama_lokasi" name="nama_lokasi" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="alamat">Alamat</label>
                                                <input type="text" class="form-control" id="alamat" name="alamat" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="deskripsi">Deskripsi</label>
                                                <textarea class="form-control" id="deskripsi" name="deskripsi" required></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="foto">Foto</label>
                                                <input type="file" class="form-control" id="foto" name="foto">
                                            </div>
                                            <button type="submit" class="btn btn-primary">Save changes</button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                                            <img src="{{ asset('storage/' . $item->img_lapangan) }}" alt="Gambar Lapangan" width="100">
                                        </td>
                                        <td>
                                            <div class="btn-group" role="group">
                                                <a href="{{ route('update_lapangan', $item->id_lapangan) }}" class="btn btn-success m-2">EDIT</a>
                                                <a href="{{ route('detail_lapangan', $item->id_lapangan) }}" class="btn btn-success m-2">DETAIL</a>
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
    </div>
@endsection

@section('scripts')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        $('#addLocationForm').on('submit', function(event) {
            event.preventDefault();

            var formData = new FormData(this);

            $.ajax({
                url: "{{ route('create_lokasi') }}",
                method: "POST",
                data: formData,
                contentType: false,
                processData: false,
                success: function(data) {
                    $('#addLocationModal').modal('hide');
                    alert('Lokasi berhasil ditambahkan');
                    location.reload(); // Reload halaman untuk memperbarui data dalam tabel
                },
                error: function(response) {
                    alert('Terjadi kesalahan, silakan coba lagi');
                    console.log(response);
                }
            });
        });
    });
</script>
@endsection
