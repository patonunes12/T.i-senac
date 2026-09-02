document.addEventListener("DOMContentLoaded", () => {
  const codigoAluno = document.getElementById("codigoAluno");
  const btnExecutarCodigo = document.getElementById("btnExecutarCodigo");
  let btnSalvarCodigo = document.getElementById("btnSalvarCodigo");

  const nomeAluno = (localStorage.getItem("exercicio06_nomeAluno") || "").trim();

  if (!nomeAluno) {
    alert("Digite seu nome no index antes de acessar os exercícios.");
    window.location.href = "index.html";
    return;
  }

  if (!codigoAluno) {
    return;
  }

  function executarCodigo() {
    try {
      new Function(codigoAluno.value)();
    } catch (erro) {
      alert("Erro ao executar o código: " + erro.message);
    }
  }

  function salvarCodigo() {
    const nomeAluno = (localStorage.getItem("exercicio06_nomeAluno") || "").trim();
    const numeroExercicio = document.title.match(/Exercício\s*(\d+)/i);
    const exercicio = numeroExercicio ? numeroExercicio[1].padStart(2, "0") : "00";
    const nomeArquivoBase = `${nomeAluno || "codigo-aluno"} - EX ${exercicio}`
      .replace(/[\\/:*?"<>|]+/g, "")
      .replace(/\s+/g, " ")
      .trim();

    const conteudo = codigoAluno.value;
    const blob = new Blob([conteudo], { type: "text/plain;charset=utf-8" });
    const url = URL.createObjectURL(blob);
    const link = document.createElement("a");

    link.href = url;
    link.download = `${nomeArquivoBase || "codigo-aluno"}.txt`;
    link.click();

    setTimeout(() => {
      URL.revokeObjectURL(url);
    }, 0);
  }

  if (btnExecutarCodigo) {
    btnExecutarCodigo.addEventListener("click", executarCodigo);
  }

  if (!btnSalvarCodigo && btnExecutarCodigo) {
    btnSalvarCodigo = document.createElement("button");
    btnSalvarCodigo.id = "btnSalvarCodigo";
    btnSalvarCodigo.type = "button";
    btnSalvarCodigo.textContent = "Salvar código";
    btnSalvarCodigo.style.marginTop = "12px";
    btnSalvarCodigo.style.marginLeft = "12px";
    btnSalvarCodigo.style.padding = "10px 16px";
    btnSalvarCodigo.style.border = "0";
    btnSalvarCodigo.style.borderRadius = "10px";
    btnSalvarCodigo.style.background = "#8bd8ff";
    btnSalvarCodigo.style.color = "#031329";
    btnSalvarCodigo.style.fontWeight = "700";
    btnSalvarCodigo.style.cursor = "pointer";

    btnExecutarCodigo.insertAdjacentElement("afterend", btnSalvarCodigo);
  }

  if (btnSalvarCodigo) {
    btnSalvarCodigo.addEventListener("click", salvarCodigo);
  }
});





//// ==========================================
        // EXERCÍCIO 2: Calculadora Simples
        // ==========================================
        let n1 = Number(prompt("Ex 2: Digite o primeiro número:"));
        let n2 = Number(prompt("Ex 2: Digite o segundo número:"));
        let car = prompt("Ex 2: Digite a operação (+, -, *, /):");
        let res2;

        switch (car) {
            case '+': res2 = n1 + n2; break;
            case '-': res2 = n1 - n2; break;
            case '*': res2 = n1 * n2; break;
            case '/':
                if (n2 !== 0) {
                    res2 = n1 / n2;
                } else {
                    alert("Erro: Divisão por zero");
                }
                break;
            default:
                alert("Operação inválida");
                break;
        }

        if (res2 !== undefined) {
            console.log(`Resultado da Calculadora: ${res2}`);
        }


        // ==========================================
        // EXERCÍCIO 3: Menu de Operações
        // ==========================================
        let num1 = Number(prompt("Ex 3: Digite o primeiro número:"));
        let num2 = Number(prompt("Ex 3: Digite o segundo número:"));
        let esc = Number(prompt("Ex 3: Escolha a operação:\n1 - Média\n2 - Diferença\n3 - Produto\n4 - Divisão"));
        let res3;

        switch (esc) {
            case 1:
                res3 = (num1 + num2) / 2;
                console.log(`Média: ${res3}`);
                break;
            case 2:
                res3 = Math.abs(num1 - num2);
                console.log(`Diferença: ${res3}`);
                break;
            case 3:
                res3 = num1 * num2;
                console.log(`Produto: ${res3}`);
                break;
            case 4:
                if (num2 !== 0) {
                    res3 = num1 / num2;
                    console.log(`Divisão: ${res3}`);
                } else {
                    alert("Erro: O segundo número não pode ser zero.");
                }
                break;
            default:
                alert("Erro: Opção inválida. Execução terminada.");
                break;
        }


        // ==========================================
        // EXERCÍCIO 4: Total de Cardápio
        // ==========================================
        let cod4 = Number(prompt(" Digite o código do item (100 a 105):"));
        let qtd = Number(prompt(" Digite a quantidade adquirida:"));
        let prc = 0;
        let vld = true;

        switch (cod4) {
            case 100: prc = 1.70; break;
            case 101: prc = 2.30; break;
            case 102: prc = 2.60; break;
            case 103: prc = 2.40; break;
            case 104: prc = 2.50; break;
            case 105: prc = 1.00; break;
            default:
                vld = false;
                alert("Código de produto inválido.");
                break;
        }

        if (vld) {
            let vF = prc * qtd;
            console.log(`Total do Cardápio: R$ ${vF.toFixed(2)}`);
        }


        // ==========================================
        // EXERCÍCIO 5: Estações do Ano
        // ==========================================
        let m = prompt("Ex 5: Digite o mês do ano:");
        
        if (m) {
            let mF = m.toLowerCase().trim();
            let est;

            switch (mF) {
                case 'dezembro':
                case 'janeiro':
                case 'fevereiro':
                    est = "Verão";
                    break;
                case 'março':
                case 'abril':
                case 'maio':
                    est = "Outono";
                    break;
                case 'junho':
                case 'julho':
                case 'agosto':
                    est = "Inverno";
                    break;
                case 'setembro':
                case 'outubro':
                case 'novembro':
                    est = "Primavera";
                    break;
                default:
                    alert("Mês inválido");
                    break;
            }

            if (est) {
                console.log(`Estação do ano: ${m} = ${est}`);
            }
        }
