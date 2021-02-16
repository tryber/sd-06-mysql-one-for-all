CREATE VIEW top_2_hits_do_momento AS
SELECT
  (s.song_name) AS "cancao",
  COUNT(sh.user_id) AS "reproducoes"
FROM
  SpotifyClone.songs AS s
    INNER JOIN SpotifyClone.songs_history AS sh
    ON s.song_id = sh.song_id
GROUP BY `cancao`
ORDER BY
  `reproducoes` DESC,
  `cancao` ASC
LIMIT 2;