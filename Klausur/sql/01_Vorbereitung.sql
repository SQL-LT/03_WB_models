-- Vorbereitung
DROP DATABASE IF EXISTS mydb;
CREATE DATABASE IF NOT EXISTS mydb;

DROP TABLE IF EXISTS `mydb`.`user`;
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(45) NOT NULL,
  `user_mail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

DESCRIBE `mydb`.`user`;
SELECT * FROM `mydb`.`user`;

DROP TABLE IF EXISTS `mydb`.`posts`;
CREATE TABLE IF NOT EXISTS `mydb`.`posts` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `place` VARCHAR(45) NOT NULL,
  `likes` INT NOT NULL,
  `user_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_posts_user_idx` (`user_ID` ASC),
  CONSTRAINT `fk_posts_user`
    FOREIGN KEY (`user_ID`)
    REFERENCES `mydb`.`user` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

DESCRIBE `mydb`.`posts`;
SELECT * FROM `mydb`.`posts`;

-- productlist table

DROP TABLE IF EXISTS `mydb`.`productlist`;
CREATE TABLE IF NOT EXISTS `mydb`.`productlist` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `product` VARCHAR(45) NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  `price` DECIMAL(6,2) NOT NULL,
  `in_stock` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


DESCRIBE `mydb`.`productlist`;
SELECT * FROM `mydb`.`productlist`;

INSERT INTO `mydb`.`productlist` (`id`, `product`, `category`, `price`, `in_stock`) VALUES (DEFAULT, "Dell XP1", "Computer", 520.00, 200);
INSERT INTO `mydb`.`productlist` (`id`, `product`, `category`, `price`, `in_stock`) VALUES (DEFAULT, "AKOYA ZD217", "Computer", 430.00, 10);
INSERT INTO `mydb`.`productlist` (`id`, `product`, `category`, `price`, `in_stock`) VALUES (DEFAULT, "WD 1020", "External Memory", 115.00, 40);
INSERT INTO `mydb`.`productlist` (`id`, `product`, `category`, `price`, `in_stock`) VALUES (DEFAULT, "CISCO 2050T", "Network Components", 245.00, 10);-- Vorbereitung
DROP DATABASE IF EXISTS mydb;
CREATE DATABASE IF NOT EXISTS mydb;

DROP TABLE IF EXISTS `mydb`.`user`;
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(45) NOT NULL,
  `user_mail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

DESCRIBE `mydb`.`user`;
SELECT * FROM `mydb`.`user`;

DROP TABLE IF EXISTS `mydb`.`posts`;
CREATE TABLE IF NOT EXISTS `mydb`.`posts` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `place` VARCHAR(45) NOT NULL,
  `likes` INT NOT NULL,
  `user_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_posts_user_idx` (`user_ID` ASC),
  CONSTRAINT `fk_posts_user`
    FOREIGN KEY (`user_ID`)
    REFERENCES `mydb`.`user` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

DESCRIBE `mydb`.`posts`;
SELECT * FROM `mydb`.`posts`;

-- productlist table

DROP TABLE IF EXISTS `mydb`.`productlist`;
CREATE TABLE IF NOT EXISTS `mydb`.`productlist` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `product` VARCHAR(45) NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  `price` DECIMAL(6,2) NOT NULL,
  `in_stock` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


DESCRIBE `mydb`.`productlist`;
SELECT * FROM `mydb`.`productlist`;

INSERT INTO `mydb`.`productlist` (`id`, `product`, `category`, `price`, `in_stock`) VALUES (DEFAULT, "Dell XP1", "Computer", 520.00, 200);
INSERT INTO `mydb`.`productlist` (`id`, `product`, `category`, `price`, `in_stock`) VALUES (DEFAULT, "AKOYA ZD217", "Computer", 430.00, 10);
INSERT INTO `mydb`.`productlist` (`id`, `product`, `category`, `price`, `in_stock`) VALUES (DEFAULT, "WD 1020", "External Memory", 115.00, 40);
INSERT INTO `mydb`.`productlist` (`id`, `product`, `category`, `price`, `in_stock`) VALUES (DEFAULT, "CISCO 2050T", "Network Components", 245.00, 10);