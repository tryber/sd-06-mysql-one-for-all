CREATE VIEW estatisticas_musicais AS
SELECT
(SELECT COUNT(c.cancao)
FROM SpotifyClone.cancoes c) AS cancoes,
(SELECT COUNT(at.artista)
FROM SpotifyClone.artista at) AS artistas,
(SELECT COUNT(ab.album)
FROM SpotifyClone.album ab) AS albuns;
