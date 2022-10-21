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

-- Código e peso, em gramas, de todas as peças.(O peso das partes na tabela PECAS está em libras, 1 libra = 0.454 grama)
SELECT cod, peso*0.454 AS 'Peso(g)' FROM pecas;

-- EXERCICIO 2

-- Obtenha a quantidade de fornecedores em Campinas.
SELECT cidade, count(*) AS qtd FROM fornecedor WHERE cidade LIKE 'Cam%' GROUP BY cidade;

SELECT * FROM fornecedor;
-- Informe a Média do peso das peças da filial de Campinas e Sorocaba.
SELECT cidade, avg(peso) AS media_peso FROM pecas WHERE cidade IN ('CAMPINAS','SOROCABA') GROUP BY cidade;

-- Qual o maior código dos fornecedores ativos? 
SELECT max(cod) AS maior FROM fornecedor WHERE situacao = 'A'; 

-- Qual o peso médio das peças que estão armazenadas em Campinas? 
SELECT avg(peso), cidade FROM pecas WHERE cidade = 'Campinas';

-- Liste o peso máximo das peças agrupadas por cidade. 
SELECT cidade, max(peso) AS maior_peso FROM pecas GROUP BY cidade;

-- Liste a quantidade de cada peça.
select nome, count(*) AS quantidade FROM pecas GROUP BY nome;

-- Liste a quantidade de peça agrupada por cor.
SELECT cor, count(*) AS qtd FROM pecas GROUP BY cor;

-- Liste a média de peso de cada peça
SELECT nome, avg(peso) FROM pecas GROUP BY nome;

-- Liste o maior peso
SELECT max(peso) FROM pecas;

-- Liste o maior peso de cada peça
SELECT nome, max(peso) AS maior_peso FROM pecas GROUP BY nome;

-- Liste o menor peso das peças com cor azul.
SELECT min(peso) AS menor_azul FROM pecas WHERE cor = 'azul';

-- Liste o menor peso agrupada por cor.
SELECT cor, min(peso) AS menor FROM pecas GROUP BY cor;

-- Liste a quantidade de peças por cidade
SELECT cidade, count(*) AS qtd_pecas FROM pecas GROUP BY cidade;

-- Liste a quantidade de cor disponível para cada peça
SELECT nome, count(*) AS qtd FROM pecas GROUP BY nome;

-- Liste a quantidade de fornecedor por cidade
SELECT cidade, count(*) AS qtd FROM fornecedor GROUP BY cidade;


-- EXERCICIOS 3 

-- Listar todos os dados da tabela Funcionários ordenados por matrícula.
SELECT * FROM funcionario GROUP BY matricula;

-- Liste os nomes dos funcionários que tenham entre 10 e 12 anos de serviço (inclusive).
SELECT nome_func, anos_servico FROM funcionario WHERE anos_servico BETWEEN 10 AND 12;

-- Liste o nome, a matrícula e o salário de todas as pessoas cujo salário não esteja entre R$ 1.000,00 e R$ 3.000,00.
SELECT matricula, nome_func, salario FROM funcionario WHERE salario NOT BETWEEN 1000 AND 3000;

-- Liste os nomes dos funcionários com exatamente 5, 8 ou 13 anos de serviço, ou cujo valor de anos de serviço seja nulo.
SELECT nome_func, anos_servico FROM funcionario WHERE anos_servico IN (5,8,13) OR anos_servico IS NULL;

-- Liste os nomes dos funcionários que tenham AN exatamente no terceiro e quarto caractere de seu nome.
SELECT nome_func FROM funcionario WHERE nome_func LIKE '__an%';

-- Liste a matrícula, nome e salário de todas as pessoas em ordem alfabética de nome.
SELECT nome_func, salario, matricula FROM funcionario ORDER BY nome_func;

-- Liste os anos de serviço, matrícula, nome e salário em ordem decrescente de anos de serviço.
SELECT anos_servico, matricula, nome_func, salario FROM funcionario ORDER BY anos_servico desc;

-- Liste matrícula, nome, anos de serviço de todos os funcionários que recebem salários maiores que R$ 2.000,00 ou que possuam matrículas maiores que 30, e que tenham mais de 6 anos de serviço.
SELECT matricula, nome_func, anos_servico, salario FROM funcionario WHERE salario > 2000 OR matricula > 30 AND anos_servico > 6;

-- Liste a matrícula, nome, anos de serviço e salário de todas as pessoas com 4 ou mais anos de serviço ou que ganhem salário superior a R$ 500,00.
SELECT matricula, nome_func, anos_servico, salario FROM funcionario WHERE anos_servico > 4 OR salario > 500;

-- Forneça o número total de funcionários da companhia.
SELECT count(*) AS total_func FROM funcionario;

-- Liste a média salarial por anos de serviço dos funcionários da companhia. Ordenar pelo tempo de serviço.
SELECT anos_servico, avg(salario) AS media FROM funcionario GROUP BY anos_servico ORDER BY anos_servico;

-- Liste para cada número de anos de serviço o número de empregados e seu salário médio, mas apresente somente para aqueles grupos que contenha APENAS UMA PESSOA. Ordenar pelo tempo de serviço.
SELECT anos_servico, count(*) AS num_empregados, avg(salario) AS salario_medio FROM funcionario GROUP BY anos_servico HAVING count(*) = 1 ORDER BY anos_servico;

-- Liste os nomes dos funcionários que tenham AN ou ON no seu nome.
SELECT nome_func FROM funcionario WHERE nome_func LIKE '%an%' OR nome_func LIKE '%on%';