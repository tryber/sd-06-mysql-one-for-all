USE SpotifyClone;
CREATE VIEW top_3_artistas AS
SELECT ARTISTAS.nome AS "artista",
COUNT(SEGUIDORES.usuario_id) AS "seguidores"
FROM artistas AS ARTISTAS, seguidores AS SEGUIDORES
WHERE ARTISTAS.artista_id = SEGUIDORES.artista_id
GROUP BY `artista` ORDER BY `seguidores` DESC, `artista` LIMIT 3;