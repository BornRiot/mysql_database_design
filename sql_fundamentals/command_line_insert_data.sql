-- This script is used to write SQL Command used in lecture

-- Create database:
create database mytestdb;

-- Create test table with two fields:
CREATE TABLE mytesttable (mytestfield1 VARCHAR(20),mytestfield2 VARCHAR(20));

-- Create table with PRIMARY key:
CREATE TABLE mytesttable2  (id INT(11) not null auto_increment primary key,mytestfield1 VARCHAR(20),mytestfield2 VARCHAR(20));

-- Switch to store database
use store

-- Insert data into table:
Insert into product_categories (name, description, image) values ("Auto", "Cars, Trucks and Bikes", "images/vehicles.jpg");

-- Insert multiples rows into the database:
Insert into product_categories (name, description, image)
-> ("Sports", "Sporting Goods and Jerseys", "images/sports.jpg"),
-> ("Home and Garden", "Products fpr your home", "images/home.jpg"),
-> ("Music", "CDs, MP3's, Live Streaming", "images/music.jpg");
