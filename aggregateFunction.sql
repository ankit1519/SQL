--1 COUNT
SELECT COUNT(*) FROM books
            
SELECT COUNT(DISTINCT(author_fname))
    FROM books

     -- how many unique author
SELECT COUNT(DISTINCT author_fname,author_lname)
    FROM books

SELECT COUNT(title)
    FROM books where title LIKE '%the%'

USE book_shop


--2 GROUP BY
SELECT author_lname,COUNT(*) FROM books
GROUP BY author_lname

SELECT
    CONCAT('In ',released_year,' ', COUNT(*),' books released.') AS YEAR FROM books
    GROUP BY released_year

--3 MIN and MAX
SELECT MIN(released_year)
FROM books

SELECT MAX(pages)
from books

--          title of longest book
SELECT title ,pages FROM books
 WHERE pages=(SELECT MIN(pages) from books)

SELECT title FROM books
ORDER BY pages LIMIT 1

--4 MIN and MAX with group by

-- find the year when each author published their first book
SELECT CONCAT(author_fname,' ',author_lname), MIN(released_year) FROM books
GROUP BY author_fname,author_lname

--5 SUM
SELECT SUM(pages) AS entire_page
FROM books

--6. sum with group by
--         sum all pages each author has written
SELECT SUM(pages) as 'each author' FROM books
GROUP BY author_lname,author_fname


--7 AVG

SELECT AVG(released_year) AS avg_yr
FROM books

DESC books
-- AVG and group by
SELECT released_year ,AVG(stock_quantity) AS 'average stock per year'
FROM books
GROUP BY released_year
