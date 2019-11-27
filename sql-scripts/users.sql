CREATE TABLE UOC.Users (
	Email varchar(100) NOT NULL,
	Name varchar(100) NULL,
	Password varchar(100) NULL,
	AccountId varchar(100) NULL,
	CONSTRAINT Users_PK PRIMARY KEY (Email)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;


INSERT INTO UOC.Users (Email,Name,Password,AccountId) VALUES 
('andmagom@uoc.edu','Andres Mauricio Gomez','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f','1')
,('camig@uoc.edu','Camila Diaz Gomez','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','3')
,('yuri@uoc.edu','Yuri Viviana Lopez','8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414','2')
;