const botao = document.getElementById('botao-acao');
const cores = ['#00ff88', '#ff007f', '#00d2ff', '#ffb703', '#7109b6'];
let indice = 0;

botao.addEventListener('click', () => {
  document.body.style.backgroundColor = cores[indice];
  indice = (indice + 1) % cores.length;
});
