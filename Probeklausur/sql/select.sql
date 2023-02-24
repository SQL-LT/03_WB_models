-- Einzeltabellen
SELECT * FROM mydb.customers;
SELECT * FROM mydb.orders;
SELECT * FROM mydb.addressbook;

SELECT * 
FROM mydb.customers 
INNER JOIN mydb.orders ON mydb.customers.id = mydb.orders.customers_id;

DROP TABLE IF EXISTS `mydb`.`addressbook`;
CREATE TABLE IF NOT EXISTS `mydb`.`addressbook` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `vorname` VARCHAR(45) NOT NULL,
  `plz` INT NOT NULL,
  `ort` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

INSERT INTO `mydb`.`addressbook` (`id`, `name`, `vorname`, `plz`, `ort`) VALUES (DEFAULT, "Müller", "Peter", 12991, "Berlin");
INSERT INTO `mydb`.`addressbook` (`id`, `name`, `vorname`, `plz`, `ort`) VALUES (DEFAULT, "Ay", "Yildiz", 63325, "Langen");
INSERT INTO `mydb`.`addressbook` (`id`, `name`, `vorname`, `plz`, `ort`) VALUES (DEFAULT, "Sommer", "Petra", 70137, "Stuttgart");

SELECT vorname, name
FROM mydb.addressbook
WHERE vorname LIKE "Pet%";