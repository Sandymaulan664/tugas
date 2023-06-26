<ul class="navbar-nav aa sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?php base_url('admin') ?>">
        <!-- <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div> -->
        <!-- <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div> -->
        <img src="<?= base_url('img/logo2.png');?>" class="img-fluid"  alt="logo">
    </a>

    <?php if (in_groups('admin')) : ?>
        <!-- Divider -->
        <hr class="sidebar-divider ">

        <!-- Heading -->
        <div class="sidebar-heading">
            admin
        </div>

        <!-- Nav Item - Charts -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('admin') ?>">
                <i class="fas fa-users "></i>
                <span >users</span></a>
        </li>
        

        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('produk') ?>">
                <i class="fas fa-users"></i>
                <span>Data barang</span></a>
        </li>
    <?php endif; ?>

    <!-- Divider -->
    <hr class="sidebar-divider ">

    <!-- Heading -->
    <div class="sidebar-heading">
        Users
    </div>

    <!-- Nav Item - Charts -->

    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('user') ?>">
            <i class="far fa-user"></i>
            <span>Home</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('user/profile') ?>">
            <i class="far fa-user"></i>
            <span>my profile</span></a>
    </li>

    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('user/edit') ?>">
            <i class="fas fa-user-edit"></i>
            <span>Edit profile</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider ">
    <!-- logout -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('logout'); ?>">
            <i class="fas fa-sign-out-alt   "></i>
            <span>Logout</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>