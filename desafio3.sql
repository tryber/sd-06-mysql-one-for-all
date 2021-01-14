CREATE VIEW historico_reproducao_usuarios AS
SELECT
  u.name AS `usuario`,
  s.song AS `nome`
FROM
  `SpotifyClone`.`historic` AS `h`
INNER JOIN
  `SpotifyClone`.`users` AS `u` ON u.id = h.user_id
INNER JOIN
  `SpotifyClone`.`songs` AS `s` ON s.id = h.song_id
ORDER BY
  `usuario` ASC,
  `nome` ASC;
