SELECT
	FORMAT(MIN(p.plan_value), 2) AS faturamento_minimo,
    FORMAT(MAX(p.plan_value), 2) AS faturamento_maximo,
    FORMAT(AVG(p.plan_value), 2) AS faturamento_medio,
    FORMAT(SUM(p.plan_value), 2) AS faturamento_total
FROM SpotifyClone.plan AS p
INNER JOIN SpotifyClone.user AS u ON u.plan_id = p.plan_id;
