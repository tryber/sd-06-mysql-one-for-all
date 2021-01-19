CREATE VIEW top_2_hits_do_momento AS
SELECT
s.songs_name AS 'cancao',
COUNT(sp.song_id) AS 'reproducoes'
FROM
SpotifyClone.songs AS s
INNER JOIN SpotifyClone.song_played AS sp ON
s.songs_id = sp.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
