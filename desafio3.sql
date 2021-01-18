-- DROP VIEW IF EXISTS `historico_reproducao_usuarios`;
CREATE VIEW historico_reproducao_usuarios AS
SELECT
SpotifyClone.usuarios.usuarios_nome AS 'usuario',
SpotifyClone.musicas.musicas_titulo AS 'nome'
FROM SpotifyClone.historicos, SpotifyClone.usuarios, SpotifyClone.musicas

WHERE 
SpotifyClone.usuarios.usuarios_id = SpotifyClone.historicos.usuarios_id
AND
SpotifyClone.musicas.musicas_id = SpotifyClone.historicos.musicas_id

ORDER BY SpotifyClone.usuarios.usuarios_nome, SpotifyClone.musicas.musicas_titulo;
