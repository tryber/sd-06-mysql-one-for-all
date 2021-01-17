CREATE VIEW perfil_artistas AS
SELECT a2.artist_name 'artista',
  a.album_name 'album',
(
  SELECT COUNT(f.user_id)
  FROM SpotifyClone.Follow f
  WHERE a.artist_id = f.artist_id
) 'seguidores'
FROM Albums a
  INNER JOIN Artists a2
    ON a2.artist_id = a.artist_id
ORDER BY `seguidores` DESC,
  `artista`, `album`;
