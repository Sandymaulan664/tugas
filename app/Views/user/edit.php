<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">

<div class="container">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <div class="card mt-4">
                <div class="card-body">
                    <h4 class="card-title">Edit Profile</h4>
                    <hr>

                    <?php if (session()->getFlashdata('success')) : ?>
                        <div class="alert alert-success"><?= session()->getFlashdata('success') ?></div>
                    <?php endif; ?>

                    <?php if (session()->getFlashdata('errors')) : ?>
                        <div class="alert alert-danger">
                            <ul>
                                <?php foreach (session()->getFlashdata('errors') as $error) : ?>
                                    <li><?= $error ?></li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                    <?php endif; ?>

                    <form action="/user/update" method="post" enctype="multipart/form-data">
                        <?= csrf_field(); ?>

                        <div class="form-group">
                            <label for="fulname">Full Name</label>
                            <input type="text" name="fulname" id="fulname" class="form-control" value="<?= $user->fulname ?>">
                        </div>

                        <div class="form-group">
                            <label for="user_image">Profile Picture</label>
                            <input type="file" name="user_image" id="user_image" class="form-control-file">
                        </div>

                        <div class="form-group">
                            <label for="alamat">Address</label>
                            <textarea name="alamat" id="alamat" class="form-control"><?= $user->alamat ?></textarea>
                        </div>

                        <div class="form-group">
                            <label for="nohp">Phone Number</label>
                            <input type="text" name="nohp" id="nohp" class="form-control" value="<?= $user->nohp ?>">
                        </div>

                        <button type="submit" class="btn btn-primary">Update Profile</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>



</div>
<!-- /.container-fluid -->
<?= $this->endSection(); ?>