SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS `biblioteca` ;
CREATE SCHEMA IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET utf8 ;
USE `biblioteca` ;

-- -----------------------------------------------------
-- Table `biblioteca`.`autor`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `biblioteca`.`autor` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteca`.`editora`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `biblioteca`.`editora` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NOT NULL ,
  `cnpj` VARCHAR(14) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteca`.`biblioteca`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `biblioteca`.`biblioteca` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NOT NULL ,
  `cnpj` VARCHAR(14) NOT NULL ,
  `valor_multa` DECIMAL(10,2) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteca`.`usuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `biblioteca`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NOT NULL ,
  `cpf` VARCHAR(11) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteca`.`bibliotecario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `biblioteca`.`bibliotecario` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NOT NULL ,
  `login` VARCHAR(45) NOT NULL ,
  `senha` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteca`.`genero`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `biblioteca`.`genero` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteca`.`livro`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `biblioteca`.`livro` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `autor_id` INT NOT NULL ,
  `editora_id` INT NOT NULL ,
  `genero_id` INT NOT NULL ,
  `titulo` VARCHAR(45) NOT NULL ,
  `ano` INT NOT NULL ,
  `edicao` VARCHAR(45) NOT NULL ,
  `paginas` INT NOT NULL ,
  `quantidade` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_livro_autor` (`autor_id` ASC) ,
  INDEX `fk_livro_genero1` (`genero_id` ASC) ,
  INDEX `fk_livro_editora1` (`editora_id` ASC) ,
  CONSTRAINT `fk_livro_autor`
    FOREIGN KEY (`autor_id` )
    REFERENCES `biblioteca`.`autor` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_livro_genero1`
    FOREIGN KEY (`genero_id` )
    REFERENCES `biblioteca`.`genero` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_livro_editora1`
    FOREIGN KEY (`editora_id` )
    REFERENCES `biblioteca`.`editora` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteca`.`emprestimo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `biblioteca`.`emprestimo` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `data` DATETIME NOT NULL ,
  `data_programada` DATETIME NOT NULL ,
  `data_devolucao` DATETIME NULL ,
  `multa` DECIMAL(10,2) NOT NULL ,
  `usuario_id` INT NOT NULL ,
  `bibliotecario_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_emprestimo_usuario1` (`usuario_id` ASC) ,
  INDEX `fk_emprestimo_bibliotecario1` (`bibliotecario_id` ASC) ,
  CONSTRAINT `fk_emprestimo_usuario1`
    FOREIGN KEY (`usuario_id` )
    REFERENCES `biblioteca`.`usuario` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_emprestimo_bibliotecario1`
    FOREIGN KEY (`bibliotecario_id` )
    REFERENCES `biblioteca`.`bibliotecario` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteca`.`emprestimo_has_livro`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `biblioteca`.`emprestimo_has_livro` (
  `emprestimo_id` INT NOT NULL ,
  `livro_id` INT NOT NULL ,
  PRIMARY KEY (`emprestimo_id`, `livro_id`) ,
  INDEX `fk_emprestimo_has_livro_livro1` (`livro_id` ASC) ,
  INDEX `fk_emprestimo_has_livro_emprestimo1` (`emprestimo_id` ASC) ,
  CONSTRAINT `fk_emprestimo_has_livro_emprestimo1`
    FOREIGN KEY (`emprestimo_id` )
    REFERENCES `biblioteca`.`emprestimo` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_emprestimo_has_livro_livro1`
    FOREIGN KEY (`livro_id` )
    REFERENCES `biblioteca`.`livro` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteca`.`prateleira`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `biblioteca`.`prateleira` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `posicao` VARCHAR(45) NOT NULL ,
  `genero_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_prateleira_genero1` (`genero_id` ASC) ,
  CONSTRAINT `fk_prateleira_genero1`
    FOREIGN KEY (`genero_id` )
    REFERENCES `biblioteca`.`genero` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteca`.`prateleira_has_livro`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `biblioteca`.`prateleira_has_livro` (
  `prateleira_id` INT NOT NULL ,
  `livro_id` INT NOT NULL ,
  PRIMARY KEY (`prateleira_id`, `livro_id`) ,
  INDEX `fk_prateleira_has_livro_livro1` (`livro_id` ASC) ,
  INDEX `fk_prateleira_has_livro_prateleira1` (`prateleira_id` ASC) ,
  CONSTRAINT `fk_prateleira_has_livro_prateleira1`
    FOREIGN KEY (`prateleira_id` )
    REFERENCES `biblioteca`.`prateleira` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_prateleira_has_livro_livro1`
    FOREIGN KEY (`livro_id` )
    REFERENCES `biblioteca`.`livro` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
