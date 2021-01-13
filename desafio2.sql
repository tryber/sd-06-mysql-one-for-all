CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(DISTINCT m.musica) AS 'cancoes',
COUNT(DISTINCT art.artista) AS 'artistas',
COUNT(DISTINCT alb.album) AS 'albuns'
FROM SpotifyClone.musicas AS m, SpotifyClone.artistas AS art, SpotifyClone.albums AS alb;