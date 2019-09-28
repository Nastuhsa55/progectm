/*заполнение таблицы заказчики*/
USE Catalogg
GO
SET NOCOUNT ON
DELETE FROM Customer
INSERT INTO Customer (c_ID,c_name,c_phone_number) VALUES
(1, 'OPTcompany', '89131334567'),
(2, 'MDV', '89131334969'),
(3, 'BuildBiz', '89131334968')
GO

/*заполнение таблицы подрядчики*/
USE Catalogg
GO
SET NOCOUNT ON
DELETE FROM Contractor
INSERT INTO Contractor (co_ID,co_name,co_email,co_phone_number) VALUES
(1, 'JOAT','jack@mail.ru', '89132234562'),
(2, 'Ghand','GH@mail.ru', '89131833496'),
(3, 'SQR','SQR@mail.ru' ,'89131334961')
GO

/*заполнение таблицы заявки*/

USE Catalogg
GO
SET NOCOUNT ON
DELETE FROM Request
INSERT INTO Request (r_ID,r_contractor,r_customer,r_status,r_task) VALUES
(1, 1 ,1,'утверждён', 'сайт'),
(2, 2 ,2,'отклонён', 'проект здания'),
(3, 3, 3,'утверждается' ,'автоматизация системы')
GO