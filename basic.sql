-- untuk masuk ke database postgres
psql -U postgres -p 5432 -h 127.0.0.1

psql -U postgres


-- untuk melihat database yang ada / yg pernah dibuat
/l

-- untuk membuat database dengan query sql
-- syntax: CREATE DATABASE [database]
-- contoh : 
CREATE DATABASE pf15;

-- untuk DATABASE
DROP DATABASE pf15;

-- untuk masuk /connect / pilih DATABASE
syntax : /c


-- untuk membuat table 
CREATE TABLE users(
    id INT,
    email VARCHAR(64),
    fullname VARCHAR(64),
    password VARCHAR(64),
    phone VARCHAR(64)
);

CREATE TABLE seller(
    id INT,
    email VARCHAR(64) NOT NULL,
    fullname VARCHAR(64) NOT NULL,
    password VARCHAR(64) NOT NULL,
    phone VARCHAR(64)
);
-- untuk melihat table yang sudah dibuat
\dt

-- untuk melihat detail table 
\d [nama_table]

-- untuk hapus table di dalam DATABASE
-- query: DROP TABLE users; 

-- CRUD
-- ==== CREATE ===
INSERT INTO [nama_table](field1, field2, field3, field4, field5) VALUES (1, 'risano@gmail.com', 'risano akbar', 'abcd1234', '081212323' );
INSERT INTO users(id, email, fullname, password, phone) VALUES (1, 'risano@gmail.com', 'risano akbar', 'abcd1234', '081212323' );
INSERT INTO users(id, fullname, email, password) VALUES (2,  'budi tanjung', 'buditanjung@gmail.com','cdab1234' );

-- === READ / MENAMPILKAN RECORD / DATA ===
-- syntax: SELECT field1, field2, field3 FROM [nama_table];
SELECT id, email, fullname, password, phone FROM users;
SELECT * FROM users;


-- UPDATE  / untuk edit record /data

UPDATE [name_table] SET [namefield] = 'nilai1', [namefield2] = 'nilai2' WHERE id = 'nilai id'

UPDATE users SET fullname = 'toni perdata', email = 'toni@gmail.com', phone = '08121212' WHERE id = 2


-- DELETE / untuk memhapus record / DATA
-- DELETE FROM [name_table] WHERE [namefield] = 'value'
DELETE FROM users WHERE id = 1;


-- 1
CREATE TABLE users(
    id INT,
    email VARCHAR(64) NOT NULL,
    fullname VARCHAR(64) NOT NULL,
    password VARCHAR(64),
    phone VARCHAR(64) DEFAULT '08XX',
    PRIMARY KEY(id)
);

-- + auto increment

CREATE TABLE users(
    id INT GENERATED ALWAYS AS IDENTITY,
    email VARCHAR(64) NOT NULL,
    fullname VARCHAR(64) NOT NULL,
    password VARCHAR(64),
    phone VARCHAR(64) DEFAULT '08XX',
    PRIMARY KEY(id)
);

INSERT INTO users(email, fullname, password, phone) VALUES ('risano@gmail.com', 'risano akbar', 'abcd1234', '081212323' );

INSERT INTO users(fullname, email, password) VALUES ('budi tanjung', 'buditanjung@gmail.com','cdab1234' );
INSERT INTO users(fullname, email, password) VALUES ('toni perdana', 'toniperdana@gmail.com','cdafsdf' ),('loli', 'loli@gmail.com', 'sdfasdfw3'), ('susi permata sari', 'susipermata@gmail.com', 'dcsafdasf');


-- SELECT untuk sorting SORTING

-- ORDER BY ID ASC/DESC

SELECT id, email, fullname, phone FROM users ORDER BY id DESC; 
SELECT id, email, fullname, phone FROM users ORDER BY fullname ASC; 


-- SELECT UNTUK FILTER

-- WHERE

SELECT * FROM users WHERE id <= 4 AND id > 2;

SELECT * FROM users WHERE phone = '08XX' ORDER BY fullname ASC;

SELECT * FROM users WHERE id in(1,5);


-- SEARCH
-- WHERE  = ganti dengan LIKE dan %

-- LIKE = > melihat huruf capital / tidaknya

-- ILIKE -> menghiraukan penulisan capital / huruf kecil
SELECT * FROM users WHERE fullname ILIKE '%PER%';