USE MEDICART;

SELECT orders.OrderID,
	orderdetails.ProductID,
    orderdetails.Quantity
FROM Orders
INNER JOIN  orderdetails
ON orders.OrderID = orderdetails.OrderID;

SELECT orders.OrderID,
	orderdetails.ProductID,
    orderdetails.Quantity
FROM orders
LEFT JOIN Orderdetails
ON Orders.orderID = orderdetails.orderid;

SELECT orders.OrderID,CustomerName,
	orderdetails.ProductID,
    orderdetails.Quantity
FROM orders
RIGHT JOIN Orderdetails
ON Orders.orderID = orderdetails.orderid;

SELECT orders.orderID,TotalAmount,
	Payment.PaymentMode,
	Payment.PaymentAmount
FROM Orders
INNER JOIN Payment
ON orders.OrderID = Payment.OrderID;

SELECT product.ProductName,
	Category.CategoryName
FROM product
INNER JOIN Category
ON product.CategoryID = Category.CategoryID;

SELECT Orders.OrderID,
Product.ProductName,
OrderDetails.Quantity,
Payment.PaymentStatus
FROM Orders
INNER JOIN OrderDetails
ON Orders.OrderID = OrderDetails.OrderID
INNER JOIN Product
ON OrderDetails.ProductID = Product.ProductID
LEFT JOIN Payment
ON Orders.OrderID = Payment.OrderID;