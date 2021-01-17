CREATE VIEW top_2_hits_do_momento AS
SELECT
SpotifyClone.musics.music_name AS `cancao`,
COUNT(SpotifyClone.histories.music_id) AS `reproducoes`
FROM SpotifyClone.musics
INNER JOIN SpotifyClone.histories
ON SpotifyClone.musics.music_id = SpotifyClone.histories.music_id
GROUP BY SpotifyClone.histories.music_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
