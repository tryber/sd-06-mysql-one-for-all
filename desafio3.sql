CREATE VIEW historico_reproducao_usuarios AS
SELECT u.user_name AS usuário,
s.song_name AS nome
FROM Users AS u
INNER JOIN Users_Reprod_History AS urh ON u.user_id = urh.user_id
INNER JOIN Songs AS s ON urh.song_id = s.song_id
ORDER BY usuário, nome;
