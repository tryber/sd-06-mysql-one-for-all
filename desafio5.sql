CREATE VIEW top_2_hits_do_momento AS
  SELECT
    s.song_name AS `cancao`,
    COUNT(*) AS `reproducoes`
  FROM
    play_history as ph
  INNER JOIN songs AS s ON ph.song_id = s.id
  GROUP BY
    `cancao`
  ORDER BY
    `reproducoes` DESC,
    `cancao` ASC
  LIMIT 2;
