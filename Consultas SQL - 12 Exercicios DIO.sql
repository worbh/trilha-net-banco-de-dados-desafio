--1
SELECT
Nome, Ano
FROM Filmes

--2

SELECT * FROM Filmes ORDER BY Ano

--3

SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE NOME = 'De Volta Para o Futuro'

--4

SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997

--5

SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000

--6

SELECT
Nome, Ano, Duracao
From Filmes
Where Duracao > 100 AND Duracao <150 
ORDER BY Duracao ASC

--7

SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

--8
SELECT 
Id, PrimeiroNome,UltimoNome, Genero
FROM Atores
Where Genero = 'M'

--9

SELECT 
Id, PrimeiroNome,UltimoNome, Genero
FROM Atores
Where Genero = 'F'
ORDER BY PrimeiroNome ASC

--10

SELECT Filmes.Nome AS NomeFilme, Generos.Genero AS NomeGenero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

-- 11

SELECT Filmes.Nome AS NomeFilme, Generos.Genero AS NomeGenero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

--12

SELECT Filmes.Nome AS NomeFilme, Atores.PrimeiroNome AS PrimeiroNome, Atores.UltimoNome AS UltimoNome, ElencoFilme.Papel AS Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;
