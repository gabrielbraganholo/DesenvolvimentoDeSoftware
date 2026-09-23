CREATE DATABASE Escola;

USE Escola;

CREATE TABLE aluno
(
	id int auto_increment PRIMARY KEY,
    nome varchar(50) NOT NULL,
    idade int NOT NULL,
    curso varchar(50) NOT NULL
);

INSERT INTO aluno (nome, idade, curso)
VALUES
('João Silva', 20, 'Sistemas de Informação'),
('Maria Souza', 22, 'Engenharia de Software'),
('Carlos Oliveira', 19, 'Ciência da Computação'),
('Ana Costa', 21, 'Análise de Sistemas'),
('Pedro Santos', 23, 'Sistemas de Informação');

SELECT *
FROM aluno;

CREATE TABLE professor
(
	id int auto_increment PRIMARY KEY,
    nome varchar(50) NOT NULL,
    idade int NOT NULL,
    disciplina varchar(50) NOT NULL
);

INSERT INTO professor (nome, idade, disciplina)
VALUES
('Marcos Almeida', 45, 'Banco de Dados'),
('Juliana Ferreira', 38, 'Programação'),
('Ricardo Martins', 52, 'Engenharia de Software');

CREATE TABLE matricula
(
	id int auto_increment PRIMARY KEY,
    id_aluno int,
    id_professor int,
    data_matricula date,
    
    FOREIGN KEY (id_aluno) references aluno(id),
    FOREIGN KEY (id_professor) references professor(id)
);

desc matricula;

INSERT INTO matricula(id_aluno, id_professor, data_matricula)
VALUES
	(1, 1, '2026-09-01'),
	(2, 2, '2026-09-02'),
	(3, 3, '2026-09-03'),
	(4, 1, '2026-09-04'),
	(5, 2, '2026-09-05');
    
    
SELECT *
FROM matricula;