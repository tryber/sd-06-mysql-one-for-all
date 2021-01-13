SELECT u.nome AS `usuario`, c.nome AS `nome`
FROM SpotifyClone.historico_de_reproducoes AS hist
JOIN SpotifyClone.usuarios AS u ON hist.usuario_id = u.usuario_id
JOIN SpotifyClone.cancoes AS c ON hist.cancao_id = c.cancao_id
ORDER BY `usuario`, `nome`;
