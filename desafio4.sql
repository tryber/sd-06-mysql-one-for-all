CREATE VIEW top_3_artistas AS
SELECT art.name 'artista',
COUNT(u.name) 'seguidores'
FROM artists art
INNER JOIN follows f ON art.id = f.artist_id
INNER JOIN users u ON f.user_id = u.id
GROUP BY art.name
ORDER BY COUNT(u.name) DESC, art.name ASC
LIMIT 3;
