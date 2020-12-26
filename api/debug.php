<?php
    include "product.php";
    // include "database.php";


    $produk = new Product();

    $produk->get_products();


    // $dbase = new Database();
    // $dbase -> getConnection();
    // print_r($dbase);
