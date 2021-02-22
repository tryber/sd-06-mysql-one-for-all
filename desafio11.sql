CREATE VIEW cancoes_premium AS
SELECT
  M.nome_musica AS `nome`,
  COUNT(H.musica_id) AS `reproducoes`
FROM SpotifyClone.musica AS M
INNER JOIN SpotifyClone.historico_reproducao AS H ON M.musica_id = H.musica_id
INNER JOIN SpotifyClone.usuario AS U ON H.usuario_id = U.usuario_id
INNER JOIN SpotifyClone.plano AS P ON U.plano_id = P.plano_id
WHERE P.nome_plano IN ("familiar", "universitario")
GROUP BY M.nome_musica
ORDER BY nome;
