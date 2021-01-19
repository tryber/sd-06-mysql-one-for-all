CREATE VIEW top_2_hits_do_momento AS
    SELECT
        s.song_title AS "cancao",
        count(h.user_id) AS "reproducoes"
    FROM
        SpotifyClone.history AS h
        INNER JOIN
        SpotifyClone.songs AS s ON h.song_id = s.song_id
        group by cancao
        order by reproducoes DESC, cancao ASC
        LIMIT 2;
