CREATE VIEW perfil_artistas AS 
SELECT A.artista_nome AS `artista`,
B.album AS `album`,
COUNT(SA.usuario_id) AS `seguidores`
FROM SpotifyClone.artistas AS A

INNER JOIN SpotifyClone.seguindo_artistas AS SA
ON SA.artista_id = A.artista_id

INNER JOIN SpotifyClone.albuns AS B
ON A.artista_id = B.artista_id
GROUP BY SA.artista_id, B.album_id
ORDER BY `seguidores` DESC, `artista`, `album`;
