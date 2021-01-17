CREATE VIEW cancoes_premium AS
SELECT s.song_name 'nome',
  COUNT(h.song_id) 'reproducoes'
FROM History h
  INNER JOIN Users u
    ON h.user_id = u.user_id
  INNER JOIN Songs s
    ON h.song_id = s.song_id
WHERE u.subscription_id != 1
GROUP BY s.song_name
ORDER BY `nome`;
