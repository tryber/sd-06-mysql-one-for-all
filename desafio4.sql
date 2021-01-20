CREATE VIEW top_3_artistas AS
SELECT Art.artist_name AS artista,
COUNT(Fll.user_id) AS seguidores
FROM SpotifyClone.artists AS Art,
SpotifyClone.followers AS Fll
WHERE Art.artist_id = Fll.artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
