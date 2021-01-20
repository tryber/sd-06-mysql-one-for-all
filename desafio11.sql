CREATE VIEW cancoes_premium AS
SELECT S.song_name AS nome,
COUNT(RHy.user_id) AS reproducoes
FROM SpotifyClone.songs AS S,
SpotifyClone.reproduction_history AS RHy,
SpotifyClone.users AS U
WHERE U.user_id = RHy.user_id AND RHy.song_id = S.song_id
AND U.plan_id BETWEEN 2 AND 3
GROUP BY nome
ORDER BY nome;
