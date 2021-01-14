CREATE VIEW top_2_hits_do_momento AS
SELECT s.name 'cancao',
COUNT(u.name) 'reproducoes'
FROM songs s
INNER JOIN play_history ph ON s.id = ph.song_id
INNER JOIN users u ON ph.user_id = u.id
GROUP BY s.name
ORDER BY COUNT(u.name) DESC, s.name ASC
LIMIT 2;
