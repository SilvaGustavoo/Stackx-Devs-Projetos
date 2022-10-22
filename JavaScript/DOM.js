let input = document.getElementsByTagName('input')[0];
console.log(input);

let query = document.querySelector("input")

console.log(query)

let spanCreater = document.createElement("span");

function create() {
    spanCreater = document.createElement("span");
}

// ApendChild e Criação de um novo elemento (tag)



document.body.appendChild(spanCreater)

// Eventos

// confirm("Confira se a pessoa realmente deseja prosseguir")

// Intervalos
let y = 0
function alerta() {
    alert(y)
    y = y + 1
}

//setInterval(() => alerta(), 1000)
//setTimeout(() => alert("Aguarde mais um momento"), 5000)

// Armazenamento Local

localStorage.setItem("nome", "gustavo");

function localStor() {
    localStorage.setItem(localStorage.length + 1, input.value) 
}

btn = document.getElementsByTagName("button")[0];

btn.addEventListener("click", () => { localStor()})