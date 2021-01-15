CREATE VIEW top_2_hits_do_momento
  AS SELECT
    s.song_name cancao,
    COUNT(h.song_id) reproducoes
  FROM SpotifyClone.History h
    INNER JOIN SpotifyClone.Songs s
      ON h.song_id = s.song_id
  GROUP BY h.song_id
  ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
