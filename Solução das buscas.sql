-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crecente pelo ano
SELECT Nome, Ano FROM Filmes ORDER BY Ano DESC;

-- 3 - Buscar pelo filme de volta para o foturo, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao 
From Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150 ordenado pela duracao em ordem crescente
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao BETWEEN 101 AND 149
ORDER BY Duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, Count(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero
SELECT f.Nome, g.Genero
From FilmesGenero fg
INNER JOIN Filmes f ON f.Id = fg.IdFilme
INNER JOIN Generos g ON g.Id = fg.IdGenero;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome, g.Genero
From FilmesGenero fg
INNER JOIN Filmes f ON f.Id = fg.IdFilme
INNER JOIN Generos g ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério';

SELECT * FROM Atores;
SELECT * FROM Filmes;
SELECT * FROM ElencoFilme;

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM ElencoFilme ef
INNER JOIN Filmes f ON f.Id = ef.IdFilme
INNER JOIN Atores a ON a.Id = ef.IdAtor;
