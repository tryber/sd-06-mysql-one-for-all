CREATE VIEW top_3_artistas AS
SELECT
  (ar.artist_name) AS "artista",
  COUNT(fa.user_id) AS "seguidores"
FROM
  SpotifyClone.artists AS ar
    INNER JOIN SpotifyClone.followed_artists AS fa
    ON ar.artist_id = fa.artist_id
GROUP BY `artista`
ORDER BY
  `seguidores` DESC,
  `artista` ASC
LIMIT 3;