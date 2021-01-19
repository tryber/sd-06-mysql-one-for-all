CREATE VIEW estatisticas_musicais AS
SELECT
(SELECT COUNT(s.song_id) FROM songs AS s) AS cancoes,
(SELECT COUNT(a.singer_id) FROM singers AS a) AS artistas,
(SELECT COUNT(al.album_id) FROM albuns AS al) AS albuns;
