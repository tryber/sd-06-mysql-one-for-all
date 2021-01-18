CREATE VIEW estatisticas_musicais AS
SELECT
(SELECT COUNT(s.song_id) FROM musicas AS M) AS cancoes,
(SELECT COUNT(a.singer_id) FROM artistas AS A) AS artistas,
(SELECT COUNT(al.album_id) FROM albuns AS AB) AS albuns;
