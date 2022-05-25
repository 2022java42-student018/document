--DROP DATABASE IF EXIST bteam;
--DROP USER IF EXISTS postgres;
--CREATE USER student WITH PASSWORD 'himitu';
--CREATE DATEBASE bteam OWNER owner ENCODING 'UTF8';
--\c bteam
--会員テーブルの作成
CREATE TABLE customer (
    cID SERIAL PRIMARY KEY NOT NULL,
    cNAME VARCHAR(20) NOT NULL,
    cAddress VARCHAR(100) ,
    cTell VARCHAR(20),
    cMail VARCHAR(255) NOT NULL,
    cBday DATE ,
    cPass VARCHAR(255),
    cJdate DATE ,
    cWdate DATE
    );
    
--資料テーブルの作成
CREATE TABLE item (
    dID SERIAL PRIMARY KEY,
    isbn INTEGER NOT NULL,
    dName TEXT NOT NULL,
    cCode INTEGER NOT NULL,
    aName TEXT NOT NULL,
    pName TEXT NOT NULL,
    aDate TEXT NOT NULL,
    pdate DATE NOT NULL,
    renDate DATE NOT NULL,
    retDate DATE NOT NULL,
    renCID INTEGER NOT NULL,
    resCID INTEGER NOT NULL
    );
    
    

--管理者テーブルの作成
CREATE TABLE owner (
    aID SERIAL PRIMARY KEY,
    aName VARCHAR(20) NOT NULL,
    aPass VARCHAR(255) NOT NULL,
    aMail VARCHAR(255) NOT NULL
    );
--貸出履歴テーブル
CREATE TABLE history (
    cID INTEGER PRIMARY KEY,
    dID INTEGER,
    renDate DATE,
    retDate DATE
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
SELECT rental_date FROM item;

SELECT rental_date FROM item WHERE document_id=1;

UPDATE item SET rental_date = current_date,return_date = current_date + 10 WHERE document_id = 1;
