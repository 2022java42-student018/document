--DROP DATABASE IF EXIST bteam;
--DROP USER IF EXISTS postgres;
CREATE USER student WITH PASSWORD 'himitu';
CREATE DATABASE bteam OWNER student ENCODING 'UTF8';

--\c bteam
DROP TABLE customer;
--ïõe[uÌì¬
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
    --Tv
     --INSERT INTO customer (cName,cAddress,cTell,cMail,cBday)VALUES(éØ,,03-1111-1111,abc@bteam.co.jp,1999-04-01,);
     --DELETE FROM customer WHERE cID=1

--¿e[uÌì¬
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

--ÇÒe[uÌì¬
CREATE TABLE owner (
    oID SERIAL PRIMARY KEY,
    oName VARCHAR(20) NOT NULL,
    oPass VARCHAR(255) NOT NULL,
    oMail VARCHAR(255) NOT NULL
    );
    INSERT INTO owner(oName,oPass,oMail)VALUE('','','');
    
        INSERT INTO owner(oName,oPass,oMail)VALUEs('student','himitu','owner@google.com');
    drop table owner;
--Ýoðe[u
CREATE TABLE history (
    cID INTEGER PRIMARY KEY,
    dName TEXT NOT NULL,
    renDate DATE NOT NULL,
    retDate DATE
    );

-- pÒe[uÌTvf[^
INSERT INTO customer ()VALUES()
ïõ
     INSERT INTO customer (cName,cAddress,cTell,cMail,cBday)VALUES('éØ','','03-1111-1111','abc@bteam.co.jp','1999-04-01');
     INSERT INTO customer (cName,cAddress,cTell,cMail,cBday)VALUES('²¡','åã','043-2222-2222','xyz@bteam.co.jp','1980-12-25');
     INSERT INTO customer (cName,cAddress,cTell,cMail,cBday)VALUES('','','','','');
     
    INSERT INTO customer (cName, cAddress, cTell, cMail, cBday)VALUES ('c¾Y','éÊ§³¢½Üs','020-2222-2222','mmm@google.com','1999-12-12');
    INSERT INTO customer (cName, cAddress, cTell, cMail, cBday)VALUES ('MadisonMandara','«ê§¼ìs','0120-4152-9578','MadisonM@google.com','2012-05-14');
    INSERT INTO customer (cName, cAddress, cTell, cMail, cBday)VALUES ('¼ª³÷','ò§òs','0125-1245-4568','nishiokam@google.com','2016-08-26');
    INSERT INTO customer (cName, cAddress, cTell, cMail, cBday)VALUES ('åã^Rq','kC¹®ìs','080-1022-1545','mOsaka@google.com','1975-01-27');
¿        
    UPDATE item set aDate = current_date;
    INSERT INTO item (isbn,dName,cCode,aName,pName,pDate)VALUES('','','','','');
    
    insert into item(isbn , dName , cCode , aName, pName , pDate)values(4512565478,' ¢¤¦¨',1,'RûÎY','®ïÐebN','2003-09-12');
    insert into item(isbn , dName, cCode , aName , pName , pDate )values(9845687212,'©«­¯±',4,'{¼mq','LÀïÐ·Ü¢é','2021-04-15');
    insert into item(isbn , dName, cCode , aName , pName , pDate)values(4589568795,'³µ·¹»',7,'ÛxIv','er®ïÐ','2017-11-24');
    insert into item(isbn , dName , cCode , aName , pName , pDate)values(5687454980,'½¿ÂÄÆ',3,'JamesJohn','ABC®ïÐ','1965-04-27');
    insert into item(isbn , dName , cCode , aName, pName , pDate)values(9568326589,'ÈÉÊËÌ',4,'TCgEJYR','®ïÐà®à®','2014-06-18');
    insert into item(isbn , dName, cCode , aName , pName , pDate )values(7451236548,'ÍÐÓÖÙ',7,'mhÔq','LÀïÐÏ­Ï­','2016-12-25');
    insert into item(isbn , dName, cCode , aName , pName , pDate)values(5142365789,'ÜÝÞßà',6,'¼½ÞºÏ´Ê×','²­²­®ïÐ','2001-10-01');
    insert into item(isbn , dName , cCode , aName , pName , pDate)values(4125654789,'âäæ',9,'É¸à','``®ïÐ','1945-11-05');
I[i[
    INSERT INTO owner(aName,aPass,aMail)VALUES('student','himitu','owner@bteam.co.jp');
    
Ýoð()
    INSERT INTO history (dName,dName,renDate,renDate)VALUES('','','','');


