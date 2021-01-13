CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(DISTINCT(can.nome)) AS 'cancoes',
COUNT(DISTINCT(art.nome)) AS 'artistas',
COUNT(DISTINCT(alb.nome)) AS 'albuns'
FROM SpotifyClone.cancoes AS can, SpotifyClone.artista AS art, SpotifyClone.album AS alb;
