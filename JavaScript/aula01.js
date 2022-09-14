let amarelo = "amarelo"
var x = 280
var y = true
/*
console.log("Para concatenar usa-se: "+ amarelo.concat(" e azul.")); 
// vale lembrar que essa concatenação nao irá ficar fixa na variavel.

console.log("Para localizar a posição de uma letra na frase ou ate mesmo de uma palavra: "+ amarelo.indexOf("a"));

console.log(amarelo[3])
console.log(amarelo.length);
console.log(amarelo.toUpperCase()); //toLowerCase() para deixar todas as letras minusculas.

console.log(amarelo.replaceAll("a", "e")); // alteração de alguma letra ou de todas as letras utilizanda All.

let array = ["Gustavo", "Santos", 20, 1.68]

let listaAlunos = ["Rodolfo", "Ronaldo", "Renata", "Julia", "Joao", "Pedro"]

console.log(listaAlunos.filter(listaAlunos => listaAlunos[0] == "J"))

console.log(listaAlunos.map(listaAlunos => listaAlunos.replace("R", "S")));

console.log(listaAlunos.find(listaAlunos => listaAlunos[0] == "R"))

console.log(listaAlunos.map(listaAlunos => listaAlunos.replace(listaAlunos[0], "S")))

var eu = { nome: "Gustavo", sobrenome: "Santos", idade: 20, altura: 1.67}

console.log(eu)

console.log("\n")

let cor = "amarelo"
console.log(cor[0])
let string = "222"
console.log(parseInt(string));

let listaDeFrutas = ["Banana", "Maçã", "Morango", "Abacaxi", "Pera", "Uva"]

console.log(listaDeFrutas.filter(listaDeFrutas => listaDeFrutas[0] == "M"));

console.log(listaDeFrutas.find(listaDeFrutas => listaDeFrutas[0] != "B"))

console.log(listaDeFrutas.map(listaDeFrutas => listaDeFrutas.replaceAll("n", "t")))


const carro = {placa: "FGV-3480", cor: "Vermelho", ano: 2019, modelo: "Batmóvel"}

console.log(carro)


*/
/**
 * 
 * @param {string} usuario 
 * @param {string} senha 
 * @param {respostaDoSistema} callback 
 * @description esta função serve para verificar se o usuário e a senha são de fato verdadeiros
 * 
 * @return {string} retorna o site de acesso ou uma mensagem de erro
 * 
 * @example acesso("Gustavo", "1234", (msg) => {console.log(msg)}) // "Acesso permitido"
 */
function acesso(usuario, senha, callback) {
    if (usuario === "admin" && senha === "admin") { callback("acesso permitido")} else { callback("acesso negado")}
}

acesso("admin", "admin", (msg) => { console.log(msg)})



/**
 * @description a função receberia um cep e faria uma solicitação na rede para a entrega dos dados referente ao cep inserido
 * @returns {string} retornar o endereço de um cep inserido
 */
async function endereco () {
    const dados = await fetch("https://api.github.com/users/SilvaGustavoo")
    return dados
}

endereco().then(e => {console.log(e)}).catch(err => console.log(err))

