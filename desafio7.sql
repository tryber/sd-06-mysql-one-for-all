CREATE VIEW perfil_artistas AS
SELECT ARTIST.artist_name AS artista, 
ALBUM.album_name AS album,
COUNT(ALBUM.album_id) AS seguidores
FROM SpotifyClone.albums AS ALBUM
JOIN SpotifyClone.artists AS ARTIST ON ALBUM.artist_id = ARTIST.artist_id
JOIN SpotifyClone.users_follow_artists AS UFA ON UFA.artist_id = ALBUM.artist_id
GROUP BY ALBUM.album_id
ORDER BY seguidores DESC, artista, album;
