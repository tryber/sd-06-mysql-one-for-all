CREATE VIEW perfil_artistas AS
SELECT a.name 'artista',
al.name 'album',
COUNT(f.user_id) 'seguidores'
FROM artists a
INNER JOIN albums al ON a.id = al.artist_id
INNER JOIN follows f ON f.artist_id = a.id
GROUP BY a.name, al.name
ORDER BY COUNT(f.user_id) DESC, a.name ASC, al.name ASC;
