-- MySQL Script generated by MySQL Workbench
-- Sat Nov 23 18:39:29 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema trabalhobd
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `trabalhobd` ;

-- -----------------------------------------------------
-- Schema trabalhobd
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `trabalhobd` DEFAULT CHARACTER SET utf8 ;
USE `trabalhobd` ;

-- -----------------------------------------------------
-- Table `trabalhobd`.`compativel_jogo_plataforma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalhobd`.`compativel_jogo_plataforma` (
  `idplataforma` INT NOT NULL,
  `idjogo` INT NOT NULL,
  `quantidade` INT NULL,
  `ano_lancamento_jogo` INT NULL,
  PRIMARY KEY (`idplataforma`, `idjogo`),
  INDEX `fk_plataforma_has_jogo_jogo1_idx` (`idjogo` ASC),
  INDEX `fk_plataforma_has_jogo_plataforma1_idx` (`idplataforma` ASC),
  CONSTRAINT `fk_plataforma_has_jogo_plataforma1`
    FOREIGN KEY (`idplataforma`)
    REFERENCES `trabalhobd`.`plataforma` (`idplataforma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_plataforma_has_jogo_jogo1`
    FOREIGN KEY (`idjogo`)
    REFERENCES `trabalhobd`.`jogo` (`idjogo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalhobd`.`compativel_midia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalhobd`.`compativel_midia` (
  `idplataforma` INT NOT NULL,
  `idmidia` INT NOT NULL,
  PRIMARY KEY (`idplataforma`, `idmidia`),
  INDEX `fk_plataforma_has_midia_midia1_idx` (`idmidia` ASC),
  INDEX `fk_plataforma_has_midia_plataforma_idx` (`idplataforma` ASC),
  CONSTRAINT `fk_plataforma_has_midia_plataforma`
    FOREIGN KEY (`idplataforma`)
    REFERENCES `trabalhobd`.`plataforma` (`idplataforma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_plataforma_has_midia_midia1`
    FOREIGN KEY (`idmidia`)
    REFERENCES `trabalhobd`.`midia` (`idmidia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalhobd`.`fabricante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalhobd`.`fabricante` (
  `idfabricante` INT NOT NULL,
  `nomefab` VARCHAR(30) NULL,
  `ano_fundacao` INT NULL,
  PRIMARY KEY (`idfabricante`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalhobd`.`jogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalhobd`.`jogo` (
  `idjogo` INT NOT NULL,
  `nomejogo` VARCHAR(30) NULL,
  `descricao` VARCHAR(30) NULL,
  PRIMARY KEY (`idjogo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalhobd`.`midia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalhobd`.`midia` (
  `idmidia` INT NOT NULL,
  `nomemid` VARCHAR(30) NULL,
  `velocidade_leitura` INT NULL,
  PRIMARY KEY (`idmidia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalhobd`.`plataforma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalhobd`.`plataforma` (
  `idplataforma` INT NOT NULL,
  `nomeplat` VARCHAR(30) NULL,
  `ano_lancamento` INT NULL,
  `memoria` INT NULL,
  `idfabricante` INT NOT NULL,
  PRIMARY KEY (`idplataforma`),
  INDEX `fk_plataforma_fabricante1_idx` (`idfabricante` ASC),
  CONSTRAINT `fk_plataforma_fabricante1`
    FOREIGN KEY (`idfabricante`)
    REFERENCES `trabalhobd`.`fabricante` (`idfabricante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;