CREATE VIEW perfil_artistas AS
SELECT Art.artist_name AS artista,
AL.album_name AS album,
COUNT(Fll.user_id) AS seguidores
FROM SpotifyClone.artists AS Art,
SpotifyClone.followers AS Fll,
SpotifyClone.albuns AS AL
WHERE Art.artist_id = AL.artist_id AND Art.artist_id = Fll.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
