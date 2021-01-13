CREATE VIEW cancoes_premium AS
SELECT c.nome_cancao AS 'nome',
  COUNT(r.fk_cancao_id) AS 'reproducoes'
FROM SpotifyClone.tabela_cancao AS c
INNER JOIN SpotifyClone.tabela_reproducoes AS r ON r.fk_cancao_id = c.cancao_id
INNER JOIN SpotifyClone.tabela_usuario AS u ON u.usuario_id = r.fk_usuario_id
INNER JOIN SpotifyClone.tabela_plano AS p ON u.fk_plano_id = p.plano_id
WHERE u.fk_plano_id IN ('2','3')
GROUP BY `nome`
ORDER BY `nome`;
