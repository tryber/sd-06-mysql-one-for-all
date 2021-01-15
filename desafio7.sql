CREATE VIEW perfil_artistas AS
SELECT A.nome AS 'artista', 
B.nome AS 'album',
COUNT(B.album_id) AS 'seguidores'
FROM album AS B
JOIN artista AS A ON B.artista_id = A.artista_id
JOIN seguindo_artistas AS SA ON SA.artista_id = B.artista_id
GROUP BY B.album_id
ORDER BY `seguidores` DESC, `artista`, `album`;
