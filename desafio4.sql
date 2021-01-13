USE SpotifyClone;
CREATE VIEW top_3_artistas AS
SELECT 
	seguindo AS artista,
    COUNT(usuario_id) AS seguidores
FROM seguidores
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;