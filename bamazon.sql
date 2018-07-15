DROP DATABASE IF EXISTS bamazonDB;
CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE buy(
  id INT NOT NULL AUTO_INCREMENT,
  itemId INT default 0,
  productName VARCHAR(100) NOT NULL,
  departmentNname VARCHAR(45) NOT NULL,
  price INT default 0,
  stockQuantity INT default 0,
  PRIMARY KEY (id)
);

INSERT INTO buy (itemID, productName, departmentNname, price, stockQuantity)
VALUES ("2750", "Bongos", "music", 45, 5);

INSERT INTO buy (itemID, productName, departmentNname, price, stockQuantity)
VALUES ("1750","Bananas", "food", 5, 10);

INSERT INTO buy (itemID, productName, departmentNname, price, stockQuantity)
VALUES ("3750","binoculars", "outdoors", 23, 8);

INSERT INTO buy (itemID, productName, departmentNname, price, stockQuantity)
VALUES ("4750","bag of legos", "toys", 10, 7);

INSERT INTO buy (itemID, productName, departmentNname, price, stockQuantity)
VALUES ("5750","Boys shirt", "clothing/home", 15, 6);

INSERT INTO buy (itemID, productName, departmentNname, price, stockQuantity)
VALUES ("6750","Blanket", "clothing/home", 37, 10);

INSERT INTO buy (itemID, productName, departmentNname, price, stockQuantity)
VALUES ("7750","buttermilk pancakes", "food", 8, 10);

INSERT INTO buy (itemID, productName, departmentNname, price, stockQuantity)
VALUES ("8750","Backpack", "outdoor", 22, 8);

INSERT INTO buy (itemID, productName, departmentNname, price, stockQuantity)
VALUES ("9750","Basketball", "outdoor", 18, 4);

INSERT INTO buy (itemID, productName, departmentNname, price, stockQuantity)
VALUES ("750","Bathrobe", "clothing/home", 45, 1);
