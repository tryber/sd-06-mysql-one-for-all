CREATE VIEW top_3_artistas AS
SELECT A.artista_nome AS 'artista',
COUNT(DISTINCT S.usuario_id) AS 'seguidores'
FROM SpotifyClone.artistas A
INNER JOIN SpotifyClone.seguindo_artista S ON A.artista_id = S.artista_id
GROUP BY A.artista_nome
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
