CREATE VIEW top_3_artistas AS
SELECT a.artist_name 'artista',
(
  SELECT COUNT(f.user_id)
  FROM SpotifyClone.Follow f
  WHERE a.artist_id = f.artist_id 
) 'seguidores'
FROM SpotifyClone.Artists a
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
