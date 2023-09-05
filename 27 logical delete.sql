CREATE TABLE authors_deleted LIKE authors;

SELECT * FROM authors;
SELECT * FROM authors_deleted;

INSERT INTO authors_deleted (id, firstName, lastName)
SELECT id, firstName, lastName FROM authors WHERE id = 5;

DELETE FROM authors WHERE id = 5;

-- DELETE FROM authors WHERE id = 5;
-- UPDATE authors
-- SET active = 0
-- WHERE id = 5;

-- SELECT * FROM authors WHERE active = 1;