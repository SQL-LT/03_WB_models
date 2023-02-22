-- Tabellen, verbunden

DROP TABLE IF EXISTS mydb.servants;
DROP TABLE IF EXISTS mydb.cats;

-- MASTERTABELLE (MT):, unverändert
CREATE TABLE IF NOT EXISTS `mydb`.`cats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cat_name` VARCHAR(45) NOT NULL,
  `fur_color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- Detailtabelle (DT): Verbindung zur MT über Fremdschlüssel (fk)
CREATE TABLE IF NOT EXISTS `mydb`.`servants` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `servant_name` VARCHAR(45) NOT NULL,
  `yrs_served` INT NOT NULL,
  `cats_id` INT NOT NULL,   -- indication of switch to FK
  PRIMARY KEY (`id`),
  INDEX `fk_servants_cats_idx` (`cats_id` ASC), -- VISABLE is omitted. Starting from this line begins FK
  CONSTRAINT `fk_servants_cats`
    FOREIGN KEY (`cats_id`)
    REFERENCES `mydb`.`cats` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)  -- FK section ends here
ENGINE = InnoDB;

DESCRIBE mydb.cats;
DESCRIBE mydb.servants;