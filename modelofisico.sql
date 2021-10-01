USE db_lojaVino ;

-- -----------------------------------------------------
-- Table `db_lojaVino`.`Regiao`
-- -----------------------------------------------------
CREATE TABLE db_lojaVino.Regiao (
  `codRegiao` BIGINT NOT NULL,
  `nomeRegiao` VARCHAR(100) NOT NULL,
  `descricaoRegiao` TEXT NULL,
  PRIMARY KEY (`codRegiao`));

-- -----------------------------------------------------
-- Table `db_lojaVino`.`Vinicola`
-- -----------------------------------------------------
CREATE TABLE db_lojaVino.Vinicola (
  `codVinicola` BIGINT NOT NULL,
  `nomeVinicola` VARCHAR(100) NOT NULL,
  `descricaoVinicula` TEXT NULL,
  `foneVinicola` VARCHAR(15) NULL,
  `emailVinicola` VARCHAR(15) NULL,
  `codRegiao` BIGINT NOT NULL,
  PRIMARY KEY (`codVinicola`),
    FOREIGN KEY (`codRegiao`)
    REFERENCES db_lojaVino.Regiao (`codRegiao`));

-- -----------------------------------------------------
-- Table `db_lojaVino`.`Vinho`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS db_lojaVino.Vinho (
  `codVinho` BIGINT NOT NULL,
  `nomeVinho` VARCHAR(50) NOT NULL,
  `tipoVinho` VARCHAR(30) NOT NULL,
  `anoVinho` INT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `descricaoVinho` TEXT NULL,
  `codVinicola` BIGINT NOT NULL,
  PRIMARY KEY (`codVinho`),
    FOREIGN KEY (`codVinicola`)
    REFERENCES db_lojaVino.Vinicola (`codVinicola`));
    
    
