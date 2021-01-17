CREATE VIEW perfil_artistas AS
SELECT
    art.artist_name artista,
    alb.album_name album,
    COUNT(flw.user_id) seguidores
FROM SpotifyClone.followings flw
JOIN SpotifyClone.artists art
ON art.artist_id = flw.artist_id
JOIN SpotifyClone.albums alb
ON alb.artist_id = art.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
