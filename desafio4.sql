CREATE VIEW SpotifyClone.top_3_artistas AS
    SELECT 
        art.artista,
        COUNT(seg.id_artista) AS 'seguidores'
    FROM
        artistas  art
            INNER JOIN
        seguindo  seg ON art.id_artista = seg.id_artista
    GROUP BY art.artista
    ORDER BY `seguidores` DESC , art.artista
    LIMIT 3;
