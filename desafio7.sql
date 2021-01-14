CREATE VIEW perfil_artistas AS
SELECT
art.artista AS `artista`,
alb.album AS `album`,
(
SELECT COUNT(*) FROM artistas_seguidos AS a
WHERE a.artista_id = art.artista_id
) AS `seguidores`
FROM artistas AS art
INNER JOIN albuns AS alb ON art.artista_id = alb.artista_id
ORDER BY `seguidores` DESC, `artista`, `album`;
