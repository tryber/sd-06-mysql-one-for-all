DROP VIEW IF EXISTS `top_3_artistas`;

CREATE VIEW `top_3_artistas` AS
SELECT
A.nome_artista AS 'artista',
COUNT(S.seguidores) AS 'seguidores'
FROM SpotifyClone.artistas AS A
JOIN SpotifyClone.seguindo_artista AS S ON A.artista_id = S.artista_id
GROUP BY A.artista_id
ORDER BY seguidores DESC, artista
LIMIT 3;
