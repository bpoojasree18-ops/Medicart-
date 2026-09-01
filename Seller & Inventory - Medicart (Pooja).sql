USE MEDICART;

CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

INSERT INTO Seller VALUES
(201, "ABC PHARMA", "9876500001", "abcpharma@gmail.com", "Chennai"),
(202, "MEDICURE PHARMACY", "9876500002", "medicure@gmail.com", "Madurai"),
(203, "HEALTH PLUS", "9876500003", "healthplus@gmail.com", "Coimbatore"),
(204, "LIFE CARE", "9876500004", "lifecare@gmail.com", "Salem"),
(205, "MEDI WORLD", "9876500005", "mediworld@gmail.com", "Trichy"),
(206, "APOLLO MEDICALS", "9876500006", "apollomedicals@gmail.com", "Chennai"),
(207, "SUN PHARMA", "9876500007", "sunpharma@gmail.com", "Madurai"),
(208, "CARE PHARMACY", "9876500008", "carepharmacy@gmail.com", "Coimbatore"),
(209, "MEDILIFE", "9876500009", "medilife@gmail.com", "Salem"),
(210, "GOOD HEALTH PHARMA", "9876500010", "goodhealth@gmail.com", "Trichy"),
(211, "TRUST PHARMACY", "9876500011", "trustpharmacy@gmail.com", "Chennai"),
(212, "HEALTH FIRST", "9876500012", "healthfirst@gmail.com", "Madurai"),
(213, "MEDI MART", "9876500013", "medimart@gmail.com", "Coimbatore"),
(214, "PHARMA CARE", "9876500014", "pharmacare@gmail.com", "Salem"),
(215, "LIFE PHARMA", "9876500015", "lifepharma@gmail.com", "Trichy"),
(216, "MEDICAL POINT", "9876500016", "medicalpoint@gmail.com", "Chennai"),
(217, "HEALTH MART", "9876500017", "healthmart@gmail.com", "Madurai"),
(218, "MEDI SUPPLIERS", "9876500018", "medisuppliers@gmail.com", "Coimbatore"),
(219, "PHARMA WORLD", "9876500019", "pharmaworld@gmail.com", "Salem"),
(220, "CITY PHARMACY", "9876500020", "citypharmacy@gmail.com", "Trichy"),
(221, "GREEN PHARMA", "9876500021", "greenpharma@gmail.com", "Chennai"),
(222, "SAFE MEDICINES", "9876500022", "safemedicines@gmail.com", "Madurai"),
(223, "MEDI EXPRESS", "9876500023", "mediexpress@gmail.com", "Coimbatore"),
(224, "CARE MEDICALS", "9876500024", "caremedicals@gmail.com", "Salem"),
(225, "BEST HEALTH PHARMA", "9876500025", "besthealth@gmail.com", "Trichy");

SELECT * FROM Seller;

CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);

INSERT INTO Inventory VALUES
(301, 101, 201, "AVAILABLE", 25),
(302, 102, 202, "AVAILABLE", 15),
(303, 103, 203, "AVAILABLE", 10),
(304, 104, 204, "AVAILABLE", 12),
(305, 105, 205, "AVAILABLE", 30),
(306, 106, 206, "AVAILABLE", 20),
(307, 107, 207, "UNAVAILABLE", 0),
(308, 108, 208, "AVAILABLE", 90),
(309, 109, 209, "AVAILABLE", 18),
(310, 110, 210, "AVAILABLE", 15),
(311, 111, 211, "UNAVAILABLE", 0),
(312, 112, 212, "AVAILABLE", 25),
(313, 101, 213, "AVAILABLE", 40),
(314, 102, 214, "UNAVAILABLE", 0),
(315, 103, 215, "AVAILABLE", 20),
(316, 104, 216, "AVAILABLE", 15),
(317, 105, 217, "UNAVAILABLE", 0),
(318, 106, 218, "AVAILABLE", 35),
(319, 107, 219, "AVAILABLE", 10),
(320, 108, 220, "UNAVAILABLE", 0),
(321, 109, 221, "AVAILABLE", 25),
(322, 110, 222, "AVAILABLE", 20),
(323, 111, 223, "UNAVAILABLE", 0),
(324, 112, 224, "AVAILABLE", 30),
(325, 101, 225, "AVAILABLE", 50);

SELECT * FROM Inventory;

UPDATE Inventory
SET Stock = 20,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 307;

SELECT * FROM Inventory
WHERE InventoryID = 307;

UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = "UNAVAILABLE"
WHERE InventoryID = 302;

SELECT * FROM Inventory
WHERE InventoryID = 302;

UPDATE Inventory
SET Stock = 50,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 311;

SELECT * FROM Inventory
WHERE InventoryID = 311;

UPDATE Seller
SET ContactNo = "9876599999",
    Address = "Madurai"
WHERE SellerID = 201;

SELECT * FROM Seller
WHERE SellerID = 201;

DELETE FROM Inventory
WHERE InventoryID = 325;

SELECT * FROM Inventory;

SELECT * FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT * FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";

SELECT * FROM Inventory
ORDER BY Stock DESC;

SELECT * FROM Inventory;
SELECT * FROM Seller;