
USE ecommerce_db;
SELECT * FROM Store;

SELECT SUM(Sales) FROM Store;

SELECT 
    SUM(Sales) AS Total_Revenue, 
    SUM(Profit) AS Total_Profit 
FROM Store;

SELECT Category, SUM(Profit) AS Total_Profit
FROM Store;

SELECT Category, SUM(Profit) AS Total_Profit
FROM Store
GROUP BY Category;

SELECT Category, SUM(Profit) AS Total_Profit
FROM Store
GROUP BY Category
ORDER BY Total_Profit DESC;

SELECT Product_Name, SUM(Sales) AS Total_Sales
FROM Store
GROUP BY Product_Name;

SET SQL_SAFE_UPDATES = 0;
START TRANSACTION;
DELETE FROM Store WHERE Product_Name = 'Wireless Mouse';



