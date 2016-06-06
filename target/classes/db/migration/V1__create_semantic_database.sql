-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema semantic
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema semantic
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `semantic` DEFAULT CHARACTER SET utf8 ;
USE `semantic` ;

-- -----------------------------------------------------
-- Table `semantic`.`when`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `semantic`.`when` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `semantic`.`who`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `semantic`.`who` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `semantic`.`whoom`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `semantic`.`whoom` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `semantic`.`how`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `semantic`.`how` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `semantic`.`where`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `semantic`.`where` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `semantic`.`what`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `semantic`.`what` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `semantic`.`verb`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `semantic`.`verb` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(45) NOT NULL,
  `when_id` INT NOT NULL,
  `who_id` INT NOT NULL,
  `to whoom_id` INT NOT NULL,
  `how_id` INT NOT NULL,
  `where_id` INT NOT NULL,
  `what_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `fk_verb_when_idx` (`when_id` ASC),
  INDEX `fk_verb_who1_idx` (`who_id` ASC),
  INDEX `fk_verb_to whoom1_idx` (`to whoom_id` ASC),
  INDEX `fk_verb_how1_idx` (`how_id` ASC),
  INDEX `fk_verb_where1_idx` (`where_id` ASC),
  INDEX `fk_verb_what1_idx` (`what_id` ASC),
  CONSTRAINT `fk_verb_when`
    FOREIGN KEY (`when_id`)
    REFERENCES `semantic`.`when` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_verb_who1`
    FOREIGN KEY (`who_id`)
    REFERENCES `semantic`.`who` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_verb_to whoom1`
    FOREIGN KEY (`to whoom_id`)
    REFERENCES `semantic`.`whoom` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_verb_how1`
    FOREIGN KEY (`how_id`)
    REFERENCES `semantic`.`how` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_verb_where1`
    FOREIGN KEY (`where_id`)
    REFERENCES `semantic`.`where` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_verb_what1`
    FOREIGN KEY (`what_id`)
    REFERENCES `semantic`.`what` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
