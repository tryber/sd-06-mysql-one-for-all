CREATE VIEW top_3_artistas AS

SELECT 
  art.nome AS artista, COUNT(seg.artista_id) AS seguidores
FROM 
  SpotifyClone.artista AS art
INNER JOIN 
  SpotifyClone.seguindo_artistas AS seg
ON
  art.artista_id = seg.artista_id
GROUP BY 
  art.nome
ORDER BY 
  seguidores DESC, artista
LIMIT 3;
