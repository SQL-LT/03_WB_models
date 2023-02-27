SELECT * FROM mydb.user;
SELECT * FROM mydb.posts;
SELECT * FROM mydb.productlist;

SELECT * 
FROM mydb.user 
INNER JOIN mydb.posts ON mydb.user.id = mydb.posts.user_id;

SELECT product AS Ware, price AS Preis
FROM mydb.productlist
WHERE category = "Computer"
ORDER BY price DESC;
