CREATE VIEW perfil_artistas AS
SELECT
m.musician_name AS  artista,
a.album_name AS album,
COUNT(fm.user_id) AS seguidores
FROM Albums AS a
INNER JOIN Musicians AS m
ON m.musician_id = a.musician_id
INNER JOIN Following_Musicians AS fm
ON fm.musician_id = a.musician_id
GROUP BY m.musician_name, a.album_name
ORDER BY seguidores DESC, album_name, musician_name;
