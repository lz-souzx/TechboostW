CREATE SCHEMA IF NOT EXISTS bd_techboostcopia DEFAULT CHARACTER SET utf8 ;
USE bd_techboostcopia ;

CREATE TABLE IF NOT EXISTS bd_techboostcopia.tb_produto (
  pkid_produto INT NOT NULL AUTO_INCREMENT primary key,
  tipo VARCHAR(45) NOT NULL,
  preco DECIMAL(10,2) NOT NULL,
  cnpj VARCHAR(18) NOT NULL)
ENGINE = InnoDB;