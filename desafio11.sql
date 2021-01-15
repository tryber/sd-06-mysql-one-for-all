CREATE VIEW cancoes_premium AS
SELECT
  song_list.title AS nome,
  COUNT(play_history.user_id) AS reproducoes
FROM
  song_list
  INNER JOIN play_history ON play_history.song_list_id = song_list.id
  INNER JOIN users ON users.id = play_history.user_id
WHERE
  users.plan_id <> 1
GROUP BY
  nome
ORDER BY
  nome;
