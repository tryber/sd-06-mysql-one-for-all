CREATE VIEW cancoes_premium AS
SELECT s.name 'nome',
COUNT(sub.subscription_plan) 'reproducoes'
FROM songs s
INNER JOIN play_history ph ON s.id = ph.song_id
INNER JOIN users u ON ph.user_id = u.id
INNER JOIN subscriptions sub ON sub.id = u.subscription_id
WHERE sub.subscription_plan = 'familiar' OR sub.subscription_plan = 'universitário'
GROUP BY s.name
ORDER BY s.name ASC;
