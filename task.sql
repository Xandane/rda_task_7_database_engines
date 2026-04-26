CREATE DATABASE ShopDB; 
USE ShopDB; 


CREATE TABLE Countries (
    ID INT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE GeoIPCache (
    ID INT,
    IPRange VARCHAR(50),
    CountryID INT,
    PRIMARY KEY (ID)
) ENGINE=MEMORY;

CREATE TABLE ProductDescription (
    ID INT,
    Description VARCHAR(255),
    ProductID INT,
    CountryID INT,
    PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE Logs (
    ID INT,
    Timestamp TIMESTAMP,
    Message VARCHAR(255)
) ENGINE=BLACKHOLE;

CREATE TABLE ProductReporting (
    Date DATE,
    ProductName VARCHAR(100),
    Orders INT
) ENGINE=CSV;