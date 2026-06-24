
Show tables;

SELECT COUNT(*) FROM ecommerce_data;

SELECT * FROM ecommerce_data limit 5;

select sum(Sales) AS Total_Sales from ecommerce_data;

select sum(profit) AS Total_Profit from ecommerce_data;

select count(*) AS Total_orders from ecommerce_data;

Select  Category, Sum(sales) AS Total_sales from ecommerce_data group by category order by Total_sales DESC; 

Select Category, Sum(Profit) AS Total_Profit from ecommerce_data group by category order by Total_profit DESC;

Select Category,  Sum(profit) AS Total_Profit from ecommerce_data group by category order by Total_profit ASC;

Select Region, Sum(sales) AS Total_sales from ecommerce_data group by Region order by Total_sales DESC;

Select Region, Sum(profit) AS Total_profit from ecommerce_data group by Region order by Total_profit DESC;

SELECT YEAR(`Order Date`) AS Order_Year, COUNT(*) AS Total_Orders FROM ecommerce_data GROUP BY YEAR(`Order Date`) ORDER BY Order_Year;

SHOW COLUMNS FROM ecommerce_data;

SELECT YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS Order_Year, COUNT(*) AS Total_Orders FROM ecommerce_data GROUP BY YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) ORDER BY Total_Orders DESC;

SELECT `Sub-Category`, SUM(Sales) AS Total_Sales FROM ecommerce_data GROUP BY `Sub-Category` ORDER BY Total_Sales DESC Limit 1;

Select `Ship mode`, Count(*) AS Total_orders from ecommerce_data Group by `Ship mode` order by Total_orders Desc limit 1;