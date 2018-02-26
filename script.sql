-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema orders keeping
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema orders keeping
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `orders keeping` DEFAULT CHARACTER SET utf8 ;
USE `orders keeping` ;

-- -----------------------------------------------------
-- Table `orders keeping`.`clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orders keeping`.`clients` (
  `client_id` INT(11) NOT NULL,
  `company` VARCHAR(10) NOT NULL,
  `address` VARCHAR(30) NOT NULL,
  `phone number` INT(11) NOT NULL,
  `name` VARCHAR(10) NOT NULL,
  `surname` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE INDEX `client_id_UNIQUE` (`client_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `orders keeping`.`deals`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orders keeping`.`deals` (
  `deal_id` INT(11) NOT NULL,
  `client_id` INT(11) NOT NULL,
  `good_id` INT(11) NOT NULL,
  `company` VARCHAR(10) NOT NULL,
  `quantity` INT(11) NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`good_id`),
  UNIQUE INDEX `deal_id_UNIQUE` (`deal_id` ASC),
  INDEX `client_id_idx` (`client_id` ASC),
  CONSTRAINT `client_id`
    FOREIGN KEY (`client_id`)
    REFERENCES `orders keeping`.`clients` (`client_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `orders keeping`.`goods`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orders keeping`.`goods` (
  `good_id` INT(11) NOT NULL,
  `price` INT(11) NOT NULL,
  `information of good` VARCHAR(30) NOT NULL,
  `delivery` VARCHAR(10) NOT NULL,
  UNIQUE INDEX `good_id_UNIQUE` (`good_id` ASC),
  CONSTRAINT `good_id`
    FOREIGN KEY (`good_id`)
    REFERENCES `orders keeping`.`deals` (`deal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
