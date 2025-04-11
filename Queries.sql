USE book_boutique;

SELECT b.book_id AS ID,
b.title AS Title,
b.author_name AS Author,
CONCAT("$", b.price) AS Price,
CASE
	WHEN b.series_id IS NULL THEN ""
    ELSE ser.name
END AS Series,
group_concat(g.genre_name ORDER BY g.genre_ID ASC SEPARATOR ", ") AS Genre
FROM books b
JOIN book_genres bg
ON b.book_id = bg.book_id
JOIN genres g
ON bg.genre_id = g.genre_id
LEFT JOIN book_series ser
ON b.series_id = ser.series_id
GROUP BY b.book_id;
