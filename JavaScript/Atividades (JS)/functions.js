let n1 = 20
let n2 = 35

function somar() {
    return console.log(n1 + n2)
}

somar()

function alterar (string) {
    return parseInt(string)
}

console.log(alterar("222") + 222);



function filtrar(lista) {
    return console.log(lista.filter(lista => lista[0] == "P"))
}

filtrar(["Júlia", "Anna", "Pedro", "Rafael", "Paula"])


function calculadora(num1, num2, calc) {
    if (calc == "soma") { return console.log(num1 + num2)} else if (calc == "mult") { return console.log(num1 * num2)} else if (calc == "mod") {return console.log(num1 % num2)} else {return console.log("Esta calculadora realiza somente 3 funções. \n mult = multiplicação dos dois valores \n soma = faz a soma dos dois valores \n mod = faz o módulo entre dois valores \n Um exemplo disso seria: calculadora(25,32,'soma') // resulta em 57. Faça o teste")}
}

calculadora(25,32)