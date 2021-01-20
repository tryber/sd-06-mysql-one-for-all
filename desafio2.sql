CREATE VIEW estatisticas_musicais
AS SELECT
COUNT(DISTINCT(nome_musica)) AS cancoes,
COUNT(DISTINCT(nome_artista)) AS artistas,
COUNT(DISTINCT(nome_album)) AS albuns
FROM SpotifyClone;