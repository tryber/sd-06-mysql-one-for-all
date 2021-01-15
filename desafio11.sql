CREATE VIEW cancoes_premium AS
SELECT SONG.song_name AS nome,
COUNT(SONG.song_name) AS reproducoes 
FROM SpotifyClone.users_history_songs AS HISTORY
JOIN SpotifyClone.users AS USER ON USER.user_id = HISTORY.user_id
JOIN SpotifyClone.plans AS PLANS ON PLANS.plan_id = USER.plan_id
JOIN SpotifyClone.songs AS SONG ON HISTORY.song_id = SONG.song_id
WHERE PLANS.plan_id <> 1
GROUP BY SONG.song_name
ORDER BY SONG.song_name;
