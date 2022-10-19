-- CREATE DATABASE DBAULA5;
-- USE DBAULA5;
-- CREATE TABLE FORNECEDOR (
-- COD INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
-- NOME VARCHAR(30)  NOT NULL,
-- SITUACAO CHAR NOT NULL,
-- CIDADE VARCHAR(30)  NOT NULL
-- ) ;
-- CREATE TABLE PECAS (
-- COD INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
-- NOME VARCHAR (30)  NOT NULL,
-- COR VARCHAR (30)  NOT NULL,
-- PESO NUMERIC (10,2) NOT NULL,
-- CIDADE VARCHAR (30)  NOT NULL
-- ) ;
-- CREATE TABLE FUNCIONARIO (
-- MATRICULA  INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
-- NOME_FUNC VARCHAR (30)  NOT NULL,
-- ANOS_SERVICO INT NOT NULL,
-- SALARIO NUMERIC(20,2)  NOT NULL
-- ) ;
-- INSERT INTO FORNECEDOR(NOME, SITUACAO, CIDADE) VALUES 
-- ('JOÃO','A','SOROCABA');
-- INSERT INTO FORNECEDOR(NOME, SITUACAO, CIDADE) VALUES 
-- ('MARIA','A','CAMPINAS');
-- INSERT INTO FORNECEDOR(NOME, SITUACAO, CIDADE) VALUES 
-- ('BIANCA','I','CAMPINAS');
-- INSERT INTO FORNECEDOR(NOME, SITUACAO, CIDADE) VALUES 
-- ('CARLA','I','SOROCABA');
-- INSERT INTO FORNECEDOR(NOME, SITUACAO, CIDADE) VALUES 
-- ('ISABELA','A','FRANCA');
-- INSERT INTO PECAS(NOME, COR, PESO, CIDADE) VALUES 
-- ('PARAFUSO','RED',12,'SOROCABA');
-- INSERT INTO PECAS(NOME, COR, PESO, CIDADE) VALUES 
-- ('PARAFUSO','VERDE',17,'CAMPINAS');
-- INSERT INTO PECAS(NOME, COR, PESO, CIDADE) VALUES 
-- ('PREGO','AZUL',17,'FRANCA');
-- INSERT INTO PECAS(NOME, COR, PESO, CIDADE) VALUES 
-- ('PREGO','VERMELHO',14,'SOROCABA');
-- INSERT INTO PECAS(NOME, COR, PESO, CIDADE) VALUES 
-- ('MARTELO','AZUL',12,'CAMPINAS');
-- INSERT INTO PECAS(NOME, COR, PESO, CIDADE) VALUES 
-- ('ALICATE','VERMELHO',19,'SOROCABA');
-- INSERT INTO FUNCIONARIO(NOME_FUNC, ANOS_SERVICO, SALARIO) VALUES 
-- ('JOÃO',11,1200);
-- INSERT INTO FUNCIONARIO(NOME_FUNC, ANOS_SERVICO, SALARIO) VALUES 
-- ('JANAINA',5,6200);
-- INSERT INTO FUNCIONARIO(NOME_FUNC, ANOS_SERVICO, SALARIO) VALUES 
-- ('BIANCA',8,3500);
-- INSERT INTO FUNCIONARIO(NOME_FUNC, ANOS_SERVICO, SALARIO) VALUES 
-- ('DENISE',13,1300);
-- INSERT INTO FUNCIONARIO(NOME_FUNC, ANOS_SERVICO, SALARIO) VALUES 
-- ('ANTONIO',15,8200);
-- INSERT INTO FUNCIONARIO(NOME_FUNC, ANOS_SERVICO, SALARIO) VALUES 
-- ('ANITA',4,8000);
-- INSERT INTO FUNCIONARIO(NOME_FUNC, ANOS_SERVICO, SALARIO) VALUES 
-- ('LUCIANA',12,4300);
-- INSERT INTO FUNCIONARIO(NOME_FUNC, ANOS_SERVICO, SALARIO) VALUES 
-- ('FERNANDO',7,9200);
-- INSERT INTO FUNCIONARIO(NOME_FUNC, ANOS_SERVICO, SALARIO) VALUES 
-- ('VIVIANE',1,900);
-- INSERT INTO FUNCIONARIO(NOME_FUNC, ANOS_SERVICO, SALARIO) VALUES 
-- ('MARCOS',1,850);
-- INSERT INTO FUNCIONARIO(NOME_FUNC, ANOS_SERVICO, SALARIO) VALUES 
-- ('MARIA',12,2850);
-- INSERT INTO FUNCIONARIO(NOME_FUNC, ANOS_SERVICO, SALARIO) VALUES 
-- ('AFONSO',15,4500);

SELECT cod,nome,situacao FROM fornecedor;

SELECT cod,nome,situacao FROM fornecedor WHERE cidade LIKE 'Cam%';

SELECT nome, cidade FROM fornecedor WHERE situacao = 'A';

-- EXERCICIO 2

-- Obtenha a quantidade de fornecedores em Campinas.
SELECT cidade, count(*) AS qtd FROM fornecedor WHERE cidade LIKE 'Cam%' GROUP BY cidade;

SELECT cod FROM pecas;

SELECT cod, peso*0.454 AS 'Peso(g)' FROM pecas;