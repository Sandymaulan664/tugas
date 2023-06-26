<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="<?= base_url('img/banner/eee.gif') ?>" class="d-block w-100" alt="Slide 1">
            </div>
            <div class="carousel-item">
                <img src="<?= base_url('img/banner/ee.jpg') ?>" class="d-block w-100" alt="Slide 2">
            </div>
            <div class="carousel-item">
                <img src="<?= base_url('img/banner/') ?>" class="d-block w-100" alt="Slide 3">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <br>

    <div class="container">

        <div class="row">
            <?php foreach ($produk as $p) : ?>
                <!-- Card 1 -->
                <div class="col-12 col-sm-6 col-md-4 col-lg-3 mb-4">
                    <div class="card h-100 rounded-2 display-flex ">
                        <div class="card-img-wrapper">
                            <img src="img/<?= $p['img_produk']; ?>" class="card-img-top" alt="">
                        </div>
                        <div class="card-body">
                            <h4 class="card-title text-muted mt-2 d-flex "><?= $p['nama_produk']; ?></h4>
                            <div class="card-text mb-2  ">
                                <small class="text-muted"><b>Rp </b><?= number_format($p['harga'], 0, ',', '.'); ?></small>
                            </div>
                            <div class="text-center">
                                <!-- Tambahkan ikon bintang berdasarkan kondisi harga -->
                                <?php if ($p['harga'] < 100000) : ?>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star-half-alt text-warning"></i>
                                    <i class="far fa-star text-grey text-warning"></i>
                                    <i class="far fa-star text-grey text-warning"></i>
                                <?php elseif ($p['harga'] >= 100000 && $p['harga'] <= 200000) : ?>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star-half-alt text-warning"></i>
                                    <i class="far fa-star text-grey text-warning"></i>
                                <?php else : ?>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star-half-alt text-warning"></i>
                                <?php endif; ?>
                            </div>
                            <br>
                            <div class="text-center">
                                <a href="" class="btn btn-success btn-sm">Buy</a>
                                <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#detailModal<?= $p['id']; ?>">
                                    Detail
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="detailModal<?= $p['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="detailModalLabel<?= $p['id']; ?>" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content modal">
                            <div class="card-img-wrapper">
                                <img src="img/<?= $p['img_produk']; ?>" class="img_modal" alt="">
                            </div>
                            <div class="modal-body">
                                <h4><?= $p['nama_produk']; ?></h4>
                                <p>Deskripsi: <?= $p['deskripsi']; ?></p>
                                <p>Harga: Rp <?= number_format($p['harga'], 0, ',', '.'); ?></p>
                                <p>Stok barang: <?= $p['stok']; ?></p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal" style="background-color: #f8f9fa; color: #6c757d; border: none;">Tutup</button>
                            </div>
                        </div>
                    </div>
                </div>

            <?php endforeach; ?>
        </div>
    </div>






</div>

<!-- /.container-fluid -->
<?= $this->endSection(); ?>