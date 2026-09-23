












<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Akira</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>


     <form action="index.php" method="GET">
        <div class="container">
            <div class="Akira">
                <select name="Personagens de Akira" id="">
                    <option value="">Selecione</option>
                    <option value="Akira">Akira Nº 28</option>
                    <option value="Kaneda">Shotaro Kaneda</option>
                    <option value="Tetsuo">Tetsuo Shima</option>
                    <option value="Kei">Kei</option>
                    <option value="Miyako">Lady Miyako Nº 19</option>
                    <option value="Kiyoko">Kiyoko Nº 25</option>
                    <option value="Takashi">Takashi Nº 26</option>
                    <option value="Masaru">Masaru Nº 27</option>
                    <option value="Coronel">Coronel Shikishima</option>
                    <option value="Nezu">Nezu</option>
                <button class="botao" type="submit">Pronto!</button>
                <div class="resposta">  
                    
                <?php 
                    if($akira != null){
                    isset($akira) ? $akira($akira) : Kaneda("Escolha o personagem de akira");

                        
                }
                ?>
                <?php if($akira == null)  {
                    echo "";
                } else
                    echo "<img src= {$akira}.jpg "?>
                </div>

            </div>
        </div>
     </form>    
   
    
    
</body>
</html>