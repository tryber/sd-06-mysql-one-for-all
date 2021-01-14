USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(*) AS 'cancoes',
(SELECT COUNT(*) FROM artistas) AS 'artistas',
(SELECT COUNT(*) FROM albuns) AS 'albuns'
FROM cancoes;
