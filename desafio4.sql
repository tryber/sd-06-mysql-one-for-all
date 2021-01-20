CREATE VIEW top_3_artistas AS
SELECT
artista.nome_artista AS "artista",
COUNT(usuario.nome_usuario) AS "seguidores"
FROM SpotifyClone.segue_artistas AS segue
INNER JOIN SpotifyClone.artista AS artista
ON segue.artista_id = artista.artista_id
INNER JOIN SpotifyClone.usuario AS usuario
ON segue.usuario_id = usuario.usuario_id
GROUP BY `artista`
ORDER BY
`seguidores` DESC,
`artista`
LIMIT 3;
