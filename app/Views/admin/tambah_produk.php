<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>

<div class="container">
    <div class="row">
        <div class="col-10 mx-auto">
          
            <div class="card card-poduct">
                <div class="card-body">
                <h4 class="mb-3"><?= $title; ?></h4>
                    <hr>

                    <form action="/Produk/save" method="post" enctype="multipart/form-data" class="needs-validation px-3" novalidate>
                        <?= csrf_field(); ?>
                        <div class="form-row">
                            <div class="col-md-6 form-group has-validation">
                                <label for="nama_produk" class="bold">Nama barang</label>

                                <input type="text" required class="form-control <?= ($validation->hasError('nama_barang')) ? 'is-invalid' : ''; ?>" id="nama_produk" name="nama_produk" autofocus value="<?= old('nama_produk'); ?>">

                                <div class="valid-feedback">
                                    <?= $validation->getError('nama_produk'); ?>
                                </div>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="harga" class="bold">Harga</label>
                                <input type="text" class="form-control" id="harga" name="harga">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="deskripsi" class="bold">Deskripsi</label>
                                <input type="text" class="form-control" id="deskripsi" name="deskripsi">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="stok" class="bold">Stok</label>
                                <input type="text" class="form-control" id="stok" name="stok">
                            </div>
                            <div class="col-md-6 form-group ">
                                <label for="img_produk" class="bold">Images Produk</label>
                                <img src="/img/default.jpeg" class="img-thumbnail img-preview d-block mb-2" style="max-width:200px;">
                                
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input <?= ($validation->hasError('img_produk')) ? 'is-invalid' : ''; ?>" id="img_produk" name="img_produk" multiple onchange="previewImg()">
                                        <div class="invalid-feedback">
                                            <?= $validation->getError('img_produk'); ?>
                                        </div>
                                        <label class="custom-file-label " for="img_produk" >Pilih gambar</label>
                                    </div>
                                
                            </div>
                            <div class="col-md-12 form-group">
                                <div class="col-sm-12">
                                    <button type="submit" class="btn btn-success mx-auto d-block">Tambah Produk</button>
                                </div>
                            </div>
                        </div>
                    </form>



                </div>
            </div>


        </div>
    </div>
</div>







<!-- /.container-fluid -->
<?= $this->endSection(); ?>