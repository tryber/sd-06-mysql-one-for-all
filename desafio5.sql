CREATE VIEW top_2_hits_do_momento AS
SELECT
  s.song AS `cancao`,
  COUNT(h.song_id) AS `reproducoes`
FROM
  `SpotifyClone`.`historic` AS `h`
INNER JOIN
  `SpotifyClone`.`songs` AS `s` ON s.id = h.song_id
GROUP BY
  h.song_id
ORDER BY
  `reproducoes` DESC,
  `cancao` ASC
LIMIT 2;
