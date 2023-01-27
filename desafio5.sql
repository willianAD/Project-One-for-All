SELECT
	s.song_name AS cancao,
    COUNT(h.date_reproduction) AS reproducoes
FROM
	SpotifyClone.song AS s
INNER JOIN
	SpotifyClone.historic_reproduction AS h ON s.song_id = h.song_id
GROUP BY s.song_name
ORDER BY reproducoes DESC, s.song_name
LIMIT 2;
