
CREATE TABLE Users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    bio TEXT,
    country VARCHAR(2)
);
--@block
INSERT INTO Users (email, bio, country)
VALUES (
    'nacho@libre.com',
    'fromm the hit movie nacho libre',
    'MX' 
);
-- @block
INSERT INTO Users (email, bio, country)
VALUES 
    ('himan@gmail.com', 'foo', 'US'),
    ('himom@aaa.com', 'bar', 'MX'),
    ('bonjour@dafaf.com.', 'baz','FR');


-- @block
SELECT * FROM Users;

-- @block
SELECT email, id FROM Users;

-- @block
SELECT email, id FROM Users
LIMIT 2;

-- @block
SELECT email, id FROM Users
ORDER BY id ASC
LIMIT 2;

-- @block
SELECT email, id FROM Users
ORDER BY id DESC
LIMIT 2;

-- @block
SELECT email, id FROM Users

WHERE country = 'US'
AND id > 1

ORDER BY id DESC
LIMIT 2;

-- @block
SELECT email, id FROM Users

WHERE country = 'US'
OR id > 1

ORDER BY id DESC
LIMIT 2;

-- @block
SELECT email, id FROM Users

WHERE country = 'US'
AND email like 'h%'

ORDER BY id DESC
LIMIT 2;

-- @block
SELECT email, id FROM Users

WHERE country = 'US'
AND email LIKE= 'hello%'

ORDER BY id DESC
LIMIT 2;

-- @block
CREATE INDEX email_index ON Users(email);

-- @block 
CREATE TABLE Rooms(
    id INT AUTO_INCREMENT,
    street VARCHAR(255),
    owner_id INT NOT NULL,
    PRIMARY KEY (id)
    FOREIGN KEY (owner_id) REFERENCES Users(id)
);

