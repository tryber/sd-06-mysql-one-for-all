CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome AS 'usuario', m.nome_musica  AS 'nome'  
FROM SpotifyClone.historico_tocadas as h
INNER JOIN SpotifyClone.usuario as u ON h.fk_usuario_id = u.usuario_id
INNER JOIN SpotifyClone.musica as m ON h.fk_musica_id = m.musica_id
ORDER BY u.nome, m.nome_musica;
