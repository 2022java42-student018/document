--DROP DATABASE IF EXIST bteam;
--DROP USER IF EXISTS postgres;
--CREATE USER student WITH PASSWORD 'himitu';
<<<<<<< HEAD
--CREATE DATABASE bteam OWNER student ENCODING 'UTF8';
--psql bteam student;
--�p�X���[�h:himitu
=======
--CREATE DATEBASE bteam OWNER student ENCODING 'UTF8';
>>>>>>> cc0485fe66371002bb8963593f7427eac9349e60
--\c bteam
--����e�[�u���̍쐬
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
<<<<<<< HEAD
    INSERT INTO  customer (cNAME,cAddress,cTell,cMail,cBday,cJdate)VALUES('������Y','����','090-012-123','aaa@abc','1999-04-01','2022-05-27');
     INSERT INTO  item (isbn,)VALUES()

=======
    
    
INSERT INTO customer (cNAME,cAddress,cTell,cMail,cBday,cJdate) values ('������Y','����','090-1234-5678','abc@com','1999-04-01','2022-05-27');
>>>>>>> cc0485fe66371002bb8963593f7427eac9349e60
--�����e�[�u���̍쐬
CREATE TABLE item (
    dID SERIAL PRIMARY KEY,
    isbn INTEGER NOT NULL,
    dName TEXT NOT NULL,
    cCode INTEGER NOT NULL,
    aName TEXT NOT NULL,
    pName TEXT NOT NULL,
<<<<<<< HEAD
    aDate TEXT NOT NULL,
    pDate DATE NOT NULL,
    renDate DATE ,
    retDate DATE ,
    renCID INTEGER ,
    resCID INTEGER 
    );
    INSERT INTO  item (isbn,dName,cCode,aName,pName,aDate,pDate,)
                VALUES('4906638015','Java �̐��E','9','�X�e�B�[�u','�L���O�x�A�[�o��','2022-05-27','1999-02-12');
=======
    aDate DATE NOT NULL,
    pDate DATE NOT NULL,
    renDate DATE,
    retDate DATE,
    renCID INTEGER,
    resCID INTEGER
    );
    
DROP TABLE item
INSERT INTO item (dID,isbn,dName,cCode,aName,pName,aDate,pDate) values ('11111','22222','��','33333','����','��','2022-04-01','2022-05-01');   
  
  
>>>>>>> cc0485fe66371002bb8963593f7427eac9349e60
    

--�Ǘ��҃e�[�u���̍쐬
CREATE TABLE owner (
    aID SERIAL PRIMARY KEY,
    aName VARCHAR(20) NOT NULL,
    aPass VARCHAR(255) NOT NULL,
    aMail VARCHAR(255) NOT NULL
    );
--�ݏo�����e�[�u��
CREATE TABLE history (
    cID INTEGER PRIMARY KEY,
    dID INTEGER,
    renDate DATE,
    retDate DATE
    );
    
-- �e�[�u���̏��L�Ґݒ�

--ALTER TABLE member OWNER TO owner;

-- ���p�҃e�[�u���̃T���v���f�[�^
INSERT INTO customer (customer_name) values ('�����Y');
INSERT INTO customer(c,customer_mail) values ('����O�Y','aaaaaaaa');
INSERT INTO (customer_name,customer_mail) values ('����O�Y','aaaaaaaa');
 INSERT INTO item VALUES(1,1,'�A�A�A','111','aaa','bbb','1234','1990-04-12','1990-04-12','1990-04-12','456','789');
 
SELECT * FROM customer;
DROP TABLE customer;
SELECT rental_date FROM item;

SELECT rental_date FROM item WHERE document_id=1;

UPDATE item SET rental_date = current_date,return_date = current_date + 10 WHERE document_id = 1;
