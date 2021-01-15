CREATE VIEW perfil_artistas AS
SELECT
a.nome_artista AS `artista`,
b.nome_album AS `album`,
COUNT(c.usuario) AS `seguidores`
FROM SpotifyClone.seguindo AS c
JOIN SpotifyClone.artistas AS a
ON c.artista = a.artista_id
JOIN SpotifyClone.albuns AS b
ON b.artista = a.artista_id
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`, `album`;
