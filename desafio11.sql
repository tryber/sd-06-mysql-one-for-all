CREATE VIEW cancoes_premium AS
  SELECT
    s.song_name AS `nome`,
    COUNT(*) AS `reproducoes`
  FROM
    play_history AS ph
  INNER JOIN songs AS s ON s.id = ph.song_id
  INNER JOIN users AS u ON u.id = ph.user_id
  WHERE
    u.subscription_id <> 1
  GROUP BY
    `nome`
  ORDER BY
    `nome` ASC;
