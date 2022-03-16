

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db8
-- -----------------------------------------------------
DROP DATABASE IF EXISTS db8;
-- -----------------------------------------------------
-- Schema db8
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db8` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `db8` ;

-- -----------------------------------------------------
-- Table `db8`.`member`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db8`.`member` (
  `no` INT NOT NULL AUTO_INCREMENT,
  `id` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `tel` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `post` VARCHAR(5) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `detailAddress` VARCHAR(200) NOT NULL,
  `rdate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db8`.`board`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db8`.`board` (
  `no` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NULL DEFAULT NULL,
  `contents` VARCHAR(45) NULL DEFAULT NULL,
  `writer` INT NOT NULL,
  `views` INT NULL DEFAULT '0',
  `rdate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no`),
  INDEX `fk_board_member_idx` (`writer` ASC) VISIBLE,
  CONSTRAINT `fk_board_member`
    FOREIGN KEY (`writer`)
    REFERENCES `db8`.`member` (`no`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db8`.`pictureInfo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db8`.`pictureInfo` (
  `no` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `contents` VARCHAR(200) NOT NULL,
  `fileName` VARCHAR(45) NOT NULL,
  `rdate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
