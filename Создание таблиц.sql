/*Создание таблицы заказчик*/
USE Catalogg ;
GO
IF EXISTS (SELECT * FROM sys.tables WHERE NAME = 'Customer')
DROP TABLE Customer;
CREATE TABLE Customer
( c_ID INT NOT NULL,
  c_name VARCHAR (30) NOT NULL,
  c_phone_number VARCHAR (11) ,
  CONSTRAINT PK_Customer PRIMARY KEY (c_ID));
  GO

  /*Создание таблицы подрядчик*/
USE Catalogg ;
GO
IF EXISTS (SELECT * FROM sys.tables WHERE NAME = 'Contractor')
DROP TABLE Contractor;
CREATE TABLE Contractor
( co_ID INT NOT NULL,
  co_name VARCHAR (30) NOT NULL,
  co_email Varchar (30) ,
  co_phone_number VARCHAR (11) ,
  CONSTRAINT PK_Contractor PRIMARY KEY (co_ID));
  GO
  /*Создание таблицы статус*/
  USE Catalogg ;
GO
IF EXISTS (SELECT * FROM sys.tables WHERE NAME = 'Statuss')
DROP TABLE Statuss;
CREATE TABLE Statuss
( s_ID INT NOT NULL,
  s_name VARCHAR (30) NOT NULL,
  CONSTRAINT PK_Statuss PRIMARY KEY (s_ID));
  GO
    /*Создание таблицы заявка*/
USE Catalogg ;
GO
IF EXISTS (SELECT * FROM sys.tables WHERE NAME = 'Request')
DROP TABLE Request;
CREATE TABLE Request
( r_ID INT NOT NULL,
  r_contractor INT NOT NULL,
  r_customer INT NOT NULL,
  r_status INT NOT NULL,
  r_task VARCHAR (30),
  CONSTRAINT PK_Request PRIMARY KEY (r_ID),
  CONSTRAINT FK_Request_Customer
	FOREIGN KEY (r_customer) REFERENCES Customer (c_ID)
	ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_Request_Contractor
	FOREIGN KEY (r_contractor) REFERENCES Contractor (co_ID)
	ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_Request_Status
	FOREIGN KEY (r_status) REFERENCES Statuss (s_ID)
	ON UPDATE CASCADE ON DELETE CASCADE
	);
  GO