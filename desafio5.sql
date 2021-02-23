CREATE VIEW top_2_hits_do_momento AS
SELECT
M.name AS 'cancao',
COUNT(H.music_id) AS 'reproducoes'
FROM SpotifyClone.music M
INNER JOIN SpotifyClone.history H
ON M.id = H.music_id
GROUP BY H.music_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
