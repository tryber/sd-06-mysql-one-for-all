CREATE VIEW `perfil_artistas` AS
SELECT artiststable.artist_name AS `artista`,
albunstable.album_name AS `album`,
count(followerstable.user_id) AS `seguidores`
FROM ((followerstable
INNER JOIN artiststable
ON followerstable.artist_id = artiststable.artist_id)
INNER JOIN albunstable
ON followerstable.artist_id = albunstable.artist_id)
group by artiststable.artist_name, albunstable.album_name 
order by count(followerstable.user_id) desc, artiststable.artist_name, albunstable.album_name;
