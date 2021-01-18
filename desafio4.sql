CREATE VIEW `top_3_artistas` AS
SELECT artiststable.artist_name AS `artista`,
count(followerstable.artist_id) AS `seguidores`
FROM ((followerstable
INNER JOIN artiststable
ON followerstable.artist_id = artiststable.artist_id)
INNER JOIN userstable
ON followerstable.user_id = userstable.user_id)
group by artiststable.artist_name 
order by `seguidores` desc, `artista` asc limit 3;
