USE db_rh;
-- CREATE SCHEMA IF NOT EXISTS rafael_schema;


-- Criei a tabela comissoes seguindo as instruções recomendadas na questão
CREATE TABLE IF NOT EXISTS alunos(
  matricula INT auto_increment,
  nome VARCHAR(255) NOT NULL,
  sobrenome VARCHAR(255) NOT NULL,
  idade INT NOT NULL,
  nota FLOAT NOT NULL,
  id_turma INT NOT NULL,
  PRIMARY KEY (matricula),
  FOREIGN KEY (id_turma) references turma(id_turma)
) AUTO_INCREMENT=1000;

-- Vou inserir os dados da questão dentro de "trabalhadores"
INSERT IGNORE INTO alunos (nome, sobrenome, idade, nota, id_turma) VALUES
('João','Alves', '9', 7.8, 1),
('Luciana', 'Almeida', '8', 6, 2),
('Yago', 'Santos', '10', 7, 4),
('Carlos', 'Ferreira', '9', 9.1, 3),
('Pamela', 'Mndes', '8', 6.8, 2),
('Sandra', 'Alcantara', '10', 7.2, 5),
('Rafael', 'Gomes', '9', 8, 1),
('Leandro', 'Ferreira', '9', 4.9, 3),
('Gabriel', 'Santos', '9', 10.00, 4);


CREATE TABLE IF NOT EXISTS turma(
  id_turma INT auto_increment,
  serie INT NOT NULL,
  letra CHAR(1) NOT NULL,
  ano INT NOT NULL,
  PRIMARY KEY (id_turma)
);

INSERT IGNORE INTO turma (serie, letra, ano) VALUES
('3','A', '2022'),
('3', 'B', '2022'),
('3', 'A', '2023'),
('3', 'B', '2023'),
('4', 'A', '2022');

SELECT * from turma;
SELECT * from alunos;

drop table turma;
drop table alunos;

Select nome, nota from alunos where nota > 7;

Select nome, nota from alunos where nota < 7;

SELECT *
FROM alunos
INNER JOIN turma ON alunos.id_turma = turma.id_turma;

