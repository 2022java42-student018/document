--DROP DATABASE IF EXIST bteam;
--DROP USER IF EXISTS postgres;
--CREATE USER postgres WITH PASSWORD 'himitu';
--CREATE DATEBASE bteam OWNER owner ENCODING 'UTF8';
--\c bteam
--会員テーブルの作成
CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY NOT NULL,
    customer_name VARCHAR(20) NOT NULL,
    customer_address VARCHAR(100) ,
    customer_tell VARCHAR(20),
    customer_mail VARCHAR(255) NOT NULL,
    customer_birthday DATE ,
    customer_password VARCHAR(255),
    join_date DATE ,
    leave_date DATE
    );
    
--資料テーブルの作成
CREATE TABLE item (
    document_id SERIAL PRIMARY KEY,
    isbn_code INTEGER NOT NULL,
    title TEXT NOT NULL,
    group_code INTEGER NOT NULL,
    writer TEXT NOT NULL,
    publisher TEXT NOT NULL,
    publication_date TEXT NOT NULL,
    arrival_date DATE NOT NULL,
    rental_date DATE NOT NULL,
    return_date DATE NOT NULL,
    rental_id INTEGER NOT NULL,
    reserve_id INTEGER NOT NULL
    );
    
    

--管理者テーブルの作成
CREATE TABLE owner (
    owner_id SERIAL PRIMARY KEY,
    owner_name VARCHAR(20) NOT NULL,
    password VARCHAR(255) NOT NULL
    );
--貸出履歴テーブル
CREATE TABLE history (
    customer_id INTEGER PRIMARY KEY,
    document_id INTEGER,
    rental_date DATE,
    return_date DATE
    );
    
-- テーブルの所有者設定

--ALTER TABLE member OWNER TO owner;

-- 利用者テーブルのサンプルデータ
INSERT INTO customer (customer_name) values ('阿井一郎');
INSERT INTO customer(customer_name,customer_mail) values ('阿井三郎','aaaaaaaa');
INSERT INTO (customer_name,customer_mail) values ('阿井三郎','aaaaaaaa');
 INSERT INTO item VALUES(1,1,'アアア','111','aaa','bbb','1234','1990-04-12','1990-04-12','1990-04-12','456','789');
 
SELECT * FROM customer;
DROP TABLE customer;
