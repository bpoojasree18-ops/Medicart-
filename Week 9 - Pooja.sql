USE MEDICART;

SELECT COUNT(*) AS TotalProducts
FROM Product;

SELECT SUM(TotalAmount) AS TotalSales
FROM Orders;

SELECT AVG(TotalAmount) AS AverageSales
FROM Orders;

SELECT MIN(TotalAmount) AS MinimumSales,
       MAX(TotalAmount) AS MaximumSales
FROM Orders;

SELECT CustomerName,
       ProductQuantity,
       TotalAmount,
       OrderStatus
FROM Orders;

SELECT CustomerName,
       SUM(TotalAmount) AS PurchaseAmount
FROM Orders
GROUP BY CustomerName
ORDER BY PurchaseAmount DESC
LIMIT 5;

SELECT Product.ProductName,
       SUM(OrderDetails.Quantity) AS TotalQuantitySold
FROM Product
INNER JOIN OrderDetails
ON Product.ProductID = OrderDetails.ProductID
GROUP BY Product.ProductName
ORDER BY TotalQuantitySold DESC;

SELECT Category.CategoryName,
       SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS CategorySales
FROM Category
INNER JOIN Product
ON Category.CategoryID = Product.CategoryID
INNER JOIN OrderDetails
ON Product.ProductID = OrderDetails.ProductID
GROUP BY Category.CategoryName;

SELECT SUM(Quantity) AS TotalQuantitySold
FROM OrderDetails;

SELECT Product.ProductName,
       SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS SalesAmount
FROM Product
INNER JOIN OrderDetails
ON Product.ProductID = OrderDetails.ProductID
GROUP BY Product.ProductName
ORDER BY SalesAmount DESC;