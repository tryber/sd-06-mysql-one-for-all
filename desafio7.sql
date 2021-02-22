CREATE VIEW perfil_artistas AS
SELECT
  A.nome_artista AS `artista`,
  AB.nome_album AS `album`,
  COUNT(S.usuario_id) AS `seguidores`
FROM SpotifyClone.album AS AB
INNER JOIN SpotifyClone.artista AS A ON AB.artista_id = A.artista_id
INNER JOIN SpotifyClone.seguidor AS S ON A.artista_id = S.artista_id
GROUP BY AB.album_id
ORDER BY seguidores DESC, artista, album;
