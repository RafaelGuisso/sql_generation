CREATE DATABASE IF NOT EXISTS db_rh;
USE db_rh;
-- CREATE SCHEMA IF NOT EXISTS rafael_schema;


-- Criei a tabela comissoes seguindo as instruções recomendadas na questão
CREATE TABLE IF NOT EXISTS trabalhadores(
  matricula INT,
  nome VARCHAR(255) NOT NULL,
  sexo Char(1) NOT NULL,
  cargo VARCHAR(255) NOT NULL,
  salario FLOAT NOT NULL
);

-- Vou inserir os dados da questão dentro de "trabalhadores"
INSERT IGNORE INTO trabalhadores (matricula, nome, sexo, cargo, salario) VALUES
('1', 'Leonardo','M', 'Gerente', 14000.00),
('2','Bruno', 'M', 'Estagiário', 1400.00),
('3','Matheus', 'M', 'Estagiário', 1400.00),
('4','Marcos', 'M', 'Assistente', 2000.00),
('5','Lucas', 'M', 'Cientista Senior', 12000.00),
('6','Cinthia', 'F', 'Engenheira Pleno', 7000.00),
('7','Maria', 'F', 'Desenvolvedora', 5400.00),
('8','Bia', 'F', 'Analista', 6400.00),
('9','Emily', 'F', 'Engenheira Junior', 3200.00);

SELECT * from trabalhadores;

Select * from trabalhadores where salario > 2000;

Select * from trabalhadores where salario < 2000;

update trabalhadores set salario = 2300 WHERE cargo = 'Assistente';

