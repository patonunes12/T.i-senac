<?php

    $preco = $_POST['preco'];
    $quantidade = $_POST['quantidade'];
    $dinheiro = $_POST['dinheiro'];

    $total = $preco * $quantidade;
    $troco = $dinheiro - $total;

    echo "<h2>Resultado</h2>";
    echo "TROCO = " . number_format($troco, 2, '.', '');

?>