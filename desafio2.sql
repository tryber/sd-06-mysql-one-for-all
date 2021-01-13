USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
SELECT
(
SELECT COUNT(*) FROM SpotifyClone.cancoes
) AS cancoes,
(
SELECT COUNT(*) FROM SpotifyClone.artistas
) AS artistas,
COUNT(*) AS albuns FROM SpotifyClone.albums;
