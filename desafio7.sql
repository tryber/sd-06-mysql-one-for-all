CREATE VIEW SpotifyClone.perfil_artistas AS
    SELECT 
        ar.artista, al.album, COUNT(se.id_artista) AS 'seguidores'
    FROM
        albuns al
            INNER JOIN
        artistas ar ON al.id_artista = ar.id_artista
            INNER JOIN
        seguindo se ON ar.id_artista = se.id_artista
    GROUP BY al.id_album
    ORDER BY `seguidores` DESC , ar.artista , al.album;
