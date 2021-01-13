CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(can.nome) AS cancoes,
COUNT(art.nome) AS artistas,
COUNT(alb.nome) AS album
FROM cancoes AS can, artista AS art, album AS alb ;