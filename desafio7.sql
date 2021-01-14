CREATE VIEW perfil_artistas AS
SELECT AR.artist_name AS artista, 
AL.album_name AS album,
COUNT(AL.album_id) AS seguidores
FROM SpotifyClone.albums AS AL
JOIN SpotifyClone.artists AS AR ON AL.artist_id = AR.artist_id
JOIN SpotifyClone.users_follow_artists AS FA ON FA.artist_id = AL.artist_id
GROUP BY AL.album_id
ORDER BY seguidores DESC, artista, album;
