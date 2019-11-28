
CREATE PROCEDURE UOC.getNews(
    IN idNews CHAR(100),
    OUT title CHAR(100),
    OUT body TEXT(2000),
    OUT dates CHAR(100)
)
BEGIN
  SELECT 
		News.Title,
		News.Datetime,
		News.Body into title,dates,body
	FROM 
		UOC.News
	WHERE 
		Id = idNews;
END 