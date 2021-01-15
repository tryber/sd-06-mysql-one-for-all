CREATE VIEW cancoes_premium AS
SELECT s.song_name AS nome,
COUNT(u.user_id) AS reproducoes
FROM Songs AS s
INNER JOIN Users_Reprod_History AS u
ON u.song_id = s.song_id
INNER JOIN Users AS us
ON u.user_id = us.user_id
WHERE us.plan_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
