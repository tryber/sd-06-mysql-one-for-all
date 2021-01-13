CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(DISTINCT can.name) AS cancoes,
COUNT(DISTINCT art.name) AS artistas,
COUNT(DISTINCT alb.name) AS albuns
FROM SpotifyClone.cancoes AS can, SpotifyClone.artista AS art, SpotifyClone.albuns alb ;