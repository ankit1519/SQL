--Assignment1 - Reverse and uppercase following sentence


SELECT REVERSE(
    UPPER("Why does my cat look at me with such hatred?")
) AS reversed_and_uppercased;


--Assignment 2.. figuring out result
SELECT
    REPLACE(
        CONCAT('I',' ','love',' ','(mai nhi btaunga🙃)'),
        ' ',
        '❤️'
    ) AS my_love;

--Assignment 3- Replace space with -> in title
SELECT
	REPLACE (title,' ', '->')
	AS modif_title FROM books

-- Assignment 4- Print auth lastname forward and backward
SELECT
    author_lname as forwards,
    REVERSE(author_lname)
    AS backwards FROM books;


--Assignment 5 - full author name in caps
SELECT 
    UPPER(
        CONCAT(author_fname,' ',author_lname)
    )
    AS 'full name in caps' FROM books

--Assignment 6- Title was released in year

SELECT
    CONCAT(title, ' was released in ',released_year)
    AS blurb FROM books

--Assignment 7- print book title and the length of each title
SELECT
    title ,
    CHAR_LENGTH(title) AS 'character count'
    FROM books;

--Assignment 8- short title(first 10 char then ...), author name(laastname,firstname), quantity( x in stocks)
SELECT
    CONCAT(SUBSTR(title,1,10),'...') AS 'short title',
    CONCAT(author_lname,', ',author_fname) AS 'author',
    CONCAT(stock_quantity,' in stock') AS 'quantity'
    FROM books
