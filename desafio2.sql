CREATE VIEW estatisticas_musicais AS SELECT 
(SELECT COUNT(*) FROM song_list) AS cancoes,
(SELECT COUNT(*) artist) AS artistas,
(SELECT COUNT(*) FROM album) AS albuns;
