#this command selects the schema that we want to use
use Shop;

#There was another table named Products so I had to drop it
drop table products;

#now here i create the products table and set all the columns datatype, making the id the primary key
CREATE TABLE products (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    Datetimes TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    weight VARCHAR(20)
);



#let's see the look of our table
select * from products;
# we add some filler data, here I just prompt chatgpt to give me more data
INSERT INTO products (name, weight) VALUES 
('Product 1', '1kg'),
('Product 2', '2kg'),
('Product 3', '0.5kg'),
('Product 4', '0.25kg'),
('Product 5', '1.5kg'),
('Product 6', '3kg'),
('Product 7', '7kg'),
('Product 8', '1.2kg'),
('Product 9', '2.5kg'),
('Product 10', '10kg');

#using the like keyword that is useful in searching of products in the database
select * from products where name like '%Product 5%';

#let's see the use of the where clause in filtering data

select * from products where weight=2;

#lets have a look at Transactions, 

START TRANSACTION;

UPDATE products SET weight = 0.5 WHERE weight = 500g;

COMMIT;  


select * from products;
# lets disable safemode so that we can execute delete command;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM products WHERE id>1;

# we add new data
INSERT INTO products (name, weight) VALUES 
('Product 1', '1kg'),
('Product 2', '2kg'),
('Product 3', '3kg'),
('Product 4', '4kg'),
('Product 5', '5kg'),
('Product 6', '6kg'),
('Product 7', '7kg'),
('Product 8', '8kg'),
('Product 9', '9kg'),
('Product 10', '10kg'),
('Product 11', '11kg'),
('Product 12', '12kg'),
('Product 13', '13kg'),
('Product 14', '14kg'),
('Product 15', '15kg'),
('Product 16', '16kg'),
('Product 17', '17kg'),
('Product 18', '18kg'),
('Product 19', '19kg'),
('Product 20', '20kg'),
('Product 21', '21kg'),
('Product 22', '22kg'),
('Product 23', '23kg'),
('Product 24', '24kg'),
('Product 25', '25kg'),
('Product 26', '26kg'),
('Product 27', '27kg'),
('Product 28', '28kg'),
('Product 29', '29kg'),
('Product 30', '30kg'),
('Product 31', '31kg'),
('Product 32', '32kg'),
('Product 33', '33kg'),
('Product 34', '34kg'),
('Product 35', '35kg'),
('Product 36', '36kg'),
('Product 37', '37kg'),
('Product 38', '38kg'),
('Product 39', '39kg'),
('Product 40', '40kg'),
('Product 41', '41kg'),
('Product 42', '42kg'),
('Product 43', '43kg'),
('Product 44', '44kg'),
('Product 45', '45kg'),
('Product 46', '46kg'),
('Product 47', '47kg'),
('Product 48', '48kg'),
('Product 49', '49kg'),
('Product 50', '50kg');


select * from products;


