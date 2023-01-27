SELECT
	COUNT(u.user_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.historic_reproduction AS h ON u.user_id = h.user_id
WHERE u.user_id = 1;
