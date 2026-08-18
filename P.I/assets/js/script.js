const inputNome = document.getElementById('buscaNome');
const selectCategoria = document.getElementById('buscaCategoria');
const cards = document.querySelectorAll('.devs-calendario');

function filtrarProdutos() {
    const termoBusca = inputNome ? inputNome.value.toLowerCase().trim() : "";
    const categoriaSelecionada = selectCategoria.value.toLowerCase().trim();

    cards.forEach(card => {
        const paragrafo = card.querySelector('p');
        const textoDescricao = paragrafo ? paragrafo.textContent.toLowerCase() : "";
        
        const atributoCategoria = card.getAttribute('data-categoria');
        const stringCategorias = atributoCategoria ? atributoCategoria.toLowerCase().trim() : "";
        const categoriasDoCard = stringCategorias ? stringCategorias.split(/\s+/) : [];

        const bateuNome = textoDescricao.includes(termoBusca) || stringCategorias.includes(termoBusca);
        const bateuCategoria = categoriaSelecionada === 'todos' || categoriasDoCard.includes(categoriaSelecionada);

        if (bateuNome && bateuCategoria) {
            card.classList.remove('escondido');
        } else {
            card.classList.add('escondido');
        }
    });
}

if (inputNome) {
    inputNome.addEventListener('input', filtrarProdutos);
}
if (selectCategoria) {
    selectCategoria.addEventListener('change', filtrarProdutos);
}