import axios from "axios";

let cepInserido:string = '04535015'

interface IBuscaCep {
    cep: string;
    logradouro: string;
    bairro: string;
    complemento:string;
    uf: string;
    localidade: string;
}

console.log(cepInserido)
axios.get(`https://viacep.com.br/ws/${cepInserido}/json/`)
    .then(result => {
        const data: IBuscaCep = result.data
        // a variavel inserida no destruct se junta com o resultado ex: {bairro = data} => bairro: data.bairro
        const {bairro, logradouro, localidade, complemento, uf} = data
        // destruct 
        const cep = {
            bairro, logradouro, localidade, complemento, uf
        }

        /*
        let logradouro: string = data.logradouro
        let bairro: string = data.bairro
        let localidade:string = data.localidade
        let uf:string = data.uf
        // normal
        let cep2 = {
            logradouro: logradouro,
            bairro: bairro,
            localidade: localidade,
            uf: uf
        }*/
        console.log( "\n", "\n", cep)
    })
    .catch(err => console.log(err))