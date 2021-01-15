DROP VIEW IF EXISTS cancoes_premium;

CREATE VIEW cancoes_premium AS
SELECT S.song_name AS nome,
COUNT(H.song_id) AS reproducoes 
FROM SpotifyClone.users_history_songs AS H
JOIN SpotifyClone.users AS U ON U.user_id = H.user_id
JOIN SpotifyClone.plans AS P ON P.plan_id = U.plan_id
JOIN SpotifyClone.songs AS S ON H.song_id = S.song_id
WHERE P.plan_id <> 1
GROUP BY H.song_id
ORDER BY S.song_name;

SELECT * FROM cancoes_premium;
