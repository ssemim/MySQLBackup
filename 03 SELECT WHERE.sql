SHOW DATABASES;

USE world;
USE sakila;

SHOW TABLES;

DESC country;

SELECT Code, Name, SurfaceArea, Population FROM country;
SELECT Name, Code, SurfaceArea, Population FROM country;

SELECT * FROM country;

SELECT * FROM country WHERE Code = 'KOR';
SELECT *
 FROM country
 WHERE Continent = 'Asia';
 
-- 국가명(Name) 'Japan' 조회 (Name, Population, GNP)
SELECT Name, Population, GNP FROM country WHERE Name = 'Japan';
-- 국가명 'China' 조회
SELECT * FROM country WHERE Name = 'China';






