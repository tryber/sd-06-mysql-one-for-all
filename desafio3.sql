CREATE VIEW historico_reproducao_usuarios AS
SELECT u.name 'usuario',
s.name 'nome'
FROM users u
INNER JOIN play_history ph ON u.id = ph.user_id
INNER JOIN songs s ON ph.song_id = s.id
ORDER BY u.name ASC, s.name ASC;
