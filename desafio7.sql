CREATE VIEW SpotifyClone.perfil_artistas AS
    SELECT 
        ar.artista, al.album, COUNT(se.id_artista) AS 'seguidores'
    FROM
        artistas ar
            INNER JOIN
        albuns al ON ar.id_artista = al.id_artista
            INNER JOIN
        seguindo se ON ar.id_artista = se.id_artista
    GROUP BY al.id_album
    ORDER BY `seguidores` DESC , ar.artista , al.album
    