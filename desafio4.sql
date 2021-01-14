CREATE VIEW top_3_artistas AS
    SELECT ar.artist_name AS artista,
        COUNT(u.user_name) AS seguidores
    FROM Users AS u
        INNER JOIN Follow AS f
            ON u.user_id = f.user_id
        INNER JOIN Artists AS ar
            ON ar.artist_id = f.artist_id
    GROUP BY artista
    ORDER BY COUNT(u.user_name) DESC, artista ASC
    LIMIT 3;
