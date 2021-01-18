CREATE VIEW historico_reproducao_usuarios as
SELECT
  USUARIO_NOME as `usuario`,
  MUSICA_NOME as `nome`
FROM
  SpotifyClone.historico as his
  INNER JOIN SpotifyClone.musicas as mus on mus.MUSICA_ID = his.MUSICA_ID
  INNER JOIN SpotifyClone.usuario as usua on usua.USUARIO_ID = his.USUARIO_ID
GROUP BY
  `usuario`,
  `nome`
