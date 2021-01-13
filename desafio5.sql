CREATE VIEW top_2_hits_do_momento AS (
  (
    SELECT S.name AS cancao, COUNT(*) AS reproducoes
    FROM song_plays AS SP
      LEFT JOIN songs AS S
        ON S.id = SP.song_id
    GROUP BY SP.song_id
  )
  ORDER BY reproducoes DESC, cancao ASC
  LIMIT 2
);
