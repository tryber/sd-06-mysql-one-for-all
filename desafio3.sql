CREATE VIEW historico_reproducao_usuarios AS
SELECT
    usr.user_name usuario,
    sng.song_title nome
FROM SpotifyClone.users usr
JOIN SpotifyClone.play_history AS ph
ON usr.user_id = ph. user_id
JOIN SpotifyClone.songs AS sng
ON sng.song_id = ph.song_id
ORDER BY usuario, nome;
