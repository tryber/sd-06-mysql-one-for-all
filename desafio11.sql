CREATE VIEW cancoes_premium AS
SELECT DISTINCT
M.name AS 'nome',
COUNT(M.id) AS 'reproducoes'
FROM SpotifyClone.history H
INNER JOIN SpotifyClone.music M
ON H.music_id = M.id
WHERE H.user_id IN (SELECT id FROM SpotifyClone.user WHERE plan_id IN(SELECT id FROM SpotifyClone.plan WHERE price > 0))
GROUP BY H.music_id
ORDER BY `nome`;
