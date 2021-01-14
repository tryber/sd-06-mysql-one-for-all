CREATE VIEW perfil_artistas AS
    SELECT ar.artist_name AS artista,
        al.album_name AS album,
        COUNT(ar.artist_name) AS seguidores
    FROM Artists AS ar
        INNER JOIN Albums AS al
            ON al.artist_id = ar.artist_id
        INNER JOIN Follow AS fl
            ON fl.artist_id = ar.artist_id
    GROUP BY artista, album
    ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
