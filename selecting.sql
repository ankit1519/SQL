--1. Distinct

SELECT * FROM books

SELECT DISTINCT author_lname FROM books

--                        distinct fullname
SELECT DISTINCT author_fname, author_lname
FROM books


--2. Order by
SELECT author_lname FROM books
ORDER BY author_lname

SELECT * FROM books
ORDER BY author_lname

SELECT title FROM books
ORDER BY released_year

-- Order by descending
SELECT title,released_year FROM books
ORDER BY released_year DESC

-- order by num
SELECT title,released_year FROM books
ORDER BY 2


--order by more than one attribute
SELECT
    author_fname,author_lname
    FROM books
    ORDER BY author_lname,author_fname



--3.LIMIT
-- five most recently releasedb  books
SELECT title,released_year FROM books
ORDER BY released_year DESC 
LIMIT 5

SELECT title,released_year FROM books
ORDER BY released_year DESC 
LIMIT 0,5

SELECT title,released_year FROM books
ORDER BY released_year DESC 
LIMIT 2,5

--4. LIKE
SELECT * FROM books
WHERE author_fname LIKE '%da%';

SELECT * FROM books
WHERE author_fname LIKE '%da';

SELECT * FROM books
WHERE author_fname LIKE 'da%';

SELECT title,stock_quantity FROM books
WHERE stock_quantity LIKE '____';

SELECT title FROM books
WHERE title LIKE '%\%%';

SELECT title FROM books
WHERE title LIKE '%\_%';
