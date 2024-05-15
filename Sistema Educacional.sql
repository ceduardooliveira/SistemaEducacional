--Comandos DDL (Data Definition Language) para criar as tabelas

-- Tabela Aluno
CREATE TABLE Aluno (
    ID_Aluno INT PRIMARY KEY,
    Nome VARCHAR(100),
    CPF VARCHAR(11),
    Idade INT,
    Endereco VARCHAR(255),
    Contato VARCHAR(20),
    RA VARCHAR(10)
);

-- Tabela Curso
CREATE TABLE Curso (
    ID_Curso INT PRIMARY KEY,
    Nome VARCHAR(100),
    ID_Departamento INT,
    FOREIGN KEY (ID_Departamento) REFERENCES Departamento(ID_Departamento)
);

-- Tabela Departamento
CREATE TABLE Departamento (
    ID_Departamento INT PRIMARY KEY,
    Nome VARCHAR(100)
);

-- Tabela Disciplina
CREATE TABLE Disciplina (
    ID_Disciplina INT PRIMARY KEY,
    Nome VARCHAR(100),
    ID_Curso INT,
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
);

-- Tabela Matricula
CREATE TABLE Matricula (
    ID_Matricula INT PRIMARY KEY,
    ID_Aluno INT,
    ID_Curso INT,
    Semestre VARCHAR(20),
    FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID_Aluno),
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
);

-- Tabela GradeCurricular
CREATE TABLE GradeCurricular (
    ID_Grade INT PRIMARY KEY,
    ID_Aluno INT,
    ID_Curso INT,
    ID_Disciplina INT,
    Semestre VARCHAR(20),
    Nota FLOAT,
    FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID_Aluno),
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso),
    FOREIGN KEY (ID_Disciplina) REFERENCES Disciplina(ID_Disciplina)
);

-- Tabela ColacaoGrau
CREATE TABLE ColacaoGrau (
    ID_Colacao INT PRIMARY KEY,
    ID_Aluno INT,
    ID_Curso INT,
    Data_Colacao DATE,
    FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID_Aluno),
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
);

--===============================================--===============================================--
--===============================================--===============================================--
--===============================================--===============================================--
--===============================================--===============================================--

---- Comandos DML (Data Manipulation Language) para inserir dados nas tabelas
-- Povoando a tabela Aluno


INSERT INTO Aluno (ID_Aluno, Nome, CPF, Idade, Endereco, Contato, RA)
VALUES
    (1, 'João Silva', '12345678901', 20, 'Rua A, 123', 'joao@example.com', '12345'),
    (2, 'Maria Oliveira', '23456789012', 22, 'Rua B, 456', 'maria@example.com', '23456'),
    (3, 'Pedro Santos', '34567890123', 21, 'Rua C, 789', 'pedro@example.com', '34567'),
    (4, 'Ana Souza', '45678901234', 23, 'Rua D, 1011', 'ana@example.com', '45678'),
    (5, 'Lucas Pereira', '56789012345', 24, 'Rua E, 1213', 'lucas@example.com', '56789'),
    (6, 'Carla Lima', '67890123456', 20, 'Rua F, 1415', 'carla@example.com', '67890'),
    (7, 'Gabriel Costa', '78901234567', 22, 'Rua G, 1617', 'gabriel@example.com', '78901'),
    (8, 'Juliana Fernandes', '89012345678', 21, 'Rua H, 1819', 'juliana@example.com', '89012'),
    (9, 'Rafaela Carvalho', '90123456789', 23, 'Rua I, 2021', 'rafaela@example.com', '90123'),
    (10, 'Fernando Almeida', '01234567890', 24, 'Rua J, 2223', 'fernando@example.com', '01234');
	
-- Consultando valores da tabela.	
SELECT * FROM Aluno


-- Povoando a tabela Curso
INSERT INTO Curso (ID_Curso, Nome, ID_Departamento)
VALUES
    (1, 'Engenharia Civil', 1),
    (2, 'Administração', 2),
    (3, 'Ciência da Computação', 3),
    (4, 'Medicina', 4),
    (5, 'Letras', 5),
    (6, 'Direito', 6),
    (7, 'Economia', 7),
    (8, 'Psicologia', 8),
    (9, 'Biologia', 9),
    (10, 'Educação Física', 10);
	
-- Consultando valores da tabela.	
SELECT * FROM Curso	

-- Povoando a tabela Departamento
INSERT INTO Departamento (ID_Departamento, Nome)
VALUES
    (1, 'Engenharia'),
    (2, 'Administração'),
    (3, 'Informática'),
    (4, 'Medicina'),
    (5, 'Letras'),
    (6, 'Direito'),
    (7, 'Economia'),
    (8, 'Psicologia'),
    (9, 'Biologia'),
    (10, 'Educação Física');
	
-- Consultando valores da tabela.	
SELECT * FROM Departamento	
	

-- Povoando a tabela Disciplina
INSERT INTO Disciplina (ID_Disciplina, Nome, ID_Curso)
VALUES
    (1, 'Cálculo I', 1),
    (2, 'Gestão Empresarial', 2),
    (3, 'Algoritmos e Estruturas de Dados', 3),
    (4, 'Anatomia', 4),
    (5, 'Literatura Brasileira', 5),
    (6, 'Direito Constitucional', 6),
    (7, 'Microeconomia', 7),
    (8, 'Psicologia Organizacional', 8),
    (9, 'Biologia Celular', 9),
    (10, 'Fisiologia do Exercício', 10);
	
-- Consultando valores da tabela.	
SELECT * FROM Disciplina	

-- Povoando a tabela Matricula
INSERT INTO Matricula (ID_Matricula, ID_Aluno, ID_Curso, Semestre)
VALUES
    (1, 1, 1, '2023/1'),
    (2, 2, 2, '2022/2'),
    (3, 3, 3, '2023/1'),
    (4, 4, 4, '2022/2'),
    (5, 5, 5, '2023/1'),
    (6, 6, 6, '2022/2'),
    (7, 7, 7, '2023/1'),
    (8, 8, 8, '2022/2'),
    (9, 9, 9, '2023/1'),
    (10, 10, 10, '2022/2');
	
-- Consultando valores da tabela.	
SELECT * FROM Matricula	

-- Povoando a tabela GradeCurricular
INSERT INTO GradeCurricular (ID_Grade, ID_Aluno, ID_Curso, ID_Disciplina, Semestre, Nota)
VALUES
    (1, 1, 1, 1, '2023/1', 8.5),
    (2, 2, 2, 2, '2022/2', 7.0),
    (3, 3, 3, 3, '2023/1', 9.0),
    (4, 4, 4, 4, '2022/2', 8.0),
    (5, 5, 5, 5, '2023/1', 7.5),
    (6, 6, 6, 6, '2022/2', 8.5),
    (7, 7, 7, 7, '2023/1', 9.5),
    (8, 8, 8, 8, '2022/2', 9.0),
    (9, 9, 9, 9, '2023/1', 8.0),
    (10, 10, 10, 10, '2022/2', 7.0);
	
-- Consultando valores da tabela.	
SELECT * FROM GradeCurricular	

-- Povoando a tabela ColacaoGrau
INSERT INTO ColacaoGrau (ID_Colacao, ID_Aluno, ID_Curso, Data_Colacao)
VALUES
    (1, 1, 1, '2023-12-15'),
    (2, 2, 2, '2023-06-30'),
    (3, 3, 3, '2024-01-20'),
    (4, 4, 4, '2023-07-25'),
    (5, 5, 5, '2024-02-18'),
    (6, 6, 6, '2023-08-10'),
    (7, 7, 7, '2024-03-05'),
    (8, 8, 8, '2023-08-30'),
    (9, 9, 9, '2024-04-10'),
    (10, 10, 10, '2023-09-20');

-- Consultando valores da tabela.	
SELECT * FROM ColacaoGrau


--===============================================--===============================================--
--===============================================--===============================================--
--===============================================--===============================================--
--===============================================--===============================================--

-- Comandos DQL (Data Query Language)

-- Dado o RA ou o Nome do Aluno, buscar no BD todos os demais dados do aluno.
SELECT * FROM Aluno WHERE RA = '12345' OR Nome = 'João Silva';
--Esta query seleciona todos os campos da tabela "Aluno" onde o RA seja '12345' OU o Nome seja 'João Silva'.

-- Dado o nome de um departamento, exibir o nome de todos os cursos associados a ele.
SELECT Curso.Nome FROM Curso
INNER JOIN Departamento ON Curso.ID_Departamento = Departamento.ID_Departamento
WHERE Departamento.Nome = 'Engenharia';
--Esta query seleciona o nome dos cursos da tabela "Curso" que estão associados ao departamento de Engenharia,
--através de um INNER JOIN com a tabela "Departamento".

-- Dado o nome de uma disciplina, exibir a qual ou quais cursos ela pertence.
SELECT Curso.Nome FROM Curso
INNER JOIN Disciplina ON Curso.ID_Curso = Disciplina.ID_Curso
WHERE Disciplina.Nome = 'Cálculo I';
--Esta query seleciona o nome dos cursos da tabela "Curso" que possuem disciplinas com o nome 'Cálculo I',
--através de um INNER JOIN com a tabela "Disciplina".

-- Dado o CPF de um aluno, exibir quais disciplinas ele está cursando.
SELECT Disciplina.Nome FROM Disciplina
INNER JOIN GradeCurricular ON Disciplina.ID_Disciplina = GradeCurricular.ID_Disciplina
INNER JOIN Aluno ON GradeCurricular.ID_Aluno = Aluno.ID_Aluno
WHERE Aluno.CPF = '12345678901';
--Esta query seleciona o nome das disciplinas da tabela "Disciplina" que estão sendo cursadas por um aluno com CPF '12345678901', 
--através de INNER JOINs com as tabelas "GradeCurricular" e "Aluno".

-- Filtrar todos os alunos matriculados em um determinado curso.
SELECT Aluno.* FROM Aluno
INNER JOIN Matricula ON Aluno.ID_Aluno = Matricula.ID_Aluno
INNER JOIN Curso ON Matricula.ID_Curso = Curso.ID_Curso
WHERE Curso.Nome = 'Engenharia Civil';

-- Filtrar todos os alunos matriculados em determinada disciplina.
SELECT Aluno.* FROM Aluno
INNER JOIN GradeCurricular ON Aluno.ID_Aluno = GradeCurricular.ID_Aluno
INNER JOIN Disciplina ON GradeCurricular.ID_Disciplina = Disciplina.ID_Disciplina
WHERE Disciplina.Nome = 'Cálculo I';

-- Filtrar alunos formados.
SELECT Aluno.* FROM Aluno
INNER JOIN ColacaoGrau ON Aluno.ID_Aluno = ColacaoGrau.ID_Aluno;

-- Filtrar alunos ativos.
SELECT Aluno.* FROM Aluno
LEFT JOIN ColacaoGrau ON Aluno.ID_Aluno = ColacaoGrau.ID_Aluno
WHERE ColacaoGrau.ID_Aluno IS NULL;

-- Apresentar a quantidade de alunos ativos por curso.
SELECT Curso.Nome, COUNT(Aluno.ID_Aluno) AS Quantidade_Alunos_Ativos FROM Curso
LEFT JOIN Matricula ON Curso.ID_Curso = Matricula.ID_Curso
LEFT JOIN Aluno ON Matricula.ID_Aluno = Aluno.ID_Aluno
LEFT JOIN ColacaoGrau ON Aluno.ID_Aluno = ColacaoGrau.ID_Aluno
WHERE ColacaoGrau.ID_Aluno IS NULL
GROUP BY Curso.Nome;

-- essa faz a mesma funcionalidade que a de baixo, o que muda é que estamos filtrando as informações 
-- da tabela curso

-- Apresentar a quantidade de alunos ativos por disciplina.
SELECT Disciplina.Nome, COUNT(Aluno.ID_Aluno) AS Quantidade_Alunos_Ativos FROM Disciplina
LEFT JOIN GradeCurricular ON Disciplina.ID_Disciplina = GradeCurricular.ID_Disciplina
LEFT JOIN Aluno ON GradeCurricular.ID_Aluno = Aluno.ID_Aluno
LEFT JOIN ColacaoGrau ON Aluno.ID_Aluno = ColacaoGrau.ID_Aluno
WHERE ColacaoGrau.ID_Aluno IS NULL
GROUP BY Disciplina.Nome;

--Nesta parte, estamos selecionando o nome da disciplina da tabela "Disciplina" e contando o número de alunos ativos..
--Esta unindo as tabelas "Disciplina", "GradeCurricular", "Aluno" e "ColacaoGrau" usando LEFT JOIN para garantir que todas 
--as disciplinas sejam incluídas, mesmo que não haja alunos ativos nelas. o comando WHERE filtra apenas os alunos que ainda não se formaram.
-- e faz o agrupamento dos resultados pelo nome da disciplina para garantir que tenhamos um resultado por disciplina
--e não por aluno individualmente.