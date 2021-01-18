CREATE VIEW cancoes_premium AS
SELECT
s.name AS nome,
COUNT(ph.user_id) AS reproducoes
FROM songs AS s
INNER JOIN playback_history AS ph
ON s.song_id = ph.song_id
INNER JOIN users AS u 
ON u.user_id = ph.user_id
WHERE u.plan_id IN (2, 3)
GROUP BY nome;
