USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS 
SELECT COUNT(DISTINCT CA.cancao_id) AS 'cancoes',
COUNT(DISTINCT AR.artista_id)  AS 'artistas',
COUNT(DISTINCT AL.album_id) AS 'albuns'
FROM SpotifyClone.cancoes CA,
  SpotifyClone.artistas AR,
SpotifyClone.album AL;
