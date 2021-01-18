CREATE PROCEDURE albuns_do_artista (nome_artista VARCHAR(50))
SELECT a.nome AS `artista`, ab.nome AS `album`
FROM artista a
INNER JOIN album ab ON ab.artista_id = a.artista_id
WHERE a.nome = nome_artista
ORDER BY `album`;
