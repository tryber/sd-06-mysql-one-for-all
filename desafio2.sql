USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT can.cancao_id) AS 'cancoes',
	COUNT(DISTINCT art.artista_id) AS 'artistas',
	COUNT(DISTINCT alb.album_id) AS 'albuns'
    from SpotifyClone.cancoes as can
INNER JOIN SpotifyClone.album AS alb
INNER JOIN SpotifyClone.artistas AS art
