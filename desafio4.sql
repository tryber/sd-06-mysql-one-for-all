CREATE VIEW top_3_artistas AS
    SELECT 
        a.artist_name AS 'artista',
        COUNT(f.user_id) AS 'seguidores'
    FROM
        SpotifyClone.following AS f
            INNER JOIN
        SpotifyClone.artists AS a ON f.artist_id = a.artist_id
    GROUP BY artista
    ORDER BY seguidores DESC , artista ASC
    LIMIT 3;
