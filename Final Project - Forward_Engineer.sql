-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Voters
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Voters
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Voters` DEFAULT CHARACTER SET utf8 ;
USE `Voters` ;

-- -----------------------------------------------------
-- Table `Voters`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Voters`.`user` ;

CREATE TABLE IF NOT EXISTS `Voters`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(20) NOT NULL,
  `date_of_birth` VARCHAR(45) NOT NULL,
  `gender` ENUM('Male', 'Female') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `password_UNIQUE` (`password` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Voters`.`Regions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Voters`.`Regions` ;

CREATE TABLE IF NOT EXISTS `Voters`.`Regions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `region_code` VARCHAR(10) NOT NULL,
  `region_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Voters`.`constituency_table`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Voters`.`constituency_table` ;

CREATE TABLE IF NOT EXISTS `Voters`.`constituency_table` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `constituency_name` VARCHAR(45) NOT NULL,
  `constituecy_code` VARCHAR(8) NOT NULL,
  `Regions_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `constituecy_code_UNIQUE` (`constituecy_code` ASC) VISIBLE,
  INDEX `fk_constituency_table_Regions1_idx` (`Regions_id` ASC) VISIBLE,
  CONSTRAINT `fk_constituency_table_Regions1`
    FOREIGN KEY (`Regions_id`)
    REFERENCES `Voters`.`Regions` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Voters`.`addresses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Voters`.`addresses` ;

CREATE TABLE IF NOT EXISTS `Voters`.`addresses` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Zip_code` INT NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `town` VARCHAR(45) NOT NULL,
  `constituency_table_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_addresses_constituency_table1_idx` (`constituency_table_id` ASC) VISIBLE,
  CONSTRAINT `fk_addresses_constituency_table1`
    FOREIGN KEY (`constituency_table_id`)
    REFERENCES `Voters`.`constituency_table` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Voters`.`voter_card_info`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Voters`.`voter_card_info` ;

CREATE TABLE IF NOT EXISTS `Voters`.`voter_card_info` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `image` VARCHAR(45) NOT NULL,
  `signature` VARCHAR(45) NOT NULL,
  `exp_date` DATE NOT NULL,
  `issue_date` DATE NOT NULL,
  `addresses_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_voter_card_info_addresses1_idx` (`addresses_id` ASC) VISIBLE,
  INDEX `fk_voter_card_info_user1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_voter_card_info_addresses1`
    FOREIGN KEY (`addresses_id`)
    REFERENCES `Voters`.`addresses` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_voter_card_info_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `Voters`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
