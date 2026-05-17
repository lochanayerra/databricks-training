CREATE TABLE regex_practice (
    id INT,
    full_text VARCHAR(200),
    email VARCHAR(100),
    phone VARCHAR(30),
    mixed_value VARCHAR(100)
);

INSERT INTO regex_practice VALUES
(1,'EMP001_IN_91','karthik@gmail.com','+91-9876543210','abc123xyz'),
(2,'EMP002_US_01','rahul@yahoo.com','+1-7654321098','test45done'),
(3,'EMP003_UK_44','john@outlook.com','+44-9988776655','run9fast'),
(4,'EMP004_AU_61','steve@gmail.com','+61-8899776655','go88home'),
(5,'EMP005_IN_91','arjun@company.in','+91-7788996655','data77lake'),
(6,'EMP006_US_01','meera@gmail.com','+1-9090909090','spark12sql'),
(7,'EMP007_UK_44','rohan@yahoo.com','+44-7878787878','etl999job'),
(8,'EMP008_AU_61','alice@company.au','+61-6665554443','cloud7aws'),
(9,'EMP009_IN_91','vinay@gmail.com','+91-9988776655','hdfs34node'),
(10,'EMP010_US_01','sam@outlook.com','+1-6767676767','map5reduce'),
(11,'USR11_IN','neha@gmail.com','91-8899001122','abc1'),
(12,'USR12_US','tom@yahoo.com','01-9988776655','x9'),
(13,'USR13_UK','harry@company.co.uk','44-6677889900','z88'),
(14,'USR14_AU','olivia@gmail.com','61-4455667788','q777'),
(15,'USR15_IN','ankit@company.in','91-9988001122','karthik99'),
(16,'ACC_1001_91','user1@gmail.com','+91-8877665544','etl1'),
(17,'ACC_1002_01','user2@yahoo.com','+1-2233445566','etl22'),
(18,'ACC_1003_44','user3@outlook.com','+44-3344556677','etl333'),
(19,'ACC_1004_61','user4@gmail.com','+61-5566778899','etl4444'),
(20,'ACC_1005_91','user5@company.in','+91-6677889900','etl55555');
