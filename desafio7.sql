CREATE VIEW perfil_artistas AS
SELECT a.name 'artista',
al.name 'album',
count(u.name) 'seguidores'
FROM artists a
INNER JOIN albums al ON a.id = al.artist_id
INNER JOIN follows f ON f.artist_id = a.id
INNER JOIN users u ON f.user_id = u.id
GROUP BY a.name, al.name
ORDER BY count(u.name) DESC, a.name ASC, al.name ASC;
