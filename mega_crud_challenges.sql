--CREATE
--1. CREATE DATABASE
CREATE DATABASE shirts_db;
USE shirts_db

--2. create table
CREATE TABLE shirts(
    shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(100) NOT NULL,
    color VARCHAR(30),
    shirt_size VARCHAR(20),
    last_worn INT,
    PRIMARY KEY(shirt_id)
);

--3.insert multiple values into table
INSERT INTO shirts(
    article,
    color,
    shirt_size,
    last_worn
)
VALUES('t-shirt', 'white', 's', 10), 
('t-shirt', 'green', 's', 200), 
('polo shirt', 'black', 'm', 10),
 ('tank top', 'blue', 's', 50), 
 ('t-shirt', 'pink', 's', 0), 
 ('polo shirt', 'red', 'm', 5), 
 ('tank top', 'white', 's', 200),
  ('tank top', 'blue', 'm', 15);

SELECT * FROM shirts;

--4. Insert single entry
INSERT INTO shirts(
    article,
    color,
    shirt_size,
    last_worn
) VALUES(
    'polo shirt',
    'purple',
    'm',
    50
);


--READ
--5. select all shirt but print article and color
SELECT article,color FROM shirts;

--6. Select all medium shirts print everything except id
SELECT article, color,shirt_size,last_worn FROM shirts
WHERE shirt_size='M';


--UPDATE
--7. Update all polo shirt with size L
SELECT * FROM shirts
WHERE article = 'polo shirt';

UPDATE shirts SET shirt_size='L'
WHERE article='polo shirt';

SELECT * FROM shirts
WHERE article = 'polo shirt';

--8. update last_worn 15 days ago shirt to last_worn 0
UPDATE shirts SET last_worn=0
WHERE last_worn=15

SELECT * FROM shirts

--9. Update all white shirts change size to 'xs' and color to 'off white'
SELECT * FROM shirts
WHERE color ='white'

UPDATE shirts SET shirt_size='xs' , color='off white'
WHERE color ='white'

SELECT * FROM shirts
WHERE color ='off white'


--DELETE
--10. delete all shirts worn 200 days ago
SELECT * FROM shirts
WHERE last_worn=200

DELETE FROM shirts
WHERE last_worn=200

--11. Delete all tank tops
SELECT * FROM shirts
WHERE article='tank top'

DELETE FROM shirts
WHERE article='tank top'


--12. delete all shirts
SELECT * from shirts
DELETE from shirts

--13. drop entire table
DROP TABLE shirts

--14. DROP database
DROP DATABASE shirts_db
