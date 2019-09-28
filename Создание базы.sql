Use master;
GO
IF DB_ID ('Catalogg') IS NOT NULL DROP DATABASE Catalogg;
GO
CREATE DATABASE Catalogg 
ON PRIMARY (NAME = Catalogg_dat, FILENAME ='D:\Catalogg.mdf',
 SIZE = 5 MB, MAXSIZE =UNLIMITED,             
 FILEGROWTH =1 MB)
 LOG ON (NAME = Catalogg_log,  FILENAME = 'D:\Catalogg.ldf',
  SIZE = 1 MB, MAXSIZE =30 MB,
  FILEGROWTH =1 MB)
  COLLATE Cyrillic_General_CI_AS;
  GO
