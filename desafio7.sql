CREATE VIEW perfil_artistas AS
    SELECT 
        Art.artista AS artista,
        Alb.titulo AS album,
        COUNT(Seg.usuario_id) AS seguidores
    FROM
        SpotifyClone.Artistas_seguidos AS Seg
            INNER JOIN
        SpotifyClone.Artistas AS Art ON Art.artista_id = Seg.artista_id
            INNER JOIN
        SpotifyClone.Albuns AS Alb ON Alb.artista_id = Seg.artista_id
    GROUP BY Art.artista , Alb.titulo
    ORDER BY `seguidores` DESC , `artista` , `album`;
