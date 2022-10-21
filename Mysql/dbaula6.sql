Create database estacionamento;
Use estacionamento;
CREATE TABLE CLIENTE (
COD INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
NOME varchar (30) NOT NULL,
CPF varchar (30) NOT NULL
);
insert into  CLIENTE(nome, cpf) values ('Joaquim','123.456.789-00');
insert into  CLIENTE(nome, cpf) values ('Ana Maria','111.222.333-44');
insert into  CLIENTE(nome, cpf) values ('Beatriz da Silva','222.333.444-55');
insert into  CLIENTE(nome, cpf) values ('Carlos Eduardo','333.444.555-66');
insert into  CLIENTE(nome, cpf) values ('Denise dos Santos','444.555.666-77');
CREATE TABLE VEICULO (
COD INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
PLACA varchar (8) NOT NULL,
MODELO_CODMOD int NOT NULL,
CLIENTE_CPF varchar (30)  NOT NULL,
COR varchar (30) NOT NULL
);
insert into  VEICULO(placa, modelo_codmod, cliente_cpf, cor) values ('JJJ-2020',1,'123.456.789-00','verde');
insert into  VEICULO(placa, modelo_codmod, cliente_cpf, cor) values ('JEG-1010',2,'111.222.333-44','preto');
insert into  VEICULO(placa, modelo_codmod, cliente_cpf, cor) values ('JJJ-3030',3,'222.333.444-55','prata');
insert into  VEICULO(placa, modelo_codmod, cliente_cpf, cor) values ('ABC-1515',4,'222.333.444-55','vermelho');
insert into  VEICULO(placa, modelo_codmod, cliente_cpf, cor) values ('DEZ-1234',5,'333.444.555-66','verde');

CREATE TABLE MODELO (
CODMOD INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
DESC_2 varchar (40) NOT NULL
);
insert into  MODELO(desc_2) values ('Polo');
insert into  MODELO(desc_2) values ('Celta');
insert into  MODELO(desc_2) values ('Upi');
insert into  MODELO(desc_2) values ('Fusca');
insert into  MODELO(desc_2) values ('Fiesta');
insert into  MODELO(desc_2) values ('Prisma');
insert into  MODELO(desc_2) values ('Palio');
insert into  MODELO(desc_2) values ('Montana');
CREATE TABLE PATIO (
NUM INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
ENDER varchar (40) NOT NULL,
CAPACIDADE int NOT NULL
);
insert into  PATIO(ender,capacidade) values ('TatuapÃ©',500);
insert into  PATIO(ender,capacidade) values ('AnÃ¡lia Franco',1000);
insert into  PATIO(ender,capacidade) values ('SÃ£o Miguel',350);
insert into  PATIO(ender,capacidade) values ('Pinheiros',800);
CREATE TABLE ESTACIONA (
COD INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
PATIO_NUM int NOT NULL,
VEICULO_PLACA varchar (8) NOT NULL,
DTENTRADA varchar (10) NOT NULL,
DTSAIDA varchar (10) NOT NULL,
HSENTRADA varchar (10) NOT NULL,
HSSAIDA varchar (10) NOT NULL
);
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (1, 'JJJ-2020','01/04/2013','01/04/2013','13:00','17:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (1, 'JJJ-2020','02/04/2013','02/04/2013','13:00','17:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (1, 'JJJ-2020','03/04/2013','03/04/2013','13:00','17:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (1, 'JJJ-2020','04/04/2013','04/04/2013','13:00','17:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (1, 'JJJ-2020','05/04/2013','05/04/2013','13:00','17:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (2, 'JEG-1010','08/04/2013','08/04/2013','08:00','16:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (2, 'JEG-1010','09/04/2013','09/04/2013','08:00','16:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (2, 'JEG-1010','10/04/2013','10/04/2013','08:00','16:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (2, 'JEG-1010','11/04/2013','11/04/2013','08:00','16:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (2, 'JEG-1010','12/04/2013','12/04/2013','08:00','16:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (3, 'JJJ-2020','25/03/2013','25/03/2013','19:00','23:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (3, 'JJJ-2020','26/03/2013','26/03/2013','19:00','23:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (3, 'JJJ-2020','27/03/2013','27/03/2013','19:00','23:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (4, 'JJJ-2020','28/03/2013','28/03/2013','19:00','23:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (4, 'JJJ-2020','29/03/2013','29/03/2013','19:00','23:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (1, 'JJJ-2020','12/03/2013','12/03/2013','19:00','23:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (2, 'JEG-1010','13/03/2013','13/03/2013','08:00','16:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (2, 'DEZ-1234','15/03/2013','15/03/2013','12:00','18:00');
insert into  ESTACIONA(PATIO_NUM, VEICULO_PLACA, DTENTRADA, DTSAIDA, 
HSENTRADA, HSSAIDA) values (3, 'DEZ-1234','01/03/2013','01/03/2013','10:00','15:00');


SELECT * FROM cliente;
SELECT * FROM veiculo;
SELECT * FROM modelo;
SELECT * FROM estaciona;
SELECT * FROM patio;

SELECT cliente.nome, veiculo.placa, veiculo.cor, modelo.desc_2, count(estaciona.veiculo_placa) AS Entrou FROM veiculo 
INNER JOIN cliente ON cliente.cpf = veiculo.cliente_cpf
INNER JOIN modelo ON modelo.codmod = veiculo.modelo_codmod
INNER JOIN estaciona ON veiculo.placa = estaciona.veiculo_placa GROUP BY cliente.nome, veiculo.placa, veiculo.cor, modelo.desc_2 ;

SELECT cliente.nome, veiculo.placa, patio.ender, count(patio.ender) AS qtd FROM cliente 
INNER JOIN veiculo ON cliente.cpf = veiculo.cliente_cpf
INNER JOIN estaciona ON veiculo.placa = estaciona.veiculo_placa
INNER JOIN patio ON patio.num = estaciona.patio_num 
GROUP BY cliente.nome, veiculo.placa, patio.ender;

-- Exiba a placa e o nome dos donos de todos os veículos.
SELECT cliente.nome, veiculo.placa FROM cliente
INNER JOIN veiculo ON cliente.cpf = veiculo.cliente_cpf;

-- Exiba o CPF e o nome do cliente que possui o veículo de placa JJJ-2020.
SELECT cliente.cpf, cliente.nome FROM cliente
INNER JOIN veiculo ON CLIENTE.CPF = VEICULO.CLIENTE_CPF WHERE veiculo.placa = 'JJJ-2020';

-- Exiba a placa e a cor do veículo que possui o código de estacionamento 1.
SELECT DISTINCT veiculo.placa, veiculo.cor FROM estaciona 
INNER JOIN veiculo ON veiculo.placa = estaciona.veiculo_placa WHERE estaciona.cod = 1;

-- Exiba a placa, a cor e a descrição de seu modelo.
SELECT veiculo.placa, veiculo.cor, modelo.desc_2 FROM veiculo 
INNER JOIN modelo ON modelo.codmod = veiculo.modelo_codmod
INNER JOIN estaciona ON veiculo.placa = estaciona.veiculo_placa
WHERE estaciona.cod = 1; 

-- Exiba o endereço, a data de entrada e de saída dos estacionamentos do veículo de placa JEG-1010.
SELECT patio.ender, dtentrada, dtsaida FROM estaciona 
INNER JOIN patio ON patio.num = estaciona.patio_num
WHERE estaciona.veiculo_placa = 'JEG-1010';

-- Exiba a quantidade de vezes os veículos de cor verde estacionaram.
SELECT veiculo.cor, count(estaciona.dtsaida) AS estacionou FROM veiculo
INNER JOIN estaciona ON veiculo.placa = estaciona.veiculo_placa
WHERE veiculo.cor = 'verde'
GROUP BY veiculo.cor;

-- Liste todos os clientes que possuem carro de modelo POLO.
SELECT modelo.desc_2 AS modelo, cliente.nome FROM cliente 
INNER JOIN veiculo ON cliente.cpf = veiculo.cliente_cpf
INNER JOIN modelo ON modelo.codmod = veiculo.modelo_codmod
WHERE modelo.desc_2 = 'polo';

-- Liste as placas, os horários de entrada e saída dos veículos de cor verde.
SELECT veiculo.placa, estaciona.hsentrada, estaciona.hssaida, veiculo.cor FROM veiculo
INNER JOIN estaciona ON veiculo.placa = estaciona.veiculo_placa
WHERE veiculo.cor = 'verde';

-- Liste todos os estacionamentos do veículo de placa JJJ-2020.
SELECT estaciona.* FROM veiculo 
INNER JOIN estaciona ON veiculo.placa = estaciona.veiculo_placa
WHERE veiculo.placa = 'JJJ-2020';

-- Exiba o nome do cliente que possui o veículo cujo código do estacionamento é 2.
SELECT cliente.nome FROM cliente
INNER JOIN veiculo ON cliente.cpf = veiculo.cliente_cpf
INNER JOIN estaciona ON veiculo.placa = estaciona.veiculo_placa
WHERE estaciona.cod = 2;

-- Exiba o CPF do cliente que possui o veículo cujo código do estacionamento é 3.
SELECT cliente.cpf FROM cliente
INNER JOIN veiculo ON cliente.cpf = veiculo.cliente_cpf
INNER JOIN estaciona ON veiculo.placa = estaciona.veiculo_placa
WHERE estaciona.cod = 3;

-- Exiba a descrição do modelo do veículo cujo código do estacionamento é 2.
SELECT modelo.desc_2 FROM modelo
INNER JOIN veiculo ON modelo.codmod = veiculo.modelo_codmod
INNER JOIN estaciona ON veiculo.placa = estaciona.veiculo_placa
WHERE estaciona.cod = 2;

-- Exiba a placa, o nome dos donos e a descrição dos os modelos de todos os veículos.
SELECT veiculo.placa, cliente.nome, modelo.desc_2 FROM cliente
INNER JOIN veiculo ON cliente.cpf = veiculo.cliente_cpf
INNER JOIN modelo ON modelo.codmod = veiculo.modelo_codmod;


