CREATE VIEW top_3_artistas AS
SELECT a.nome_artista AS `artista`, 
  COUNT(*) AS `seguidores`
FROM SpotifyClone.seguidores AS s
  INNER JOIN SpotifyClone.artistas AS a
    ON s.id_artista = a.id_artista
GROUP BY a.id_artista
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
