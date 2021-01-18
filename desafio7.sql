CREATE VIEW perfil_artistas AS
SELECT a.nome AS `artista`,
ab.nome AS `album`,
COUNT(sa.usuario_id) AS `seguidores`
FROM SpotifyClone.artista a
INNER JOIN album ab ON ab.artista_id = a.artista_id
INNER JOIN SpotifyClone.seguidor_artista sa ON sa.artista_id = a.artista_id
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`, `album`;
