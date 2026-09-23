<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>atividade 5 pdf1</title>
</head>
<body>

    <h2>Calculadora de Troco</h2>
    <form action="dados_troco.php" method="POST">
        <label>Preço unitário do produto:</label><br>
        <input type="number" step="0.01" name="preco" required><br><br>
        
        <label>Quantidade comprada:</label><br>
        <input type="number" name="quantidade" required><br><br>
        
        <label>Dinheiro recebido:</label><br>
        <input type="number" step="0.01" name="dinheiro" required><br><br>
        
        <button type="submit">Calcular Troco</button>
    </form>
    
</body>
</html>