CREATE VIEW perfil_artistas AS
SELECT A.artist_name AS artista,
AL.album_name AS album,
COUNT(F.user_id) AS seguidores
FROM SpotifyClone.artists AS A,
SpotifyClone.followers AS F,
SpotifyClone.albuns AS AL
WHERE A.artist_id = AL.artist_id AND A.artist_id = F.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
