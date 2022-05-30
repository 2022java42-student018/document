--DROP DATABASE IF EXIST bteam;
--DROP USER IF EXISTS postgres;
CREATE USER student WITH PASSWORD 'himitu';
CREATE DATABASE bteam OWNER student ENCODING 'UTF8';
--\c bteam
DROP TABLE customer;
--����e�[�u���̍쐬
CREATE TABLE customer (
    cID SERIAL PRIMARY KEY NOT NULL,
    cName VARCHAR(20) NOT NULL,
    cAddress VARCHAR(100) NOT NULL,
    cTell TEXT NOT NULL,
    cMail VARCHAR(255) NOT NULL,
    cBday DATE NOT NULL,
    cJdate DATE ,
    cWdate DATE
    );
     

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
    dName TEXT,
    renDate DATE NOT NULL,
    retDate DATE
    );

-- ���p�҃e�[�u���̃T���v���f�[�^

