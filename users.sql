CREATE TABLE IF NOT EXISTS users (
	userNo INT AUTO_INCREMENT
	, id VARCHAR(15) UNIQUE NOT NULL
    , email VARCHAR(30) UNIQUE NOT NULL
	, subId CHAR(1)

    , PRIMARY KEY (userNo)
    , FOREIGN KEY (subId) REFERENCES subscribe (id)
);

CREATE TABLE IF NOT EXISTS subscribe (
	id CHAR(1)
    , type VARCHAR(5) NOT NULL
    , price INT NOT NULL
    , PRIMARY KEY (id)
);

INSERT INTO subscribe (id, type, price) VALUES ('N', '일반', 10000)
											, ('P', '고급', 15000)
                                            , ('F', '무료', 0);
                                            
SELECT * FROM subscribe;

INSERT INTO users (id, email, subId) VALUES ('bat', 'bat@bat', 'N')
											, ('super', 'super@super', 'P')
                                            , ('spider', 'spider@spider', 'N')
                                            , ('punisher', 'punisher@punisher', 'F');
                                            
SELECT * FROM users;

