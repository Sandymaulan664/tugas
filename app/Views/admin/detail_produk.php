<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>

<div class="container">
    <div class="row">
        <div class="col">
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                    <div class="col-md-4">
                        <img src="/img/<?= $produk['img_produk'] ?>" class="img-fluid" alt="">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"><?= $produk['nama_produk'] ?></h5>
                            <p class="card-text"><small class="text-muted"><b>Rp </b><?= number_format($produk['harga'], 0, ',', '.'); ?></small></p>
                            <p class="card-text"><b>detail : </b><?= $produk['deskripsi'] ?></p>
                            
                            <p class="card-text"><small class="text-muted"><b>stok barang : </b> <?= $produk['stok'] ?></small></p>

                            <!-- edit -->
                            <a href="/Produk/edit/<?= $produk['id']; ?>" class="btn btn-warning">Edit</a>

                            <!-- //delete -->
                            <a href="/Produk/delete/<?= $produk['id']; ?>" class="btn btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus produk ini?')">Delete</a>



                            <div></div>
                            <a href="/produk">kembali ke daftar produk</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->
<?= $this->endSection(); ?>