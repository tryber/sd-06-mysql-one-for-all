CREATE VIEW top_3_artistas AS
SELECT a.nome_artista AS 'artista',
  COUNT(s.fk_usuario_id) AS 'seguidores'
FROM SpotifyClone.tabela_artista AS a
INNER JOIN SpotifyClone.tabela_seguindo_artistas AS s ON s.fk_artista_id = a.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
