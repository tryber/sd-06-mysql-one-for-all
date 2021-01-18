albunstable.album_name AS `album`,
count(followerstable.artist_id) AS `seguidores`
FROM (((followerstable
INNER JOIN artiststable
ON followerstable.artist_id = artiststable.artist_id)
INNER JOIN userstable
ON followerstable.user_id = userstable.user_id)
INNER JOIN albunstable
ON followerstable.artist_id = albunstable.artist_id)
group by `album` 
order by `seguidores` desc, `artista` asc;
