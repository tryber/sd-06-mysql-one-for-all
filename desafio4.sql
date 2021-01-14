CREATE VIEW top_3_artistas AS SELECT a.nome AS `artista`, COUNT(u.usuario_id) AS `seguidores`
FROM SpotifyClone.artistas_seguidos AS seguidos
JOIN SpotifyClone.usuarios AS u ON seguidos.usuario_id = u.usuario_id
JOIN SpotifyClone.artistas AS a ON a.artista_id = seguidos.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
