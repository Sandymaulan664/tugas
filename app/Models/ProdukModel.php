<?php

namespace App\Models;

use CodeIgniter\Model;

class ProdukModel extends Model
{
    protected $table = 'produk';
    protected $useTimestamps = true;
    protected $allowedFields = ['nama_produk','img_produk','harga','stok','deskripsi'];

    public function getproduk($id = false)
    {
        if($id == false){
            return $this->findAll();
        }

        return $this->where(['id'=>$id])->first();
    }
    
}
