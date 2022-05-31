--DROP DATABASE IF EXIST bteam;
--DROP USER IF EXISTS postgres;
CREATE USER student WITH PASSWORD 'himitu';
CREATE DATABASE bteam OWNER student ENCODING 'UTF8';

--\c bteam
DROP TABLE customer;
--����e�[�u���̍쐬
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
    --�T���v��
     --INSERT INTO customer (cName,cAddress,cTell,cMail,cBday)VALUES(���,����,03-1111-1111,abc@bteam.co.jp,1999-04-01,);
     --DELETE FROM customer WHERE cID=1

--�����e�[�u���̍쐬
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

--�Ǘ��҃e�[�u���̍쐬
CREATE TABLE owner (
    oID SERIAL PRIMARY KEY,
    oName VARCHAR(20) NOT NULL,
    oPass VARCHAR(255) NOT NULL,
    oMail VARCHAR(255) NOT NULL
    );
    INSERT INTO owner(oName,oPass,oMail)VALUE('','','');
    
        INSERT INTO owner(oName,oPass,oMail)VALUEs('student','himitu','owner@google.com');
    drop table owner;
--�ݏo�����e�[�u��
CREATE TABLE history (
    cID INTEGER NOT NULL,
    dName TEXT NOT NULL,
    renDate DATE NOT NULL,
    retDate DATE
    );

-- ���p�҃e�[�u���̃T���v���f�[�^
INSERT INTO customer ()VALUES()
���
     INSERT INTO customer (cName,cAddress,cTell,cMail,cBday)VALUES('���','����','03-1111-1111','abc@bteam.co.jp','1999-04-01');
     INSERT INTO customer (cName,cAddress,cTell,cMail,cBday)VALUES('����','���','043-2222-2222','xyz@bteam.co.jp','1980-12-25');
     INSERT INTO customer (cName,cAddress,cTell,cMail,cBday)VALUES('','','','','');
     
    INSERT INTO customer (cName, cAddress, cTell, cMail, cBday)VALUES ('�c�����Y','��ʌ��������܎s','020-2222-2222','mmm@google.com','1999-12-12');
    INSERT INTO customer (cName, cAddress, cTell, cMail, cBday)VALUES ('MadisonMandara','���ꌧ����s','0120-4152-9578','MadisonM@google.com','2012-05-14');
    INSERT INTO customer (cName, cAddress, cTell, cMail, cBday)VALUES ('��������','�򕌌��򕌎s','0125-1245-4568','nishiokam@google.com','2016-08-26');
    INSERT INTO customer (cName, cAddress, cTell, cMail, cBday)VALUES ('���^�R�q','�k�C������s','080-1022-1545','mOsaka@google.com','1975-01-27');
����        
    UPDATE item set aDate = current_date;
    INSERT INTO item (isbn,dName,cCode,aName,pName,pDate)VALUES('','','','','');
    
    insert into item(isbn , dName , cCode , aName, pName , pDate)values(9586746384,'����',1,'�{�c���ߎq','������Ѓe�b�N','1998-05-06');
    insert into item(isbn , dName, cCode , aName , pName , pDate,renCID )values(9845687212,'����',4,'���R�T��','�L����Ђ��܂���','2017-09-27',1);
    insert into item(isbn , dName, cCode , aName , pName , pDate,renCID)values(4589568795,'����������[',7,'�ۋu�G��','�e�r�������','2005-12-13',1);
    insert into item(isbn , dName , cCode , aName , pName , pDate,renCID)values(5687454980,'�����Ă�',3,'JamesJohn','ABC�������','1965-04-27',1);
    insert into item(isbn , dName , cCode , aName, pName , pDate,renCID)values(9568326589,'�Ȃɂʂ˂�',4,'�T�C�g�E�J�Y�R','������Ђ�������','2014-06-18',1);
    insert into item(isbn , dName, cCode , aName , pName , pDate )values(7451236548,'�͂Ђӂւ�',7,'mh�Ԏq','�L����Ђς��ς�','2016-12-25');
    insert into item(isbn , dName, cCode , aName , pName , pDate)values(5142365789,'�܂݂ނ߂�',6,'��޺ϴ��','���������������','2001-10-01');
    insert into item(isbn , dName , cCode , aName , pName , pDate)values(4125654789,'����',9,'�ɂ���','�`�����`�����������','1945-11-05');
�I�[�i�[
    INSERT INTO owner(oName,oPass,oMail)VALUES('student','himitu','owner@bteam.co.jp');
    
�ݏo����()
    INSERT INTO history (dName,dName,renDate,renDate)VALUES('','','','');


