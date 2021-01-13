CREATE VIEW perfil_artistas AS 
SELECT a.nome `artista`, ab.nome `album`, COUNT(seguidos.usuario_id) `seguidores`
FROM SpotifyClone.albuns AS ab
JOIN SpotifyClone.artistas AS a ON ab.artista_id = a.artista_id
JOIN SpotifyClone.artistas_seguidos AS seguidos ON seguidos.artista_id = a.artista_id
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`, `album`;
