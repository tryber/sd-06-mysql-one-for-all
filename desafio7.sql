CREATE VIEW  perfil_artistas AS
SELECT a.artista AS `artista`,
alb.album AS `album`,
COUNT(s.id_usuario) AS `seguidores`
FROM SpotifyClone.seguindo_artistas s
INNER JOIN SpotifyClone.artistas a ON a.id_artista = s.id_artista
INNER JOIN SpotifyClone.albuns alb ON alb.id_artista = s.id_artista
GROUP BY alb.id_album
ORDER BY `seguidores` DESC, `artista`, `album`;
