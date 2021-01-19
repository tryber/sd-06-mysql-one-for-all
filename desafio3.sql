CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    u.user_name AS `usuario`,
    s.song_name AS `nome`
  FROM
    play_history AS ph
  INNER JOIN users AS u ON ph.user_id = u.id
  INNER JOIN songs AS s ON ph.song_id = s.id
  ORDER BY
    `usuario`,
    `nome`;
