CREATE VIEW top_3_artistas 
AS SELECT SpotifyClone.artists.artist_name AS artista,
COUNT(SpotifyClone.artists.artist_id) AS seguidores FROM follows JOIN artists ON SpotifyClone.artists.artist_id = SpotifyClone.follows.artist_id GROUP BY SpotifyClone.artists.artist_name ORDER BY seguidores DESC, artista ASC
LIMIT 3;