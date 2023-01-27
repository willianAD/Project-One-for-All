SELECT
	s.song_name AS nome_musica,
		CASE
			WHEN s.song_name LIKE '%Bard%' THEN REPLACE (s.song_name, 'Bard', 'QA')
			WHEN s.song_name LIKE '%Amar%' THEN REPLACE (s.song_name, 'Amar', 'Code Review')
			WHEN s.song_name LIKE '%Pais%' THEN REPLACE (s.song_name, 'Pais', 'Pull Requests')
			WHEN s.song_name LIKE '%SOUL%' THEN REPLACE (s.song_name, 'SOUL' , 'CODE')
			WHEN s.song_name LIKE '%SUPERSTAR%' THEN REPLACE (s.song_name, 'SUPERSTAR', 'SUPERDEV')
		END AS novo_nome
FROM SpotifyClone.song AS s
WHERE s.song_name IN ('The Bard’s Song', 'O Medo de Amar é o Medo de Ser Livre', 'Como Nossos Pais', 'BREAK MY SOUL', 'ALIEN SUPERSTAR')
ORDER BY s.song_name DESC;
