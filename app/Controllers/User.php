<?php

namespace App\Controllers;

use Myth\Auth\Models\UserModel as MythUserModel;
use App\Models\ProdukModel;

class User extends BaseController
{
    public function __construct()
    {
        $this->userModel = new MythUserModel();
        $this->produkModel = new ProdukModel();
    }
    public function index()
    {
        $data = [
            'title' => 'Daftar produk',
            'produk' => $this->produkModel->getproduk(),
        ];
        return view('user/index', $data);
    }

    public function profile()
    {
        return view('user/myprofile');
    }


    public function edit()
    {
        $userId = user_id();
        $user = $this->userModel->find($userId);

        return view('user/edit', ['user' => $user]);
    }

    public function update()
{
    $rules = [
        'fulname' => 'required',
        'user_image' => 'uploaded[user_image]|max_size[user_image,1024]|is_image[user_image]',
        'alamat' => 'required',
        'nohp' => 'required'
    ];

    if (!$this->validate($rules)) {
        return redirect()->back()->withInput()->with('error', $this->validator->getErrors());
    }

    $userId = user_id();
    $user = $this->userModel->find($userId);

    if (!$user) {
        return redirect()->back()->with('error', 'User not found');
    }

    $user->fulname = $this->request->getPost('fulname');
    $user->alamat = $this->request->getPost('alamat');
    $user->nohp = $this->request->getPost('nohp');

    // Upload and update user image if provided
    $userImage = $this->request->getFile('user_image');
    if ($userImage->isValid() && !$userImage->hasMoved()) {
        $newImageName = $userImage->getRandomName();
        $userImage->move(ROOTPATH . 'public/uploads', $newImageName);
        $user->user_image = $newImageName;
    }

    $this->userModel->save($user['id']);

    return redirect()->to('/user/edit')->with('success', 'Profile updated successfully');
}

}
