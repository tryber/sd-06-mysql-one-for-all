CREATE VIEW perfil_artistas AS
    SELECT 
        ar.artist_name AS artista,
        al.album_name AS album,
        COUNT(f.user_id) AS seguidores
    FROM
        SpotifyClone.albuns AS al
            INNER JOIN
        SpotifyClone.following AS f ON al.artist_id = f.artist_id
            INNER JOIN
        SpotifyClone.artists AS ar ON al.artist_id = ar.artist_id
    GROUP BY album , artista
    ORDER BY seguidores DESC , artista , album;
