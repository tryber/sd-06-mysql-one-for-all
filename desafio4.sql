CREATE VIEW top_3_artistas AS
SELECT SpotifyClone.artist.artist_name AS artista,
COUNT(SpotifyClone.artist.artist_id) AS seguidores
FROM follow
INNER JOIN artist
ON SpotifyClone.artist.artist_id = SpotifyClone.follow.artist_id
GROUP BY SpotifyClone.artist.artist_name
ORDER BY seguidores DESC, artista ASC
LIMIT 3;
