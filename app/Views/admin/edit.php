<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h2><?= $title; ?></h2>
            <form action="/Produk/update/<?= $produk['id'] ?>" method="post" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <input type="hidden" name="image_lama" value="<?= $produk['img_produk']; ?>">
                <div class="form-group row">
                    <label for="nama_produk" class="col-sm-2 col-form-label">Nama barang</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nama_produk" name="nama_produk" autofocus value="<?= $produk['nama_produk'] ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="harga" class="col-sm-2 col-form-label">harga</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="harga" name="harga" autofocus value="<?= $produk['harga'] ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="stok" class="col-sm-2 col-form-label">stok</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="stok" name="stok" autofocus value="<?= $produk['stok'] ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="deskripsi" class="col-sm-2 col-form-label">deskripsi</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="deskripsi" name="deskripsi" autofocus value="<?= $produk['deskripsi'] ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="img_produk" class="col-sm-2 col-form-label">img_produk</label>
                    <div class="col-sm-2">
                        <img src="/assets/image/<?= $produk['img_produk']; ?>" class="img-thumbnail img-preview">
                    </div>
                    <div class="col-sm-8">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input <?= ($validation->hasError('img_produk')) ? 'is-invalid' : ''; ?>" id="img_produk" name="img_produk" onchange="previewImg()">
                            <div class="invalid-feedback">
                                <?= $validation->getError('img_produk'); ?>
                            </div>
                            <label class="custom-file-label" for="img_produk"><?= $produk['img_produk']; ?></label>
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-10">
                        <button type="submit" class="btn btn-primary">Ubah</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- /.container-fluid -->
<?= $this->endSection(); ?>