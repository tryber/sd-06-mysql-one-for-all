CREATE VIEW `top_2_hits_do_momento` AS
SELECT songstable.song_name AS `cancao`,
count(reproductiontable.user_id) AS `reproducoes`
FROM ((reproductiontable
INNER JOIN userstable
ON reproductiontable.user_id = userstable.user_id)
INNER JOIN songstable
ON reproductiontable.song_id = songstable.song_id)
group by songstable.song_name 
order by `reproducoes` desc, `cancao` asc limit 2;
