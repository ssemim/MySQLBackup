SELECT *
 FROM books A
 INNER JOIN authors B ON A.authorId = B.id;

SELECT *
 FROM books A
 LEFT JOIN authors B ON A.authorId = B.id;

SELECT *
 FROM books A
 RIGHT OUTER JOIN authors B ON A.authorId = B.id;

SELECT *
 FROM authors AS A
 LEFT JOIN books B ON A.id = B.authorId;
 
SELECT *
 FROM authors AS A
 RIGHT JOIN books B ON A.id = B.authorId;
 
SELECT *
 FROM authors AS A
 INNER JOIN books B ON A.id = B.authorId;