CREATE VIEW estatisticas_musicais AS
    (SELECT COUNT(s.song_id) AS cancoes
    FROM Songs AS s)
    UNION
    (SELECT COUNT(ar.artist_id) AS artistas
    FROM Artists AS ar)
    UNION
    (SELECT COUNT(al.album_id) AS albuns
    FROM Albums AS al);
