CREATE VIEW estatisticas_musicais AS
    SELECT COUNT(s.song_id) AS cancoes,
        (SELECT COUNT(ar.artist_id) FROM Artists AS ar) AS artistas,
        (SELECT COUNT(al.album_id) FROM Albums AS al) AS albuns
FROM Songs AS s;
