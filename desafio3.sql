CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome_usuario AS `usuario`,
  c.nome_cancao AS nome
FROM SpotifyClone.historico AS h
  INNER JOIN SpotifyClone.usuarios AS u
    ON u.id_usuario = h.id_usuario
  INNER JOIN SpotifyClone.cancoes AS c
    ON c.id_cancao  = h.id_cancao
ORDER BY `usuario`, `nome`;
