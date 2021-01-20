CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT m.music_name) AS cancoes,
COUNT(DISTINCT a.artist_name) AS artistas,
COUNT(DISTINCT al.album_name) AS albuns
FROM musics AS m
JOIN artists AS a
JOIN albums AS al;
