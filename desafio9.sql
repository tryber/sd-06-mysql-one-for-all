CREATE PROCEDURE albuns_do_artista(nome_artista VARCHAR(100))
SELECT
  A.nome_artista AS `artista`,
  AB.nome_album AS `album`
FROM SpotifyClone.artista AS A
INNER JOIN SpotifyClone.album AS AB ON A.artista_id = AB.artista_id
WHERE A.nome_artista = nome_artista
ORDER BY album;
