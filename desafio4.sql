CREATE VIEW top_3_artistas AS
SELECT
  A.nome_artista AS `artista`,
  COUNT(S.usuario_id) AS `seguidores`
FROM SpotifyClone.seguidor AS S
INNER JOIN SpotifyClone.artista AS A ON S.artista_id = A.artista_id
GROUP BY S.artista_id
ORDER BY seguidores DESC, artista
LIMIT 3;
