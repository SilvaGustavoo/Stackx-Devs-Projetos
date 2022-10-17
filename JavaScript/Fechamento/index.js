const axios = require('axios').default;


//Solicitação do site ViaCep
axios.get("https://viacep.com.br/ws/01001000/json/")
    .then(result => {
        const data = result.data
        const {bairro, logradouro, localidade} = data
        // destruct 

        const cep = {
            bairro, logradouro, localidade
        }
        
        // normal
        let cep2 = {
            logradouro: data.logradouro,
            bairro: data.bairro,
            localidade: data.localidade,
            uf: data.uf
        }
        console.log(cep, "\n", "\n", cep2)
    })
    .catch(console.log(""))