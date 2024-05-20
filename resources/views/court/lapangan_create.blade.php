@extends('layout.admin')

@section('contents')
    <div class="container">

        <div class="row justify-content-center">
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
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Tambah Lapangan</div>
                    <div class="card-body">
                        <form action="{{ route('lapangan.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="mb-3">
                                <label for="nama" class="form-label">Nama Lapangan <span
                                        class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="nama" name="nama_lapangan"
                                    placeholder="Nama Lapangan">
                            </div>
                            <div class="mb-3">
                                <label for="kategori" class="form-label">Kategori Lapangan <span
                                        class="text-danger">*</span></label>
                                <select class="form-select" id="kategori" name="id_katlapangan">
                                    <option selected disabled>Pilih Kategori Lapangan</option>
                                    @foreach ($kategori_lapangan as $kategori)
                                        <option value="{{ $kategori->id_katlapangan }}">{{ $kategori->nama_katlapangan }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="harga" class="form-label">Harga Sewa <span
                                        class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="harga" name="harga_lapangan"
                                    placeholder="Harga Sewa">
                            </div>
                            <div class="mb-3">
                                <label for="gambar" class="form-label">Gambar Lapangan <span
                                        class="text-danger">*</span></label>
                                <input type="file" class="form-control" id="gambar" name="img_lapangan">
                            </div>
                            <div class="mb-3">
                                <label for="deskripsi" class="form-label">Deskripsi <span
                                        class="text-danger">*</span></label>
                                <textarea type="textarea" class="form-control" id="deskripsi" name="deskripsi_lapangan"
                                    placeholder="Deskripsi Lapangan"></textarea>
                            </div>

                            <button type="submit" class="btn btn-primary">Tambah</button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
