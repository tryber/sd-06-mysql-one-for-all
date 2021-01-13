CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(DISTINCT can.nome) AS cancoes,
COUNT(DISTINCT art.nome) AS artistas,
COUNT(DISTINCT alb.nome) AS album
FROM cancoes AS can, artista AS art, album AS alb ;