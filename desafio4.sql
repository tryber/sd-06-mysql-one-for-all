CREATE VIEW top_3_artistas AS
SELECT
  artist.artist_name AS artista,
  COUNT(artist_following.user_id) AS seguidores
FROM
  artist_following
  INNER JOIN artist ON artist.id = artist_following.artist_id
GROUP BY
  artist.artist_name
ORDER BY
  seguidores desc,
  artista
LIMIT
  3;
