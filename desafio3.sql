CREATE VIEW historico_reproducao_usuarios AS
SELECT
  U.nome_usuario AS `usuario`,
  M.nome_musica AS `nome`
FROM SpotifyClone.usuario AS U
INNER JOIN SpotifyClone.historico_reproducao AS H ON U.usuario_id = H.usuario_id
INNER JOIN SpotifyClone.musica AS M ON H.musica_id = M.musica_id
ORDER BY usuario, nome;
