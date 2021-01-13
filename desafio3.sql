USE SpotifyClone;

CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome_usuario AS 'usuario',
  c.nome_cancao AS 'nome'
FROM SpotifyClone.tabela_reproducoes AS r
INNER JOIN SpotifyClone.tabela_usuario AS u ON r.fk_usuario_id = u.usuario_id
INNER JOIN SpotifyClone.tabela_cancao AS c ON r.fk_cancao_id = c.cancao_id
ORDER BY `usuario`, `nome`;
