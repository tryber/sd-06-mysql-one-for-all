CREATE VIEW SpotifyClone.perfil_artistas AS
    SELECT 
        art.artista, alb.album, COUNT(seg.id_artista) AS 'seguidores'
    FROM
        albuns alb
            INNER JOIN
        artistas art ON alb.id_artista = art.id_artista
            INNER JOIN
        seguindo seg ON art.id_artista = seg.id_artista
    GROUP BY alb.id_album
    ORDER BY `seguidores` DESC , art.artista , alb.album;
