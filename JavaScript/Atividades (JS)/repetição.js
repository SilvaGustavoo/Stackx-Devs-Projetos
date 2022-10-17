function marianaConta(numero) {
    parseInt(numero)
    if (numero <= 0) {
        console.error("ERRO: O numero deve ser Maior que 0");
    } else {
        for (let i = 1 ;i <= numero; i++ ) {
            console.log("Mariana conta " + i)
        }
    }
}

marianaConta(0)
