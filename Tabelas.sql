create database Biblioteca
default character set utf8mb4
default collate utf8mb4_general_ci;

CREATE TABLE Autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome_autor VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50)
);

CREATE TABLE Livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    ano_publicacao YEAR,
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);

CREATE TABLE Leitor (
    id_leitor INT AUTO_INCREMENT PRIMARY KEY,
    nome_leitor VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20)
);

CREATE TABLE Emprestimo (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    id_leitor INT,
    id_livro INT,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    FOREIGN KEY (id_leitor) REFERENCES Leitor(id_leitor),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
);