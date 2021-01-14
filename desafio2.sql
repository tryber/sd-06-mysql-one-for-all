CREATE VIEW estatisticas_musicais AS
    (SELECT COUNT(s.song_name) AS cancoes
    FROM Songs AS s)
    UNION
    (SELECT COUNT(ar.artist_name) AS artistas
    FROM Artists AS ar)
    UNION
    (SELECT COUNT(al.album_name) AS albuns
    FROM Albums AS al);
