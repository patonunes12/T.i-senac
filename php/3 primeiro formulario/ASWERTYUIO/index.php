<?php 

    if(isset($_GET['akira'])){
        $akira = $_GET['akira'];
    } else {    
        $akira = null;
    }

    function Akira($akira){
        echo $akira;
        echo "<br>";
        echo "Akira (Sujeito Nº 28): A entidade que dá nome à obra. Ele era uma criança comum que desenvolveu o grau definitivo de poder psíquico nos experimentos do governo durante a década de 1980. Incapaz de conter sua própria energia, ele causou a explosão que destruiu a Tóquio original, dando início à Terceira Guerra Mundial. Ele permanece mantido em criogênese absoluta sob o subsolo de Neo-Tóquio.";
        echo "<br>";
    };    
    
    function Kaneda($akira){
        echo $akira;
        echo "<br>";
        echo "<br>";
        echo "Shotaro Kaneda: O protagonista carismático e líder de uma gangue de motoqueiros delinquentes em Neo-Tóquio. Apesar de ser arrogante e agir por impulso, possui uma lealdade inabalável pelos amigos e um forte senso de justiça. Munido de sua icônica moto vermelha modificada e de um rifle laser de alta tecnologia, ele lidera a caçada para deter a loucura de Tetsuo.";
        echo "<br>";
    };    
    
    function Tetsuo($akira){
        echo $akira;
        echo "<br>";
        echo "<br>";
        echo "Tetsuo Shima (Sujeito Nº 41): O antagonista principal e melhor amigo de infância de Kaneda. Sempre ofuscado e protegido por Kaneda, Tetsuo nutre um profundo complexo de inferioridade. Após sofrer um acidente envolvendo uma das crianças psíquicas, ele desperta poderes telecinéticos devastadores que o corrompem rapidamente, transformando-o em uma ameaça de nível global à medida que perde o controle sobre sua própria mente e corpo.";
        echo "<br>";
    };    
    
    function Kei($akira){
        echo $akira;
        echo "<br>";
        echo "<br>";
        echo "Kei (ou Kay): Integrante ativa de um grupo de resistência antigovernamental. Ela é forte, altamente focada e inteligente, servindo como o contrapeso racional para a impulsividade de Kaneda. No mangá, ela atua temporariamente como um 'canal psíquico' controlado pelos Espers para combater Tetsuo de igual para igual.";
        echo "<br>";
    };    
    
    function Miyako($akira){
        echo $akira;
        echo "<br>";
        echo "<br>";
        echo "Lady Miyako (Sujeito Nº 19): Uma das primeiras sobreviventes dos experimentos originais. Embora no filme apareça apenas rapidamente como uma monja fanática, no mangá ela é uma peça-chave na história. Sendo uma idosa cega com imenso poder mental, ela atua como mentora espiritual de Kaneda e Kei, abrindo seu templo como refúgio e sacrificando-se para guiar o destino de Neo-Tóquio.";
        echo "<br>";
    };

    function kyoko($akira){
        echo $akira;
        echo "<br>";
        echo "<br>";
        echo "Kiyoko (Sujeito Nº 25): Uma das três crianças modificadas mantidas pelo exército. Ela é fisicamente frágil e confinada a uma cama flutuante, mas possui o dom da clarividência avançada, sendo capaz de prever eventos futuros com precisão assustadora (incluindo a queda de Neo-Tóquio).";
        echo "<br>";
    };

    function takashi($akira){
        echo $akira;
        echo "<br>";
        echo "<br>";
        echo "Takashi (Sujeito Nº 26): O Esper responsável por desencadear os eventos da história. Ao fugir dos laboratórios com a ajuda da resistência, ele surge no meio da rodovia e causa o acidente de moto de Tetsuo. Possui fortes poderes de psicocinese e teletransporte";
        echo "<br>";
    };

    function Masaru($akira){
        echo $akira;
        echo "<br>";
        echo "<br>";
        echo "Masaru (Sujeito Nº 27): Confinado a uma cadeira de rodas motorizada devido à atrofia física causada pelos experimentos, Masaru é o mais resiliente e maduro do trio principal de Espers. Ele demonstra grande poder defensivo, conseguindo erguer escudos psíquicos espessos para proteger seus aliados.";
        echo "<br>";
    };

    function coronel($akira){
        echo $akira;
        echo "<br>";
        echo "<br>";
        echo "Coronel Shikishima: O obstinado comandante das forças militares de Neo-Tóquio e chefe supervisor do projeto secreto que estuda os poderes paranormais. Embora pareça um tirano cruel à primeira vista, ele é motivado estritamente pelo dever de proteger a cidade a qualquer custo para evitar que uma tragédia igual à de Akira aconteça novamente";
        echo "<br>";
    };

    function nezu($akira){
        echo $akira;
        echo "<br>";
        echo "<br>";
        echo "Nezu (O 'Ratazana'): Um político corrupto e ganancioso que atua como parlamentar na oposição do governo. Ele joga dos dois lados: financia secretamente as ações da resistência apenas para desestabilizar o regime militar do Coronel e roubar os segredos de Akira para si mesmo. Seu apelido reflete perfeitamente sua natureza covarde e oportunista.";
        echo "<br>";
    };

?>


<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>akira</title>
    <link rel="stylesheet" href="./nova/style.css">
</head>
<body>

     <form action="index.php" method="GET">
        <div class="container">
            <div class="akira">
                <select name="Personagens de akira" id="">
                    <option value="">Selecione</option>
                    <option value="Akira">Akira Nº 28</option>
                    <option value="Kaneda">Shotaro Kaneda</option>
                    <option value="Tetsuo">Tetsuo Shima</option>
                    <option value="Kei">Kei</option>
                    <option value="Miyako">Lady Miyako Nº 19</option>
                    <option value="kiyoko">Kiyoko Nº 25</option>
                    <option value="kakashi">Takashi Nº 26</option>
                    <option value="Masaru">Masaru Nº 27</option>
                    <option value="coronel">Coronel Shikishima</option>
                    <option value="nezu">Nezu</option>
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