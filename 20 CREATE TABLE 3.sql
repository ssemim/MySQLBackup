-- 도서
-- 제목 가격 할인율
-- 파워자바, 30000, 5
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `discountRate` int NOT NULL DEFAULT '0',
  `authorId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_book_authors_I_idx` (`authorId`),
  CONSTRAINT `fk_book_authors_I` FOREIGN KEY (`authorId`) REFERENCES `authors` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DESC books;

INSERT INTO books (title, price) VALUES ('소설1', 15000);
INSERT INTO books (title, price, discountRate) VALUES ('파워자바', 30000, 5);
INSERT INTO books (title, price) VALUES ('시집1', 10000), ('SF1', 20000), ('수필1', 9000);

SELECT * FROM books;
-- 작가
-- 작가의 이름 작가의 성
CREATE TABLE authors (
	id INT PRIMARY KEY AUTO_INCREMENT
	, firstName VARCHAR(15) NOT NULL
    , lastName VARCHAR(15) NOT NULL
);

INSERT INTO authors (firstName, lastName) VALUES ('길동', '고'), ('작가', '김');

SELECT * FROM authors;

-- ALTER TABLE books ADD COLUMN authorId INT;

SELECT * FROM books;

DELETE FROM authors WHERE id = 1;