CREATE TABLE UOC.News (
	Id varchar(100) NOT NULL,
	Title varchar(100) NULL,
	Body varchar(2000) NULL,
	`Datetime` DATETIME NULL,
	CONSTRAINT News_PK PRIMARY KEY (Id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

INSERT INTO UOC.News (Id,Title,Body,`Datetime`) VALUES 
('1','Criptografía Cuantica','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur efficitur augue leo, vitae sodales libero cursus pulvinar. Ut consequat aliquet magna vel molestie. Duis sit amet pretium eros. In placerat mi ac eros egestas tincidunt. Suspendisse vel metus dapibus, venenatis diam in, tempus quam. Praesent tempor nisl non sodales mollis. Donec mattis interdum ultrices. Pellentesque faucibus diam ac volutpat vehicula. Nunc vel velit enim. Vivamus nec turpis dolor. Integer suscipit, purus in feugiat ornare, ipsum dolor suscipit diam, dictum sodales eros dui sit amet sem. Etiam tempus purus eget tortor fermentum cursus','2019-11-27 02:09:58.000')
,('2','SQL Blind Injection','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur efficitur augue leo, vitae sodales libero cursus pulvinar. Ut consequat aliquet magna vel molestie. Duis sit amet pretium eros. In placerat mi ac eros egestas tincidunt. Suspendisse vel metus dapibus, venenatis diam in, tempus quam. Praesent tempor nisl non sodales mollis. Donec mattis interdum ultrices. Pellentesque faucibus diam ac volutpat vehicula. Nunc vel velit enim. Vivamus nec turpis dolor. Integer suscipit, purus in feugiat ornare, ipsum dolor suscipit diam, dictum sodales eros dui sit amet sem. Etiam tempus purus eget tortor fermentum cursus','2019-11-27 02:10:27.000')
,('3','Aircrack-ng','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur efficitur augue leo, vitae sodales libero cursus pulvinar. Ut consequat aliquet magna vel molestie. Duis sit amet pretium eros. In placerat mi ac eros egestas tincidunt. Suspendisse vel metus dapibus, venenatis diam in, tempus quam. Praesent tempor nisl non sodales mollis. Donec mattis interdum ultrices. Pellentesque faucibus diam ac volutpat vehicula. Nunc vel velit enim. Vivamus nec turpis dolor. Integer suscipit, purus in feugiat ornare, ipsum dolor suscipit diam, dictum sodales eros dui sit amet sem. Etiam tempus purus eget tortor fermentum cursus','2019-11-27 02:10:48.000')
;