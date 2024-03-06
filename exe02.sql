CREATE DATABASE IF NOT EXISTS db_rh;
USE db_rh;
-- CREATE SCHEMA IF NOT EXISTS rafael_schema;


-- Criei a tabela comissoes seguindo as instruções recomendadas na questão
CREATE TABLE IF NOT EXISTS ecommerce(
  matricula INT auto_increment,
  nome VARCHAR(255) NOT NULL,
  categoria VARCHAR(255) NOT NULL,
  estoque INT NOT NULL,
  preco FLOAT NOT NULL,
  PRIMARY KEY (matricula)
);

-- Vou inserir os dados da questão dentro de "trabalhadores"
INSERT IGNORE INTO ecommerce (nome, categoria, estoque, preco) VALUES
('Shampoo','Cosméticos', '200', 32.00),
('Microondas', 'Eletrodomésticos', '30', 600.00),
('Perfume', 'Cosméticos', '60', 540.00),
('Televisão', 'Eletrodomésticos', '4', 2000.00),
('Panela', 'Utensílios', '87', 200.00),
('Computador', 'Eletrodomésticos', '20', 3000.00),
('Caderno', 'Material Escolar', '300', 30.00),
('Caneta', 'Material Escolar', '1000', 4.00),
('Borracha', 'Material Escolar', '800', 10.00);

SELECT * from ecommerce;

Select * from ecommerce where preco > 500;

Select * from ecommerce where preco < 500;

update ecommerce set estoque = 0 WHERE nome = 'Televisão';