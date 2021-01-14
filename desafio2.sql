USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(DISTINCT canc.cancao_nome) AS cancoes,
COUNT(DISTINCT art.artista_nome) AS artistas,
COUNT(DISTINCT alb.album_nome) AS albuns
FROM SpotifyClone.table_albuns AS alb, SpotifyClone.table_cancoes AS canc, SpotifyClone.table_artistas AS art;

SELECT * FROM estatisticas_musicais;
