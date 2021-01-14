CREATE VIEW estatisticas_musicais AS
SELECT COUNT(s.name) 'cancoes',
(SELECT COUNT(art.name) FROM artists art) 'artistas',
(SELECT COUNT(alb.name) FROM albums alb) 'albuns'
FROM songs s;
