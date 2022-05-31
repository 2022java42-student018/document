--DROP DATABASE IF EXIST bteam;
--DROP USER IF EXISTS postgres;
CREATE USER student WITH PASSWORD 'himitu';
CREATE DATABASE bteam OWNER student ENCODING 'UTF8';

--\c bteam
DROP TABLE customer;
--会員テーブルの作成
CREATE TABLE customer (
    cID SERIAL PRIMARY KEY,
    cName VARCHAR(20) NOT NULL,
    cAddress VARCHAR(100) NOT NULL,
    cTell TEXT NOT NULL,
    cMail VARCHAR(255) NOT NULL,
    cBday DATE NOT NULL,
    cJdate DATE ,
    cWdate DATE
    );
    --サンプル
     --INSERT INTO customer (cName,cAddress,cTell,cMail,cBday)VALUES(鈴木,東京,03-1111-1111,abc@bteam.co.jp,1999-04-01,);
     --DELETE FROM customer WHERE cID=1

--資料テーブルの作成
CREATE TABLE item (
    dID SERIAL PRIMARY KEY,
    isbn BIGINT NOT NULL, 
    dName TEXT NOT NULL,
    cCode INTEGER NOT NULL,
    aName TEXT NOT NULL,
    pName TEXT NOT NULL,
    pDate DATE NOT NULL,
    aDate DATE ,
    renDate DATE ,
    retDate DATE ,
    renCID INTEGER ,
    resCID INTEGER 
    );
     INSERT INTO item (isbn,dName,cCode,aName,pName,pDate)VALUES('','','','','');

--管理者テーブルの作成
CREATE TABLE owner (
    oID SERIAL PRIMARY KEY,
    oName VARCHAR(20) NOT NULL,
    oPass VARCHAR(255) NOT NULL,
    oMail VARCHAR(255) NOT NULL
    );
    INSERT INTO owner(oName,oPass,oMail)VALUE('','','');
    
        INSERT INTO owner(oName,oPass,oMail)VALUEs('student','himitu','owner@google.com');
    drop table owner;
--貸出履歴テーブル
CREATE TABLE history (
    cID INTEGER PRIMARY KEY,
    dName TEXT NOT NULL,
    renDate DATE NOT NULL,
    retDate DATE
    );

-- 利用者テーブルのサンプルデータ
INSERT INTO customer ()VALUES()
会員
     INSERT INTO customer (cName,cAddress,cTell,cMail,cBday)VALUES('鈴木','東京','03-1111-1111','abc@bteam.co.jp','1999-04-01');
     INSERT INTO customer (cName,cAddress,cTell,cMail,cBday)VALUES('佐藤','大阪','043-2222-2222','xyz@bteam.co.jp','1980-12-25');
     INSERT INTO customer (cName,cAddress,cTell,cMail,cBday)VALUES('','','','','');
     
    INSERT INTO customer (cName, cAddress, cTell, cMail, cBday)VALUES ('田中太郎','埼玉県さいたま市','020-2222-2222','mmm@google.com','1999-12-12');
    INSERT INTO customer (cName, cAddress, cTell, cMail, cBday)VALUES ('MadisonMandara','沖縄県名護市','0120-4152-9578','MadisonM@google.com','2012-05-14');
    INSERT INTO customer (cName, cAddress, cTell, cMail, cBday)VALUES ('西岡正樹','岐阜県岐阜市','0125-1245-4568','nishiokam@google.com','2016-08-26');
    INSERT INTO customer (cName, cAddress, cTell, cMail, cBday)VALUES ('大阪真由子','北海道旭川市','080-1022-1545','mOsaka@google.com','1975-01-27');
資料        
    UPDATE item set aDate = current_date;
    INSERT INTO item (isbn,dName,cCode,aName,pName,pDate)VALUES('','','','','');
    
    insert into item(isbn , dName , cCode , aName, pName , pDate)values(4512565478,'あいうえお',1,'山口茂雄','株式会社テック','2003-09-12');
    insert into item(isbn , dName, cCode , aName , pName , pDate )values(9845687212,'かきくけこ',4,'宮西洋子','有限会社すまいる','2021-04-15');
    insert into item(isbn , dName, cCode , aName , pName , pDate)values(4589568795,'さしすせそ',7,'丸富紀夫','菊池株式会社','2017-11-24');
    insert into item(isbn , dName , cCode , aName , pName , pDate)values(5687454980,'たちつてと',3,'JamesJohn','ABC株式会社','1965-04-27');
    insert into item(isbn , dName , cCode , aName, pName , pDate)values(9568326589,'なにぬねの',4,'サイトウカズコ','株式会社もぐもぐ','2014-06-18');
    insert into item(isbn , dName, cCode , aName , pName , pDate )values(7451236548,'はひふへほ',7,'mh花子','有限会社ぱくぱく','2016-12-25');
    insert into item(isbn , dName, cCode , aName , pName , pDate)values(5142365789,'まみむめも',6,'ｼｽﾞｺﾏｴﾊﾗ','ごくごく株式会社','2001-10-01');
    insert into item(isbn , dName , cCode , aName , pName , pDate)values(4125654789,'やゆよ',9,'にずも','チュルチュル株式会社','1945-11-05');
オーナー
    INSERT INTO owner(aName,aPass,aMail)VALUES('student','himitu','owner@bteam.co.jp');
    
貸出履歴()
    INSERT INTO history (dName,dName,renDate,renDate)VALUES('','','','');


