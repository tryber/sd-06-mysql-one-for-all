CREATE VIEW top_3_artistas AS
    SELECT 
        A.artista AS artista, COUNT(S.usuario_id) AS seguidores
    FROM
        SpotifyClone.Artistas_seguidos AS S
            INNER JOIN
        SpotifyClone.Artistas AS A ON A.artista_id = S.artista_id
    GROUP BY A.artista_id
    ORDER BY `seguidores` DESC , `artista`
    LIMIT 3;
