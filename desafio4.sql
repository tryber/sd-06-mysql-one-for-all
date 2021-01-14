CREATE VIEW SpotifyClone.top_3_artistas AS
    SELECT 
        artistas.artista,
        COUNT(seguidores.id_artista) AS 'seguidores'
    FROM
        artistas  artistas
            INNER JOIN
        seguindo  seguidores ON artistas.id_artista = seguidores.id_artista
    GROUP BY artistas.artista
    ORDER BY COUNT(seguidores.id_artista) DESC , artistas.artista
    LIMIT 3;
