CREATE VIEW perfil_artistas AS
SELECT SpotifyClone.artists.artist_name AS artista,
SpotifyClone.albuns.album_name AS album,
COUNT(SpotifyClone.artists.artist_id) AS seguidores
FROM follows
JOIN artists
ON SpotifyClone.artists.artist_id = SpotifyClone.follows.artist_id
JOIN albuns
ON SpotifyClone.artists.artist_id = SpotifyClone.albuns.artist_id
GROUP BY SpotifyClone.artists.artist_name, SpotifyClone.albuns.album_name
ORDER BY seguidores DESC, artista ASC, album;
