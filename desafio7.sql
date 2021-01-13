CREATE VIEW  perfil_artistas AS
SELECT at.artista AS `artista`,
ab.album AS `album`,
COUNT(s.usuario_id) AS `seguidores`
FROM SpotifyClone.seguindo_artistas s
INNER JOIN SpotifyClone.artista at ON at.artista_id=s.artista_id
INNER JOIN SpotifyClone.album ab ON ab.artista_id=s.artista_id
GROUP BY ab.album_id
ORDER BY `seguidores` DESC, `artista`, `album`;
