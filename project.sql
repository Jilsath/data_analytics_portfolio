SELECT SUM([Line Total]) AS Total_Sales FROM dbo.[Sales Orders]

SELECT COUNT(DISTINCT(OrderNumber)) AS Total_Count FROM dbo.[Sales Orders]

SELECT SUM([Total Unit Cost] * [Order Quantity]) AS Total_expense FROM [Sales Orders]

SELECT SUM([Line Total])-SUM([Total Unit Cost] * [Order Quantity]) AS Total_Profit FROM [Sales Orders]
SELECT SUM([Order Quantity]) AS Total_Orders FROM [Sales Orders]

SELECT Channel, SUM([Line Total]) AS Sales
FROM [Sales Orders]
GROUP BY Channel;

SELECT top 10 Country, SUM(s.[Line Total]) AS Sales
FROM Regions r
JOIN dbo.[Sales Orders] s ON r.[Index] = s.[Delivery Region Index]
GROUP BY Country
Order By SUM(s.[Line Total]) DESC;


SELECT  top 10 [Product Name], SUM(s.[Line Total]) AS Sales
FROM Products p
JOIN [Sales Orders] s ON p.[Index] = s.[Product Description Index]
GROUP BY [Product Name]
Order By SUM(s.[Line Total]) DESC;

SELECT  top 10 [Customer Names], SUM(s.[Line Total]) AS Sales
FROM Customers c
JOIN [Sales Orders] s ON c.[Customer Index] = s.[Product Description Index]
GROUP BY [Customer Names]
Order By SUM(s.[Line Total]) DESC;

SELECT YEAR(OrderDate) AS YEARS,SUM([Line Total]) AS Total_Sales FROM [Sales Orders]
Group by YEAR(OrderDate)
Order by YEAR(OrderDate);
