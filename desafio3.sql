SELECT
	u.user_name AS usuario,
  COUNT(h.user_id) AS qt_de_musicas_ouvidas,
  ROUND(SUM(s.duration) / 60, 2) AS total_minutos
FROM
  SpotifyClone.user AS u
INNER JOIN
  SpotifyClone.historic_reproduction AS h ON h.user_id = u.user_id
INNER JOIN SpotifyClone.song AS s ON s.song_id = h.song_id
GROUP BY u.user_name
ORDER BY usuario;
