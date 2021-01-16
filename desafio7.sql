CREATE VIEW perfil_artistas AS
SELECT SpotifyClone.artist.artist_name AS artista,
SpotifyClone.album.album_name AS album,
COUNT(SpotifyClone.artist.artist_id) AS seguidores
FROM follow
INNER JOIN artist
ON SpotifyClone.artist.artist_id = SpotifyClone.follow.artist_id
INNER JOIN album
ON SpotifyClone.artist.artist_id = SpotifyClone.album.artist_id
GROUP BY SpotifyClone.artist.artist_name, SpotifyClone.album.album_name
ORDER BY seguidores DESC, artista ASC, album;
