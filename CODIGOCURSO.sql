DROP DATABASE IF exists AULA_BANCO;

CREATE DATABASE AULA_BANCO;

USE AULA_BANCO;

DROP TABLE IF EXISTS ESTADO;

CREATE TABLE ESTADO(
ID INT NOT NULL auto_increment,
NOME VARCHAR(200) NOT NULL UNIQUE, --   CONSTRAINT - REGRAS INLINE
SIGLA CHAR(2)NOT NULL UNIQUE,
ATIVO CHAR(1) NOT NULL DEFAULT 'S',
DATA_CADASTRO DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
-- CHECK (ATIVO IN ('S','N'))  -- constraint OUT OF LINE REGRA SEM NOME
,CONSTRAINT PK_ESTADO PRIMARY KEY (ID)
, CONSTRAINT COLUNA_ATIVO_DEVE_SER_S_OU_N CHECK (ATIVO IN ('S','N')) -- constraint OUT OF LINE REGRA COM NOME
);

INSERT INTO ESTADO (NOME,SIGLA) VALUES ('PARANÁ','PR');
INSERT INTO ESTADO (NOME,SIGLA) VALUES ('SÃO PAULO','SP');
INSERT INTO ESTADO (NOME,SIGLA) VALUES ('PARÁ','PA');
INSERT INTO ESTADO (NOME,SIGLA) VALUES ('BAHIA','BA');

SELECT * FROM ESTADO;

