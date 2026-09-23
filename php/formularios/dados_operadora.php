<?php

    $minutos = $_POST['minutos'];

    $valor_pago = 50.00;

    if ($minutos > 100) {
        $minutos_excedentes = $minutos - 100;
        $valor_pago = $valor_pago + ($minutos_excedentes * 2.00);
    }

    echo "<h2>Resultado</h2>";
    echo "Valor a pagar: R$ " . number_format($valor_pago, 2, '.', '');

?>
