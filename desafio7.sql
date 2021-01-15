CREATE VIEW perfil_artistas AS
SELECT ar.nome_artista AS 'artista',
  al.nome_album AS 'album',
  COUNT(s.fk_usuario_id) AS 'seguidores'
FROM SpotifyClone.tabela_seguindo_artistas AS s
INNER JOIN SpotifyClone.tabela_artista AS ar ON ar.artista_id = s.fk_artista_id
INNER JOIN SpotifyClone.tabela_album AS al ON ar.artista_id = al.fk_artista_id
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`, `album`;
