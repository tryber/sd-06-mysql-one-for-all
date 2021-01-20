CREATE VIEW top_3_artistas 
AS SELECT artists.artist_name AS artista,
COUNT(artists.artist_id) AS seguidores FROM follows JOIN artists ON artists.artist_id = follows.artist_id GROUP BY artists.artist_name ORDER BY seguidores DESC, artista ASC
LIMIT 3;
