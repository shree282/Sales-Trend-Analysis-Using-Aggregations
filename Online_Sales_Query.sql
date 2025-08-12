--View all data
SELECT * From OnlineSalesData;

--Top 5 products by total revenue
SELECT 
    Product_Name, 
    SUM(Total_Revenue) AS Total_Revenue
FROM OnlineSalesData
GROUP BY Product_Name
ORDER BY Total_Revenue DESC
LIMIT 5;

--Total revenue by region
SELECT 
    Region, 
    SUM(Total_Revenue) AS Total_Revenue
FROM OnlineSalesData
GROUP BY Region
ORDER BY Total_Revenue DESC;

--Orders placed in 2024
SELECT *
FROM OnlineSalesData
WHERE strftime('%Y', Date) = '2024';

--Monthly sales trend (all years)
SELECT 
    strftime('%Y-%m', Date) AS Month, 
    SUM(Total_Revenue) AS Total_Revenue
FROM OnlineSalesData
GROUP BY Month
ORDER BY Month;

-- Average order value per customer
SELECT 
    Transaction_ID, 
    AVG(Total_Revenue) AS Avg_Order_Value
FROM OnlineSalesData
GROUP BY Transaction_ID
ORDER BY Avg_Order_Value DESC;

--Top 3 regions by total quantity sold
SELECT 
    Region,
    SUM(Units_Sold) AS Total_Quantity
FROM OnlineSalesData
GROUP BY Region
ORDER BY Total_Quantity DESC;

--Products sold more than 5 units in total
SELECT 
    Product_Name, 
    SUM(Units_Sold) AS Total_Quantity
FROM OnlineSalesData
GROUP BY Product_Name
HAVING Total_Quantity > 5
ORDER BY Total_Quantity DESC;

--Highest revenue order
SELECT *
FROM OnlineSalesData
ORDER BY Total_Revenue DESC
LIMIT 1;

--Revenue by Category
SELECT 
    Product_Category, 
    SUM(Total_Revenue) AS Total_Revenue
FROM OnlineSalesData
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;






