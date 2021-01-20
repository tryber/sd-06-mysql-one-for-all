CREATE VIEW top_3_artistas AS
SELECT
A.nome_artista AS 'artista',
COUNT(S.usuario_id) AS 'seguidores'
FROM SpotifyClone.seguindo_artista AS S
INNER JOIN SpotifyClone.artista AS A
ON A.artista_id = S.artista_id
GROUP BY S.artista_id
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
