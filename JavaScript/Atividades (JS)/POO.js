
class Banco {

    constructor(deposito, saque) {
        this.saldo = 0
        deposito(deposito)
        saque(saque)
    }

    deposito(deposito) {
        saldo = saldo + deposito
        return saldo
    }

    saque(saque) {
        if (saque > this.saldo) {
            return console.log('Saque permitido !!')
        }
        return console.log("saque negado")
    }
}

let novoDeposito = new Banco(100, 0)
console.log(novoDeposito)




