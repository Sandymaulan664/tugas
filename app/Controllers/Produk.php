<?php

namespace App\Controllers;

use App\Models\ProdukModel;
use Config\Services;

$validation = Services::validation();



class Produk extends BaseController
{
    protected $produkModel;
    public function __construct()
    {
        $this->produkModel = new ProdukModel();
    }
    public function index()
    {
        $data = [
            'title' => 'Daftar produk',
            'produk' => $this->produkModel->getproduk()
        ];

        return view('admin/produk', $data);
    }
    public function detail($id)
    {
        $data = [
            'title' => 'Detail produk',
            'produk' => $this->produkModel->getProduk($id)
        ];
        /* jika produk tidak ada di tabel */
        if (empty($data['produk'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('nama produk' . $id . 'tidak ditemukan ');
        }
        return view('admin/detail_produk.php', $data);
    }

    public function create()
    {
        $data = [
            'title' => 'Form tambah produk',
            'validation' => \Config\Services::validation()
        ];

        return view('admin/tambah_produk', $data);
    }


    public function save()
    {
        if (!$this->validate([
            'nama_produk' => [
                'rules' => 'required|is_unique[produk.nama_produk]',
                'errors' => [
                    'required' => '{field} nama prpduk harus di isi.',
                    'is_unique' => '{field} produk sudah terdaftar'
                ]
            ],
            'img_produk' => [
                'rules' => 'max_size[img_produk,30720]|is_image[img_produk]|mime_in[img_produk,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_sixe' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'lain gambar ',
                    'mime_in' => 'lain gambar '
                ]
            ]

        ])) {

            /* $validation = \Config\Services::validation();
            dd($validation);
            return redirect()->to('/Produk/create')->withInput()->with('validation', $validation); */

            return redirect()->to('/Produk/create')->withInput();
        }
        /* ambil gambar */
        $fileGambar = $this->request->getFile('img_produk');
        /* dd($fileGambar); */
        //jika tidak ada file yang di upload 
        if ($fileGambar->getError() == 4) {
            $namaGambar = 'default.jpeg';
        } else {
            //pindahkan gambar ke folder img
            $fileGambar->move('img');
            //ambil nama file untuk db
            $namaGambar = $fileGambar->getName();
        }

        $this->produkModel->save([
            'nama_produk' => $this->request->getVar('nama_produk'),
            'harga' => $this->request->getVar('harga'),
            'deskripsi' => $this->request->getVar('deskripsi'),
            'stok' => $this->request->getVar('stok'),
            'img_produk' => $namaGambar
        ]);

        session()->setFlashdata('pesan', 'Data berhasil ditambahkan ');


        return redirect()->to('/Produk');
    }


    public function delete($id)
    {
        //cari file / gambar berdasarkan id
        $produk = $this->produkModel->find($id);

        /* cek jika gambarnya default */
        if ($produk['img_produk'] != 'default.jpeg') {
            // hapus file / gambar
            unlink('img/' . $produk['img_produk']);
        }

        $this->produkModel->delete($id);
        session()->setFlashdata('pesan', 'Data berhasil hapus ');
        return redirect()->to('/Produk');
    }
    public function edit($id)
    {
        $data = [
            'title' => 'Form Ubah produk',
            'validation' => \Config\Services::validation(),
            'produk' => $this->produkModel->getproduk($id)
        ];

        return view('admin/edit', $data);
    }

    public function update($id)
    {
        if (!$this->validate([
            'img_produk' => [
                'rules' => 'max_size[img_produk,30720]|is_image[img_produk]|mime_in[img_produk,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_sixe' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'lain gambar ',
                    'mime_in' => 'lain gambar '
                ]
            ]

        ])){
            return redirect()->to('/Produk/edit/'. $this->request->getVar($id))->withInput();
        }
        
        $fileGambar =$this->request->getFile('img_produk');

        //membuat kondisi untuk cek gambar apakah tetap gambar lama 
        if($fileGambar->getError() == 4){
            $namaGambar = $this->request->getVar('image_lama');
        }else{
            // generate nama file random
            $namaGambar = $fileGambar->getRandomName();
            //upload gambar
            $fileGambar->move('img',$namaGambar);
            //hapus gambar/ file yang lama 
            unlink('img'. $this->request->getVar('image_lama'));
        }

        $this->produkModel->save([
            'id' => $id,
            'nama_produk' => $this->request->getVar('nama_produk'),
            'harga' => $this->request->getVar('harga'),
            'stok' => $this->request->getVar('stok'),
            'deskripsi' => $this->request->getVar('deskripsi'),
            'img_produk' => $namaGambar 
        ]);

        session()->setFlashdata('pesan', 'Data berhasil diubah ');

        return redirect()->to('/Produk');
    }

    
    
}
