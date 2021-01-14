CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(DISTINCT canc.cancao) AS cancoes,
COUNT(DISTINCT art.artista) AS artistas,
COUNT(DISTINCT alb.album) AS albuns
FROM SpotifyClone.albuns AS alb, SpotifyClone.cancoes AS canc, SpotifyClone.artistas AS art;
