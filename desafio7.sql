CREATE VIEW perfil_artistas AS
SELECT
artista.nome_artista AS "artista",
album.nome_album AS "album",
(SELECT
COUNT(segue.usuario_id)
FROM SpotifyClone.segue_artistas AS segue
WHERE segue.artista_id = artista.artista_id
) AS "seguidores"
FROM SpotifyClone.album AS album
INNER JOIN SpotifyClone.artista AS artista
ON album.artista_id = artista.artista_id
ORDER BY
`seguidores` DESC,
`artista`,
`album`;
