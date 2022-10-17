let carrinho = { //essa variavel serve como banco de dados
    segunda: {day: "segunda", amount: 57},
    terca: {day: "terça", amount: 108},
    quarta: {day: "quarta", amount: 91},
    quinta: {day: "quinta", amount: 25},
    sexta: {day: "sexta", amount: 128},
    sabado: {day: "sabado", amount: 85},
    domingo: {day: "domingo", amount: 66}
}

let x = 0 // contador
const diaSemana = ["segunda", "terça", "quarta", "quinta", "sexta", "sabado", "domingo"] //foi uma forma de transformar a srting em um numero puxando pela lista sendo 0 = "segunda"
let total = 0 // valor acomulado
let maiorNumero = 0 // maior gasto

/**
 * @description essa função pega todos os gastos em cada dia da semana e faz a sua soma e coleta o maior valor entre eles
 * @returns {number} retorna o total dos gastos gerados ap longo da semana.
 */
function repetidor() {

    switch (diaSemana[x]) {
        case "segunda":
            total = total + carrinho.segunda.amount
            if (carrinho.segunda.amount > maiorNumero) {maiorNumero = carrinho.segunda.amount}
        break
        case "terça":
            total = total + carrinho.terca.amount
            if (carrinho.terca.amount > maiorNumero) {maiorNumero = carrinho.terca.amount}
        break
        case "quarta":
            total = total + carrinho.quarta.amount
            if (carrinho.quarta.amount > maiorNumero) {maiorNumero = carrinho.quarta.amount}
        break
        case "quinta":
            total = total + carrinho.quinta.amount
            if (carrinho.quinta.amount > maiorNumero) {maiorNumero = carrinho.quinta.amount}
        break
        case "sexta":
            total = total + carrinho.sexta.amount
            if (carrinho.sexta.amount > maiorNumero) {maiorNumero = carrinho.sexta.amount}
        break
        case "sabado":
            total = total + carrinho.sabado.amount
            if (carrinho.sabado.amount > maiorNumero) {maiorNumero = carrinho.sabado.amount}
        break
        case "domingo":
            total = total + carrinho.domingo.amount
            if (carrinho.domingo.amount > maiorNumero) {maiorNumero = carrinho.domingo.amount}
        break
    }

    x = x + 1;

    // enquanto o contador nao passar os 7 dias ele ira repetir-se chamando a funçao dele mesmo
    if (x<=7) {
        repetidor()
    } else {return console.log(total, maiorNumero)}

}

repetidor()

// variaveis cujo ovalor sera gerado uma porcentagem em relação ao maior valor para que se organizem de forma proporcionalk como um grafico
let segundaWidth = carrinho.segunda.amount/maiorNumero
let tercaWidth = carrinho.terca.amount/maiorNumero
let quartaWidth = carrinho.quarta.amount/maiorNumero
let quintaWidth = carrinho.quinta.amount/maiorNumero
let sextaWidth = carrinho.sexta.amount/maiorNumero
let sabadoWidth = carrinho.sabado.amount/maiorNumero
let domingoWidth = carrinho.domingo.amount/maiorNumero
console.log(segundaWidth, tercaWidth, quartaWidth, quintaWidth, sextaWidth, sabadoWidth, domingoWidth)


console.log(segundaWidth)


document.getElementById("segunda").style="height: " + segundaWidth*100 + "%;"
document.getElementById("terca").style="height: " + tercaWidth*100 + "%;"
document.getElementById("quarta").style="height: " + quartaWidth*100 + "%;"
document.getElementById("quinta").style="height: " + quintaWidth*100 + "%;"
document.getElementById("sexta").style="height: " + sextaWidth*100 + "%;"
document.getElementById("sabado").style="height: " + sabadoWidth*100 + "%;"
document.getElementById("domingo").style="height: " + domingoWidth*100 + "%;"