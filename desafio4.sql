CREATE VIEW top_3_artistas AS SELECT
A.artista_nome artista, COUNT(US.usuario_id) seguidores FROM SpotifyClone.artista A
INNER JOIN SpotifyClone.usuario_segue US ON A.artista_id = US.artista_id 
GROUP BY artista ORDER BY seguidores DESC, artista LIMIT 3;
