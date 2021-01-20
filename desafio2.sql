CREATE VIEW estatisticas_musicais AS
SELECT 
	COUNT(DISTINCT m.music_name) AS cancoes,
	COUNT(DISTINCT a.artist_name) AS artistas,
	COUNT(DISTINCT al.album_name) AS albums
FROM 
	SpotifyClone.musics AS m,
	SpotifyClone.artists AS a,
	SpotifyClone.albums AS al;
    