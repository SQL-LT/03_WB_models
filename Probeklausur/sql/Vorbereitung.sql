-- Vorbereitung
DROP DATABASE IF EXISTS mydb;
CREATE DATABASE IF NOT EXISTS mydb;

CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cst_firstname` VARCHAR(45) NOT NULL,
  `cst_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

INSERT INTO `mydb`.`customers` (`id`, `cst_firstname`, `cst_name`) VALUES (DEFAULT, "Pearl", "Castro");
INSERT INTO `mydb`.`customers` (`id`, `cst_firstname`, `cst_name`) VALUES (DEFAULT, "Liz", "Tyler");
INSERT INTO `mydb`.`customers` (`id`, `cst_firstname`, `cst_name`) VALUES (DEFAULT, "Tom", "Waits");

CREATE TABLE IF NOT EXISTS `mydb`.`orders` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `amount` DECIMAL(6,2) NOT NULL,
  `customers_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_orders_customers_idx` (`customers_id` ASC),
  CONSTRAINT `fk_orders_customers`
    FOREIGN KEY (`customers_id`)
    REFERENCES `mydb`.`customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `mydb`.`orders` (`id`, `amount`, `customers_id`) VALUES (DEFAULT, 11, 3);
INSERT INTO `mydb`.`orders` (`id`, `amount`, `customers_id`) VALUES (DEFAULT, 12, 1);
INSERT INTO `mydb`.`orders` (`id`, `amount`, `customers_id`) VALUES (DEFAULT, 13, 2);


