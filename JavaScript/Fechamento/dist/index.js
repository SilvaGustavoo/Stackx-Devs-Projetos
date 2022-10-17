"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const axios_1 = __importDefault(require("axios"));
let cepInserido = '04535015';
console.log(cepInserido);
axios_1.default.get(`https://viacep.com.br/ws/${cepInserido}/json/`)
    .then(result => {
    const data = result.data;
    // a variavel inserida no destruct se junta com o resultado ex: {bairro = data} => bairro: data.bairro
    const { bairro, logradouro, localidade, complemento, uf } = data;
    // destruct 
    const cep = {
        bairro, logradouro, localidade, complemento, uf
    };
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
    console.log("\n", "\n", cep);
})
    .catch(err => console.log(err));
