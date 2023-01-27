SELECT
	COUNT(DISTINCT s.song_id ) AS cancoes,
	COUNT(DISTINCT art.artist_id) AS artistas,
	COUNT(DISTINCT a.album_id) AS albuns
FROM
  SpotifyClone.song AS s
INNER JOIN
  SpotifyClone.artist AS art
INNER JOIN SpotifyClone.album AS a;
