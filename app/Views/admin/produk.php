<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">
    <div class="container">
        <div class="row">
            <div class="col">
                <a href="/Produk/create" class="btn btn-success  mb-3">Tambah produk</a>
                <?php if (session()->getFlashdata('pesan')) : ?>
                    <div class="alert alert-success" role="alert">
                        <?= session()->getFlashdata('pesan'); ?>
                    </div>
                <?php endif; ?>
                
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Nama produk</th>
                                <th scope="col">image</th>
                                <th scope="col">Harga</th>
                                <th scope="col">action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; ?>
                            <?php foreach ($produk as $p) : ?>
                                <tr>
                                    <th scope="row"><?= $i++; ?></th>
                                    <td><?= $p['nama_produk'] ?></td>
                                    <td><img src="img/<?= $p['img_produk'] ?>" alt="" class="img_produk"></td>
                                    <td><?= $p['harga'] ?></td>
                                    <td>
                                        <a href="/produk/<?= $p['id']; ?>" class="btn btn-success">detail</a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


</div>
<!-- /.container-fluid -->
<?= $this->endSection(); ?>