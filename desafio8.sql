SELECT
	art.artist_name AS artista,
    a.album_name AS album
FROM SpotifyClone.artist AS art
INNER JOIN SpotifyClone.album AS a ON art.artist_id = a.artist_id
WHERE artist_name = "Elis Regina"
ORDER BY a.album_name;
