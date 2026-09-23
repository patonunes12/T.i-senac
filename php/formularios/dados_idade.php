<?php

    $nome01 = $_POST['nome1'];
    $idade01 = $_POST['idade1'];
    $nome02 = $_POST['nome2'];
    $idade02 = $_POST['idade2'];

    $media = ($idade01 + $idade02) / 2;

    echo "<h2>Resultado</h2>";
    echo "A idade média de " . $nome01 . " e " . $nome02 . " é de " . number_format($media, 1, '.', '') . " anos";


?>

