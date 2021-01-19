CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT s.id) AS cancoes,
COUNT(DISTINCT a.id) AS artistas,
COUNT(DISTINCT al.id) AS albuns
FROM SpotifyClone.songs AS s
JOIN SpotifyClone.artists AS a
JOIN SpotifyClone.albums AS al;
