CREATE VIEW historico_reproducao_usuarios AS
SELECT
users.user_name AS 'usuario', songs.song AS 'nome'
FROM SpotifyClone.users users, SpotifyClone.songs_played songsPlayed, SpotifyClone.songs songs
WHERE users.user_id = songsPlayed.user_id AND songsPlayed.song_played = songs.song_id
ORDER BY `usuario` ASC, `nome` ASC;
