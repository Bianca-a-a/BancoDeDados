INSERT INTO Autor (nome_autor, nacionalidade) VALUES
('Machado de Assis', 'Brasileiro'),
('J.K. Rowling', 'Britânica'),
('George Orwell', 'Britânico'),
('Gabriel García Márquez', 'Colombiano');

INSERT INTO Livro (titulo, ano_publicacao, id_autor) VALUES
('Memórias Póstumas de Brás Cubas', 1901, 1),
('Harry Potter e a Pedra Filosofal', 1997, 2),
('1984', 1949, 3),
('O Velho e o Mar', 1952, 3), 
('Cem Anos de Solidão', 1967, 4);

INSERT INTO Leitor (nome_leitor, email, telefone) VALUES
('João da Silva', 'joao.silva@email.com', '11987654321'),
('Maria Souza', 'maria.souza@email.com', '21912345678'),
('Pedro Oliveira', 'pedro.oliveira@email.com', '31955554444');

INSERT INTO Emprestimo (id_leitor, id_livro, data_emprestimo, data_devolucao) VALUES
(1, 2, '2025-07-01', '2025-07-15'),
(2, 1, '2025-07-05', NULL), 
(3, 3, '2025-07-10', '2025-07-20'),
(1, 5, '2025-07-12', NULL);