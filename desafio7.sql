CREATE VIEW perfil_artistas AS
SELECT
art.nome_artista AS `artista`,
alb.nome_album AS `album`,
COUNT(user.usuario) AS `seguidores`
FROM SpotifyClone.seguindo AS user
JOIN SpotifyClone.artistas AS art
ON user.artista = art.artista_id
JOIN SpotifyClone.albuns AS alb
ON alb.artista = art.artista_id
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`, `album`;
