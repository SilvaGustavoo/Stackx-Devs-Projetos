-- CREATE DATABASE DBAULA4;
-- USE DBAULA4;
-- CREATE TABLE TRABALHADORES (
-- COD INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
-- NOME  VARCHAR (30)  NOT NULL,
-- SEXO  VARCHAR (1)  NOT NULL,
-- IDADE INT NOT NULL,
-- DEPTO VARCHAR (30)  NOT NULL,
-- SITUACAO VARCHAR (1)  NOT NULL
-- );
-- INSERT INTO  TRABALHADORES (NOME, SEXO, IDADE, DEPTO, SITUACAO) VALUES 
-- ('JOAQUIM','M',20,'TI','A');
-- INSERT INTO  TRABALHADORES (NOME, SEXO, IDADE, DEPTO, SITUACAO) VALUES 
-- ('MARIA','F',25,'TI','A');
-- INSERT INTO  TRABALHADORES (NOME, SEXO, IDADE, DEPTO, SITUACAO) VALUES 
-- ('BRUNA','F',30,'VENDAS','A');
-- INSERT INTO  TRABALHADORES (NOME, SEXO, IDADE, DEPTO, SITUACAO) VALUES 
-- ('RAFAELA','F',42,'COMPRAS','A');
-- INSERT INTO  TRABALHADORES (NOME, SEXO, IDADE, DEPTO, SITUACAO) VALUES 
-- ('MARCEL','M',28,'TI','A');
-- INSERT INTO  TRABALHADORES (NOME, SEXO, IDADE, DEPTO, SITUACAO) VALUES 
-- ('DANILO','M',45,'PRODUÃÃO','A');
-- INSERT INTO  TRABALHADORES (NOME, SEXO, IDADE, DEPTO, SITUACAO) VALUES 
-- ('PAULO','M',52,'FINANCEIRO','A');
-- INSERT INTO  TRABALHADORES (NOME, SEXO, IDADE, DEPTO, SITUACAO) VALUES 
-- ('CRISTIANE','F',41,'FINANCEIRO','A');
-- INSERT INTO  TRABALHADORES (NOME, SEXO, IDADE, DEPTO, SITUACAO) VALUES 
-- ('ISABELA','F',26,'FINANCEIRO','A');
-- INSERT INTO  TRABALHADORES (NOME, SEXO, IDADE, DEPTO, SITUACAO) VALUES 
-- ('BEATRIZ','F',38,'PMO','A');
-- INSERT INTO  TRABALHADORES (NOME, SEXO, IDADE, DEPTO, SITUACAO) VALUES 
-- ('LUCAS','M',34,'COMPRAS','A');
-- -- -----------------------------------------------------------------------
-- ---
-- CREATE TABLE PAGTO (
-- EMP_COD INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
-- NOME VARCHAR (30)  NOT NULL,
-- FONE VARCHAR (5)  NOT NULL,
-- SALARIO NUMERIC(20,2) NOT NULL,
-- CHEFE VARCHAR (30)  NOT NULL,
-- DEPTO VARCHAR (30)  NOT NULL
-- );
-- INSERT INTO  PAGTO (NOME, FONE, SALARIO, CHEFE, DEPTO) VALUES 
-- ('CARLOS','2688',20000,'LUCIANA','SEGURANÃA');
-- INSERT INTO  PAGTO (NOME, FONE, SALARIO, CHEFE, DEPTO) VALUES 
-- ('SILVA','2677',30000,'SILVIO','VENDAS');
-- INSERT INTO  PAGTO (NOME, FONE, SALARIO, CHEFE, DEPTO) VALUES 
-- ('CABRAL','1088',22000,'RENATO','SEGURANÃA');
-- INSERT INTO  PAGTO (NOME, FONE, SALARIO, CHEFE, DEPTO) VALUES 
-- ('LOBATO','4590',28000,'RENATO','VENDAS');
-- INSERT INTO  PAGTO (NOME, FONE, SALARIO, CHEFE, DEPTO) VALUES 
-- ('MARIA','2690',25000,'LEANDRO','TI');
-- INSERT INTO  PAGTO (NOME, FONE, SALARIO, CHEFE, DEPTO) VALUES 
-- ('ANTUNES','2698',26000,'TATIANA','TI');
-- INSERT INTO  PAGTO (NOME, FONE, SALARIO, CHEFE, DEPTO) VALUES 
-- ('PETTER','2645',22000,'TATIANA','TI');
-- -- -----------------------------------------------------------------------
-- ---
-- CREATE TABLE MEDICOS (
-- NUMERO int auto_increment primary key NOT NULL,
-- NOME varchar (30) NOT NULL,
-- CPF varchar (18) NOT NULL,
-- IDADE int NOT NULL,
-- CIDADE varchar (20) NOT NULL,
-- ESPECIALIDADE varchar (35) NOT NULL
-- );
-- insert into  MEDICOS(nome, cpf, idade, cidade, especialidade) values 
-- ('Joaquim','111.111.111-11',20,'Campinas','Ortopedista');
-- insert into  MEDICOS(nome, cpf, idade, cidade, especialidade) values 
-- ('Roberto','222.222.222-22',37, 'Sorocaba','Traumatologista');
-- insert into  MEDICOS(nome, cpf, idade, cidade, especialidade) values 
-- ('Marcelo','333.333.333-33',16,'Atibaia','Cardiologista');
-- insert into  MEDICOS(nome, cpf, idade, cidade, especialidade) values 
-- ('Ana','444.444.44-44',52,'FlorianÃ³polis','Ortopedista');
-- insert into  MEDICOS(nome, cpf, idade, cidade, especialidade) values 
-- ('Beatriz','555.555.555-55',39,'FlorianÃ³polis','Cardiologista');
-- insert into  MEDICOS(nome, cpf, idade, cidade, especialidade) values 
-- ('Carlos','666.666.666-66',39,'FlorianÃ³polis','Traumatologista');
-- insert into  MEDICOS(nome, cpf, idade, cidade, especialidade) values 
-- ('Denise','777.777.777-77',31,'FlorianÃ³polis','Traumatologista');
-- insert into  MEDICOS(nome, cpf, idade, cidade, especialidade) values 
-- ('Marcos','123.456.789-00',31,'Americana','Traumatologista');
-- insert into  MEDICOS(nome, cpf, idade, cidade, especialidade) values 
-- ('Rodrigo','888.888.888-99',25, 'Guararema','Gastro');
-- -- -----------------------------------------------------------------------
-- ---
-- CREATE TABLE CIDADES (
-- ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
-- CIDADE varchar (30) NOT NULL,
-- PAIS varchar (30) NOT NULL
-- ) ;
-- insert into  CIDADES (CIDADE, PAIS) values ('MilÃ£o','ItÃ¡lia');
-- insert into  CIDADES (CIDADE, PAIS) values ('Caracas','Venezuela');
-- insert into  CIDADES (CIDADE, PAIS) values ('Barcelona','Espanha');
-- insert into  CIDADES (CIDADE, PAIS) values ('Boston ','EUA');
-- insert into  CIDADES (CIDADE, PAIS) values ('SÃ£o Paulo','Brasil');
-- insert into  CIDADES (CIDADE, PAIS) values ('SÃ£o JosÃ© dos 
-- Campos','Brasil');
-- insert into  CIDADES (CIDADE, PAIS) values ('Campinas','Brasil');

-- USE dbaula3;
-- SELECT cliente, sum(frete) FROM pedidos group by CLIENTE

-- GROUP BY exercicios

SELECT sexo, avg(idade)FROM trabalhadores GROUP BY sexo;

SELECT sexo, avg(idade)FROM trabalhadores GROUP BY sexo HAVING avg(idade) > 34;

SELECT depto, sexo, avg(idade) AS media_idade FROM trabalhadores GROUP BY depto, sexo; -- Media de idade por DEPTO e SEXO
SELECT depto, sexo, avg(idade) AS media_idade FROM trabalhadores GROUP BY depto, sexo HAVING avg(idade) > 34 ORDER BY sexo; -- Media de idade > 34 por DEPTO e SEXO m

SELECT depto, count(nome) AS num_funcionarios FROM trabalhadores GROUP BY depto; -- Numero de funcionarios por Departamento

SELECT sexo, count(*) AS total FROM trabalhadores WHERE situacao = 'A' GROUP BY sexo; -- Numero de trabalhadores de cada sexo

SELECT depto, sexo, count(*) AS total FROM trabalhadores GROUP BY depto, sexo ORDER BY depto; -- Numero de trabalhadores de cada sexo em cada departamento

SELECT * FROM trabalhadores;
SELECT situacao, count(*) AS total FROM trabalhadores WHERE idade > 20 GROUP BY situacao; -- Agrupa pela Situação os trabalhadores maiores que 20

SELECT especialidade, count(*) AS num_medicos FROM medicos GROUP BY especialidade; -- Agrupa por Especialidade a quantidade de médicos

SELECT especialidade, count(*) AS qtd FROM medicos GROUP BY especialidade HAVING count(*) >= 2; -- Agrupa por Especialidade que contem mais de 1 medicos 

SELECT * FROM cidades; -- Obter todos os dados da tabela Cidades

-- Obter o numero de cidades de cada pais da tabela e mostrar os que tenham mais que 2 cidades
SELECT pais, count(*) AS num_cidades FROM cidades GROUP BY pais HAVING count(*) > 1; 

Select depto, avg(salario) AS media from pagto  group by depto; -- Media de salarios por departamento
Select chefe, avg(salario) AS media from pagto group by chefe; -- Media de salarios por chefe
SELECT * FROM pagto; -- Todos os dados da tabela Pagto

-- Mostra o Minimo,Maximo e a Media dos salarios de cada departamento
SELECT depto ,min(salario) AS menor, max(salario) AS maior, avg(salario) AS medio FROM pagto GROUP BY depto;

SELECT chefe, count(*) AS num_subordinados FROM pagto GROUP BY chefe; -- Numero de subordinados de cada chefe

-- Media de salarios por departamento, com media maiores que 20000
SELECT depto, avg(salario) AS media FROM pagto GROUP BY depto HAVING avg(salario) > 20000;

-- Total de salarios de cada departamento, com um total maior que 50000
SELECT depto, sum(salario) AS total FROM pagto GROUP BY depto HAVING sum(salario) > 50000;