--CREATE DATABASE Book
--USE Book

CREATE TABLE Books (
  id int PRIMARY KEY identity(1,1),
  name nvarchar(50),
  id_theme int REFERENCES Themes(id),
  id_autor int REFERENCES Authors(id),
  price float,
  date_of_publish date,
  pages int,
)

CREATE TABLE Themes (
   id int PRIMARY KEY identity(1,1),
   name nvarchar(50),
)

CREATE TABLE Authors (
   id int PRIMARY KEY identity(1,1),
   firstname nvarchar(50),
   lastname nvarchar(50),
   id_country int REFERENCES Country(id)
)

CREATE TABLE Country (
   id int PRIMARY KEY identity(1,1),
   name nvarchar(50),
)

CREATE TABLE Shops (
   id int PRIMARY KEY identity(1,1),
   name nvarchar(50),
   id_counry int REFERENCES Country(id)
)

CREATE TABLE Sales (
   id int PRIMARY KEY identity(1,1),
   id_book int REFERENCES Books(id),
   date_of_sale date,
   price float,
   quantity int,
   id_shop int REFERENCES Shops(id)
)