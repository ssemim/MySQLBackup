USE my_db;

SELECT * FROM books;
SELECT * FROM authors;
-- cross join
SELECT * FROM books, authors;

SELECT A.title, A.price, A.discountRate, B.firstName, B.lastName
 FROM books AS A, authors AS B
 WHERE A.authorId = B.id;