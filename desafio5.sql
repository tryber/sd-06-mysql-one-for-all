CREATE VIEW top_2_hits_do_momento AS
SELECT
  song_list.title AS cancao,
  COUNT(play_history.song_list_id) AS reproducoes
FROM
  play_history
  INNER JOIN song_list ON song_list.id = play_history.song_list_id
GROUP BY
  play_history.song_list_id
ORDER BY
  reproducoes desc,
  cancao
LIMIT
  2;
