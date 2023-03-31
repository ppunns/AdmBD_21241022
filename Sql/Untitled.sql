CREATE TABLE `ProductLine` (
  `ProductLine` int(pk),
  `textDescription` String,
  `htmlDescription` String,
  `image` varchar(255)
);

CREATE TABLE `Products` (
  `ProductCode` int(pk),
  `ProductName` varchar(255),
  `ProductLine` int(fk),
  `ProductScale` float,
  `productVendor` varchar(255),
  `ProductsDescription` String,
  `quantityStock` int,
  `buyPrice` float,
  `MSRP` int
);

CREATE TABLE `customers` (
  `customerNumber` int(pk),
  `customerName` varchar(255),
  `custactLastName` varchar(255),
  `contactFirtName` varchar(255),
  `phone` int,
  `addressLine1` String,
  `addressLine2` String,
  `city` varchar(255),
  `state` varchar(255),
  `portalCode` int,
  `country` int,
  `salesRepEmployesNumber` int
);

CREATE TABLE `employes` (
  `employesNumber` int(pk),
  `lastName` varchar(255),
  `firstName` varchar(255),
  `extension` varchar(255),
  `email` varchar(255),
  `officeCOde` int,
  `reportsTo` varchar(255),
  `jobTitle` varchar(255)
);

CREATE TABLE `orderdetails` (
  `orderNumber` int(fk),
  `productCode` int(fk),
  `quantityOrdered` int,
  `priceEach` float,
  `orderLineNumber` int
);

CREATE TABLE `orders` (
  `orderNumber` int(pk),
  `orderDate` DATETIME,
  `requiredDate` DATETIME,
  `shippedDate` DATETIME,
  `status` String,
  `comments` String,
  `customerNumber` int(fk)
);

CREATE TABLE `payments` (
  `customerNumber` int(fk),
  `checkNumber` int(pk),
  `amount` float,
  `paymentDate` DATETIME
);

CREATE TABLE `offices` (
  `officeCOde` int(pk),
  `city` varchar(255),
  `phone` int,
  `address_Line1` varchar(255),
  `address_Line2` varchar(255),
  `state` varchar(255),
  `country` float,
  `postalCode` int,
  `territory` int
);

ALTER TABLE `orders` ADD FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`);

ALTER TABLE `orders` ADD FOREIGN KEY (`orderNumber`) REFERENCES `orderdetails` (`orderNumber`);

ALTER TABLE `payments` ADD FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`);

ALTER TABLE `orderdetails` ADD FOREIGN KEY (`productCode`) REFERENCES `Products` (`ProductCode`);

ALTER TABLE `Products` ADD FOREIGN KEY (`ProductLine`) REFERENCES `ProductLine` (`ProductLine`);

ALTER TABLE `employes` ADD FOREIGN KEY (`officeCOde`) REFERENCES `offices` (`officeCOde`);

ALTER TABLE `customers` ADD FOREIGN KEY (`customerName`) REFERENCES `employes` (`jobTitle`);

ALTER TABLE `employes` ADD FOREIGN KEY (`employesNumber`) REFERENCES `employes` (`reportsTo`);
