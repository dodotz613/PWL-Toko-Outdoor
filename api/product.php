<?php
// koneksi ke database
include "database.php";
// mengambil metode request
$request_method = $_SERVER["REQUEST_METHOD"];
$product = new Product();

if($request_method == 'GET') {
    if(isset($_GET['id'])) {
        $product->get_products(null,
            $_GET['id']);
    } else {
        $product->get_products();
    }
} else if($request_method == 'POST') {
    $product->add_product($_POST['ID'],
        $_POST['name']);
} else if($request_method == 'PUT') {
    parse_str(file_get_contents("php://input"),$post_vars);
    $product->put_product($_GET['id'], $post_vars['name'], $post_vars['code'],
    $post_vars['price']);
} else if($request_method == 'DELETE') {
    $product->del_product($_GET['id']);
}

// deklarasi kelas produk
class Product {
    // atribut
    private $ID;
    private $img;
    private $name;
    private $code;
    private $price;
    public $conn;

    function __construct() {
        $this->ID = "";
        $this->name = "";
        $this->code = 0;
        $this->price = 0;
        $this->conn = new Database();
        $this->conn->getConnection();
    }

    public function get_products($kategori = null, $id_produk = null) {
        $query = "";
        if($kategori <> null) {
            // GET BY ID or BY kategori
            // http:/// ..... /api/product/sayur
            // http:// ...../api/product/1
            $query = "SELECT * FROM product
                WHERE kategory = '$kategori'
                    AND ID = '$id_produk'";
        } if ($id_produk <> null) {
            $query = "SELECT * FROM product
                WHERE ID = '$id_produk'";
         } else {
            // GET ALL
            // .../api/produk.php
            $query = "SELECT * FROM product";
        }
        $result = $this->conn->conn->query($query);
        $respon = array();

        while($row = $result->fetch_array(MYSQLI_ASSOC)) {
            $respon[] = $row;
        }
        // menutup koneksi dari database
        $this->conn->closeConnection();
        // // respon ke client dalam format JSON
         header('Content-Type: application/json');
         echo json_encode($respon);
    }

    public function add_product($ID, $name) {
        $query = "INSERT INTO product (ID, Nama)
        VALUES ('$ID', '$name')";
        if($this->conn->conn->query($query)) {
            $respon = array(
                'status' => 1,
                'status_message' => 'Produk berhasil
                ditambahkan'
            );
        } else {
            $respon = array(
                'status' => 0,
                'status_message' => 'Produk gagal
                 ditambahkan'
            );
        }
        $this->conn->closeConnection();
        header('Content-Type: application/json');
        echo json_encode($respon);
    }

    public function put_product($ID, $name, $code, $price) {
        $query = "UPDATE product SET nama = '$name', code=$code, price='$price'
                  WHERE ID = '$ID'";

        if($this->conn->conn->query($query)) {
            $respon = array(
                'status' => 1,
                'status_message' => 'Produk berhasil diubah'
            );
        } else {
            $respon = array(
                'status' => 0,
                'status_message' => 'Produk gagal diubah'
            );
        }
        $this->conn->closeConnection();
        header('Content-Type: application/json');
        echo json_encode($respon);
    }

    public function del_product($ID) {
        $query = "DELETE FROM product WHERE ID='$ID'";
        if($this->conn->conn->query($query)) {
            $respon = array(
                'status' => 1,
                'status_message' => 'Produk berhasil dihapus'
            );
        } else {
            $respon = array(
                'status' => 0,
                'status_message' => 'Produk gagal dihapus'
            );
        }
        $this->conn->closeConnection();
        header('Content-Type: application/json');
        echo json_encode($respon);
    }
}
