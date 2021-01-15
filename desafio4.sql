CREATE VIEW top_3_artistas AS
SELECT ARTIST.artist_name AS artista,
COUNT(UFA.user_id) AS seguidores
FROM SpotifyClone.artists AS ARTIST
JOIN SpotifyClone.users_follow_artists AS UFA ON ARTIST.artist_id = UFA.artist_id
GROUP BY ARTIST.artist_id
ORDER BY seguidores DESC, artista
LIMIT 3;
