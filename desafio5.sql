CREATE VIEW top_2_hits_do_momento AS SELECT musics.music_name AS `cancao`,
COUNT(histories.music_id) AS `reproducoes`
FROM musics INNER JOIN histories ON musics.music_id = histories.music_id
GROUP BY histories.music_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
