CREATE VIEW historico_reproducao_usuarios AS
SELECT
UN.usuario_nome AS usuario,
MN.musica_nome AS nome
FROM SpotifyClone.usuarios AS UN,
SpotifyClone.musicas AS MN,
SpotifyClone.historico_de_reproducoes AS HR

WHERE UN.usuario_id = HR.usuario_id AND
MN.musica_id = HR.musica_id ORDER BY usuario, nome;
