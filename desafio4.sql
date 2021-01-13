CREATE VIEW top_3_artistas AS
SELECT
  a.artist AS `artista`,
  COUNT(f.user_id) AS `seguidores`
FROM
  `SpotifyClone`.`artists` AS `a`
INNER JOIN
  `SpotifyClone`.`followers` AS `f` ON f.artist_id = a.id
GROUP BY
  `artista`
ORDER BY
  `seguidores` DESC,
  `artista` ASC
LIMIT 3;
