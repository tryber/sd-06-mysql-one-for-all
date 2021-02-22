DROP VIEW IF EXISTS estatisticas_musicais;

CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(DISTINCT M.musica_id) AS cancoes,
COUNT(DISTINCT AN.artista_nome) AS artistas,
COUNT(DISTINCT A.album_id) AS albuns
FROM SpotifyClone.albuns AS A
JOIN SpotifyClone.artistas AS AN
ON A.artista_id = AN.artista_id
JOIN SpotifyClone.musicas AS M
ON A.album_id = M.album_id;
