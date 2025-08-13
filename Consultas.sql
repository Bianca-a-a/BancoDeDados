
SELECT L.titulo, A.nome_autor
FROM Livro AS L
JOIN Autor AS A ON L.id_autor = A.id_autor;

SELECT L.titulo, Le.nome_leitor, E.data_emprestimo
FROM Emprestimo AS E
JOIN Livro AS L ON E.id_livro = L.id_livro
JOIN Leitor AS Le ON E.id_leitor = Le.id_leitor
WHERE E.data_devolucao IS NULL;

SELECT A.nome_autor, COUNT(L.id_livro) AS total_livros
FROM Autor AS A
LEFT JOIN Livro AS L ON A.id_autor = L.id_autor
GROUP BY A.nome_autor
ORDER BY total_livros DESC;

SELECT Le.nome_leitor, E.data_emprestimo
FROM Emprestimo AS E
JOIN Livro AS L ON E.id_livro = L.id_livro
JOIN Leitor AS Le ON E.id_leitor = Le.id_leitor
WHERE L.titulo = '1984';

SELECT Le.nome_leitor, COUNT(E.id_emprestimo) AS total_emprestimos
FROM Emprestimo AS E
JOIN Leitor AS Le ON E.id_leitor = Le.id_leitor
GROUP BY Le.nome_leitor
ORDER BY total_emprestimos DESC
LIMIT 1;

SELECT L.titulo, A.nome_autor, Le.nome_leitor, E.data_emprestimo, E.data_devolucao
FROM Emprestimo AS E
JOIN Livro AS L ON E.id_livro = L.id_livro
JOIN Autor AS A ON L.id_autor = A.id_autor
JOIN Leitor AS Le ON E.id_leitor = Le.id_leitor;

