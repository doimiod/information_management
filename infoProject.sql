CREATE SCHEMA `Pet Groomer`;
DROP TABLE IF EXISTS `Pet Groomer`.`Customer`;
CREATE TABLE `Pet Groomer`.`Customer` (
  `Customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone_number` int NOT NULL,
  `Pet_id` int NOT NULL,
  `payment_method` varchar(45) NOT NULL,
  CONSTRAINT Unique_Person UNIQUE (email, phone_number),
  PRIMARY KEY (`Customer_id`)
 --  FOREIGN KEY (Pet_id) REFERENCES Pet(pet_id)
  -- FOREIGN KEY (payment_method) REFERENCES Payment(payment_method)
  );
  
  DROP TABLE IF EXISTS `Pet Groomer`.`Pet`;
  CREATE TABLE `Pet Groomer`.`Pet` (
  `Pet_id` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Breed` VARCHAR(45) NOT NULL,
  `Species` VARCHAR(45) NOT NULL,
  `Birthday` DATE NOT NULL,
  `Gender` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Pet_id`));
  

   DROP TABLE IF EXISTS `Pet Groomer`.`Reservation`;
   CREATE TABLE `Pet Groomer`.`Reservation` (
   `Reservation_id` INT NOT NULL,
   `Date` DATE NOT NULL,
   `Time` TIME NOT NULL,
   `Service` VARCHAR(45) NOT NULL,
   `phone_number` VARCHAR(45) NOT NULL,
   PRIMARY KEY (`Reservation_id`));
   
   DROP TABLE IF EXISTS `Pet Groomer`.`Store`;
   CREATE TABLE `Pet Groomer`.`Store` (
  `Store_id` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(100) NOT NULL,
  `phone_number` int NOT NULL,
  `Email_address` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Store_id`));
  
  
  DROP TABLE IF EXISTS `Pet Groomer`.`Staff`;
  CREATE TABLE `Pet Groomer`.`Staff` (
  `Staff_id` INT NOT NULL,
  `First_name` VARCHAR(45) NOT NULL,
  `Last_name` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(150) NOT NULL,
  `Phone_number` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Salary_euro` INT NOT NULL,
  `Grooming_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Staff_id`));
  
  DROP TABLE IF EXISTS `Pet Groomer`.`Grooming`;
  CREATE TABLE `Pet Groomer`.`Grooming` (
  `Grooming_id` int NOT NULL,
  `Cost` int NOT NULL,
  `Service` VARCHAR(45) NOT NULL,
  `Date` date NOT NULL,
  `Pet_id` int NOT NULL,
  `Payment_id` int NOT NULL,
  PRIMARY KEY (`Grooming_id`));


INSERT INTO  `Pet Groomer`.`Customer`(Customer_id, first_name, last_name, email, phone_number, Pet_id, payment_method)
VALUES (1, 'Geoge', 'Washington', 'Wasington@gmail.com', '003302120', 2, 'card');
INSERT INTO `Pet Groomer`.`Customer` (Customer_id, first_name, last_name, email, phone_number, Pet_id, payment_method)
VALUES (2, 'John', 'Adams', 'Adams@gmail.com', '003302121', 3, 'card');
INSERT INTO `Pet Groomer`.`Customer` (Customer_id, first_name, last_name, email, phone_number, Pet_id, payment_method)
VALUES (3, 'Thomas', 'Jefferson', 'Jefferson@gmail.com', '003302122', 1, 'cash');
INSERT INTO `Pet Groomer`.`Customer` (Customer_id, first_name, last_name, email, phone_number, Pet_id, payment_method)
VALUES (4, 'James', 'Madison', 'Madisonson@gmail.com', '003302123', 4, 'cash');
INSERT INTO `Pet Groomer`.`Customer` (Customer_id, first_name, last_name, email, phone_number, Pet_id, payment_method)
VALUES (5, 'James', 'Monroe', 'Monroe2@gmail.com', '003302124', 6, 'card');     
INSERT INTO `Pet Groomer`.`Customer` (Customer_id, first_name, last_name, email, phone_number, Pet_id, payment_method)
VALUES (6, 'John', 'Adams', 'Adams2@gmail.com', '003302125', 5, 'boucher');
INSERT INTO `Pet Groomer`.`Customer` (Customer_id, first_name, last_name, email, phone_number, Pet_id, payment_method)
VALUES (7, 'Andrew', 'Jackson', 'Andrew@gmail.com', '003302126', 7, 'card');


INSERT INTO `Pet Groomer`.`Pet` (Pet_id, Name, Breed, Species, Birthday, Gender)
VALUES (1, 'Max', 'Afador', 'dog', '2012-12-31', 'male');
INSERT INTO `Pet Groomer`.`Pet` (Pet_id, Name, Breed, Species, Birthday, Gender)
VALUES (2, 'Remy', 'Barbet', 'dog', '2021-2-23','female');
INSERT INTO `Pet Groomer`.`Pet` (Pet_id, Name, Breed, Species, Birthday, Gender)
VALUES (3, 'Kitty', 'Abyssinian', 'cat','2018-12-1' ,'female');
INSERT INTO `Pet Groomer`.`Pet` (Pet_id, Name, Breed, Species, Birthday, Gender)
VALUES (4, 'Alex', 'Bulldog', 'dog', '2016-5-4','male');
INSERT INTO `Pet Groomer`.`Pet` (Pet_id, Name, Breed, Species, Birthday, Gender)
VALUES (5, 'Luke', 'Boxer', 'dog', '2015-6-5','male');
INSERT INTO `Pet Groomer`.`Pet` (Pet_id, Name, Breed, Species, Birthday, Gender)
VALUES (6, 'Sarah', 'Corgi', 'dog', '2018-10-25' ,'female');
INSERT INTO `Pet Groomer`.`Pet` (Pet_id, Name, Breed, Species, Birthday, Gender)
VALUES (7, 'Zeke', 'Bombay', 'cat', '2011-11-11','male');




INSERT INTO  `Pet Groomer`.`Reservation`(Reservation_id, Date, Time, Service, phone_number)
VALUES (1, '2022-12-12', '12:30', 'Trim', '003302120');
INSERT INTO  `Pet Groomer`.`Reservation`(Reservation_id, Date, Time, Service, phone_number)
VALUES (2, '2022-12-13', '11:30', 'Trim & Shampoo', '003302122');
INSERT INTO  `Pet Groomer`.`Reservation`(Reservation_id, Date, Time, Service, phone_number)
VALUES (3, '2022-12-14', '10:30', 'Trim & Shampoo', '003302124');
INSERT INTO  `Pet Groomer`.`Reservation`(Reservation_id, Date, Time, Service, phone_number)
VALUES (4, '2022-12-18', '18:30', 'Trim', '003302126');
INSERT INTO  `Pet Groomer`.`Reservation`(Reservation_id, Date, Time, Service, phone_number)
VALUES (5, '2022-12-13', '11:30', 'Trim & Shampoo', '003302121');


INSERT INTO  `Pet Groomer`.`Store`(Store_id, Name, Country, City, Address, phone_number, Email_address)
VALUES (1, 'Happy grooming', 'Ireland', 'Dublin', 'happy 59, Dublin 2 Dublin D02 X111', 30303020, 'happygrooming@gmail.com');


INSERT INTO `Pet Groomer`.`Staff` (Staff_id, First_name, Last_name, Address, Phone_number, Email, Salary_euro, Grooming_id)
VALUES (1, 'Mario', 'Guputa', 'happy 58, Dublin 2', '938384', 'jfjdj@gmail.com', 76222, 1 );
INSERT INTO `Pet Groomer`.`Staff` (Staff_id, First_name, Last_name, Address, Phone_number, Email, Salary_euro, Grooming_id)
VALUES (2, 'Peach', 'Li', 'happy 56, Dublin 2', '932384', 'jhrfij@gmail.com', 745362, 2 );
INSERT INTO `Pet Groomer`.`Staff` (Staff_id, First_name, Last_name, Address, Phone_number, Email, Salary_euro, Grooming_id)
VALUES (3, 'Wario', 'Bredican', 'happy 51, Dublin 2', '088384', 'usjshj@gmail.com', 7222, 3 );

INSERT INTO  `Pet Groomer`.`Grooming`(Grooming_id, Cost, Service, Date, Pet_id, Payment_id)
VALUES (1, 23, 'Trim & Shampoo', '2022-2-22',2, 1);


ALTER TABLE `Pet Groomer`.`Customer`
MODIFY `Customer_id` INT NOT NULL AUTO_INCREMENT;

SELECT 
r.Reservation_id, 
r.Date,
r.Time,
r.Service,
c.first_name,
c.last_name,
c.phone_number
FROM Reservation r
JOIN Customer c 
    ON c.phone_number = r.phone_number
    




