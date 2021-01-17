CREATE VIEW top_3_artistas AS
SELECT
    art.artist_name artista,
    COUNT(*) seguidores
FROM SpotifyClone.artists art
JOIN SpotifyClone.followings flw
ON art.artist_id = flw.artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
