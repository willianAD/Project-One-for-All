SELECT
	s.song_name AS nome,
	COUNT(u.user_id) AS reproducoes
FROM SpotifyClone.song AS s
	INNER JOIN SpotifyClone.historic_reproduction AS h
	INNER JOIN SpotifyClone.user AS u
	INNER JOIN SpotifyClone.plan AS p
    ON h.song_id = s.song_id AND u.user_id = h.user_id AND p.plan_id = u.plan_id
WHERE p.plan_id IN (1, 3)
GROUP BY s.song_name
ORDER BY s.song_name;
