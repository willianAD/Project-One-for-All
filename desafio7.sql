SELECT
	art.artist_name AS artista,
    a.album_name AS album,
    COUNT(*) AS seguidores
FROM SpotifyClone.artist AS art
INNER JOIN SpotifyClone.album AS a ON art.artist_id = a.artist_id
INNER JOIN SpotifyClone.folow_artist AS f ON art.artist_id = f.artist_id
GROUP BY art.artist_name, a.album_name
ORDER BY seguidores DESC, art.artist_name, a.album_name;
