CREATE VIEW perfil_artistas AS
SELECT
  artist.artist_name AS artista,
  album.album_title AS album,
  COUNT(artist_following.user_id) AS seguidores
FROM
  artist
  INNER JOIN album ON artist.id = album.artist_id
  INNER JOIN artist_following ON album.artist_id = artist_following.artist_id
GROUP BY
  artista,
  album
ORDER BY
  seguidores DESC,
  artista,
  album;
