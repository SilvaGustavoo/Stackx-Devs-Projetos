-- CREATE DATABASE bancodeteste;
-- USE bancodeteste;

-------------------------------------------------------------------------------------------------------------------

--  CREATE TABLE pacientes (
-- 	ID int auto_increment primary key NOT NULL,
--     NOME varchar(100) NOT NULL,
--     CPF varchar(15) NOT NULL,
--     IDADE int NOT NULL
-- );

-- INSERT INTO pacientes(nome, cpf, idade) value ('Gustavo Santos Silva', '222.222.222-22', 20);
-- INSERT INTO pacientes(nome, cpf, idade) value ('Renata Ingrata', '000.000.000-00', 25);

-----------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE medicos (
-- 	ID int auto_increment primary key NOT NULL,
--     NOME varchar(100) NOT NULL,
--     CPF varchar(15) NOT NULL,
--     IDADE int NOT NULL,
--     CIDADE varchar(50) NOT NULL,
--     ESPECIALIDADE varchar(30) NOT NULL
-- );

-- INSERT INTO medicos(nome,cpf,idade,cidade,especialidade) VALUE ('Ricardo Sousa', '444.222.333-25', 35, 'São Paulo', 'Ortopedista');
-- INSERT INTO medicos(nome,cpf,idade,cidade,especialidade) VALUE ('Ronaldinho Gaúcho', '111.112.113-15', 42, 'São Paulo', 'Cardiologista');
-- INSERT INTO medicos(nome,cpf,idade,cidade,especialidade) VALUE ('Neymar Junior', '322.546.154-25', 31, 'São Paulo', 'Clínico Geral');

-----------------------------------------------------------------------------------------------------------------------

-- CREATE TABLE empregados (
-- 	ID int auto_increment primary key NOT NULL,
--     NOME varchar(80) NOT NULL,
--     IDADE int NOT NULL,
--     DEPTO varchar(80) NOT NULL,
--     SALARIO float NOT NULL,
--     CPF varchar(80) NOT NULL
-- )

-- INSERT INTO empregados(nome,idade,depto,salario,cpf) VALUE ('Gustavinho Sambanope', 25, 'Limpeza', 1255.32, '468.452.253-56');
-- INSERT INTO empregados(nome,idade,depto,salario,cpf) VALUE ('Samanta da Nimim', 25, 'Limpeza', 1255.32, '665.251.256-27');
-- INSERT INTO empregados(nome,idade,depto,salario,cpf) VALUE ('Kleber Ribeirão', 45, 'Segurança', 2055.32, '012.256.159-09');

-- SELECT nome, salario *12 as SalarioAnual FROM empregados
-- SELECT DISTINCT cidade FROM medicos // Não aparece informações duplicadas

-- SELECT nome, salario FROM empregados WHERE salario IS NULL
-- SELECT nome, salario FROM empregados WHERE salario BETWEEN 3000 AND 5000
-- SELECT * FROM empregados WHERE depto IN ("Limpeza", "Administrativo")

-- SELECT * FROM medicos WHERE especialidade = 'Ortopedista' or especialidade = 'Cardiologista'

-- LIKE A PALAVRA RESERVADA USADA PARA PESQUISAS

-- SELECT nome, salario FROM empregados WHERE nome NOT LIKE '%b%';
-- SELECT nome, cpf FROM empregados WHERE depto = 'limpeza' AND nome LIKE '%a%';

-- SELECT * FROM medicos WHERE nome LIKE 'N_____ %'
-- SELECT nome, salario FROM empregados WHERE salario > 0 ORDER BY salario ASC;
-- SELECT nome, salario FROM empregados WHERE salario > 0 ORDER BY salario DESC;
-- SELECT nome, salario FROM empregados ORDER BY nome DESC;

-- SELECT * FROM medicos;
-- SELECT * FROM medicos WHERE (especialidade = 'Ortopedista' OR especialidade = 'Cardiologista') AND idade < 40;
-- SELECT * FROM medicos WHERE especialidade IN ('Ortopedista', 'Cardiologista') AND idade < 40;




