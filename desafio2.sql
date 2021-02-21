DROP VIEW IF EXISTS estatisticas_musicais;

CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(DISTINCT M.musica_id) AS cancoes,
COUNT(DISTINCT AN.artista_nome) AS artistas,
COUNT(DISTINCT AL.album_id) AS albuns
FROM SpotifyClone.albuns AS AL
JOIN SpotifyClone.artistas AS AN
ON AL.artista_id = AL.artista_id
JOIN SpotifyClone.musicas AS M
ON AL.album_id = M.album_id;
