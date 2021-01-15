CREATE VIEW perfil_artistas AS
SELECT a.nome_artista 'artista',
al.titulo_album 'album',
COUNT(f.usuario_id) 'seguidores'
FROM artistas a
INNER JOIN albuns al ON a.artista_id = al.artista_id
INNER JOIN seguindo_artista f ON f.artista_id = a.artista_id
GROUP BY a.nome_artista, al.titulo_album
ORDER BY COUNT(f.usuario_id) DESC, a.nome_artista ASC, al.titulo_album ASC;
