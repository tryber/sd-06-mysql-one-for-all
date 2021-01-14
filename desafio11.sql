CREATE VIEW cancoes_premium AS
SELECT
  s.song AS `nome`,
  COUNT(h.user_id) AS `reproducoes`
FROM
  SpotifyClone.historic AS h
INNER JOIN
  songs AS s ON s.id = h.song_id
INNER JOIN
  users as u ON u.id = h.user_id
WHERE
  u.plan_id BETWEEN 2 AND 3
GROUP BY
  `nome`
ORDER BY
  `nome` ASC;
