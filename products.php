<?php
require 'config.php';
$consulta = mysqli_query($conectar, "SELECT * FROM products");

$ver = mysqli_num_rows($consulta);
$lista = array();

if ($ver > 0) {
    while ($datos = mysqli_fetch_assoc($consulta)) {
        $fila = array('id' => $datos['id'], 'name' => $datos['name'], 'slug' => $datos['slug'], 'description' => $datos['description'],
            'price' => $datos['price'], 'quantity' => $datos['quantity'], 'status' => $datos['status'], 'categories_id' => $datos['categories_id'],
        );

        array_push($lista, $fila);
    }
    echo json_encode($lista, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
}else{
    echo '0';
}
?>