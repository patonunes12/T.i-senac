<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>atividade 3 pdf1</title>
</head>
<body>

    <h2>Dados das Pessoas</h2>
    <form action="dados_idade.php" method="POST">
        <h3>Dados da primeira pessoa:</h3>
        <label>Nome:</label><br>
        <input type="text" name="nome1" required><br>
        <label>Idade:</label><br>
        <input type="number" name="idade1" required><br><br>
        
        <h3>Dados da segunda pessoa:</h3>
        <label>Nome:</label><br>
        <input type="text" name="nome2" required><br>
        <label>Idade:</label><br>
        <input type="number" name="idade2" required><br><br>
        
        <button type="submit">Calcular Média</button>
    </form>
    
</body>
</html>