-- Criar um banco de dados para a faculdade
CREATE DATABASE Faculdade;

-- Usar o banco de dados criado
USE Faculdade;

-- Criar a tabela Curso
CREATE TABLE Curso (
    id INT AUTO_INCREMENT PRIMARY KEY, -- ID gerado automaticamente
    nome VARCHAR(100) NOT NULL,        -- Nome do curso
    carga_horaria INT NOT NULL,        -- Carga horária do curso
    departamento VARCHAR(100) NOT NULL -- Departamento do curso
);

-- Criar a tabela Professor
CREATE TABLE Professor (
    id INT AUTO_INCREMENT PRIMARY KEY, -- ID gerado automaticamente
    nome VARCHAR(100) NOT NULL,        -- Nome do professor
    especializacao VARCHAR(100) NOT NULL, -- Especialização do professor
    departamento VARCHAR(100) NOT NULL  -- Departamento do professor
);

-- Criar a tabela Aluno
CREATE TABLE Aluno (
    id INT AUTO_INCREMENT PRIMARY KEY, -- ID gerado automaticamente
    nome VARCHAR(100) NOT NULL,        -- Nome do aluno
    data_nascimento DATE NOT NULL,     -- Data de nascimento do aluno
    endereco VARCHAR(150),             -- Endereço do aluno
    curso_id INT,                      -- Chave estrangeira para o curso
    FOREIGN KEY (curso_id) REFERENCES Curso(id) -- Relacionamento com a tabela Curso
);

-- Criar a tabela Materia
CREATE TABLE Materia (
    id INT AUTO_INCREMENT PRIMARY KEY, -- ID gerado automaticamente
    nome VARCHAR(100) NOT NULL,        -- Nome da matéria
    carga_horaria INT NOT NULL,        -- Carga horária da matéria
    curso_id INT,                      -- Chave estrangeira para o curso
    professor_id INT,                  -- Chave estrangeira para o professor
    FOREIGN KEY (curso_id) REFERENCES Curso(id), -- Relacionamento com a tabela Curso
    FOREIGN KEY (professor_id) REFERENCES Professor(id) -- Relacionamento com a tabela Professor
);
