CREATE VIEW top_2_hits_do_momento AS
SELECT
s.song AS 'cancao',
COUNT(sp.song_played) AS 'reproducoes'
FROM SpotifyClone.songs s
INNER JOIN SpotifyClone.songs_played sp ON
sp.song_played = s.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
