-- Selecionar em ordem crescente
select nome as nome_cliente, endereco AS 'Endereço', saldo_devedor AS dividakkkk from clientes
order by pontos_fidelidade; -- ou Endereço, ou dividakkkk 

-- Selecionar em ordem decrescente
select * from clientes
ORDER BY pontos_fidelidade DESC;

-- Adicionar coluna na tabela
alter table clientes
add column cpf varchar(14) unique;

-- Alterar coluna na tabela
ALTER TABLE `user`.`clientes` 
CHANGE COLUMN `cpf` `cpf` VARCHAR(14) NULL DEFAULT NULL AFTER `telefone`;

-- Criação da tabela 'clientes'
CREATE TABLE IF NOT EXISTS clientes (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    telefone VARCHAR(15),
    endereco VARCHAR(255),
    data_nascimento DATE,
    ativo BOOLEAN,
    saldo_devedor DECIMAL(10,2),
    pontos_fidelidade INT,
    data_cadastro DATE DEFAULT ( CURRENT_DATE() )
);

-- Alterar valor em linha da tabela
update user.clientes
set cpf = '123.456.789-01'
where id = 1;

-- Selecionar valores que contenham algo
select * from clientes where email like "%ro%";

-- Alterar coluna da tabela para adcionar verificação
ALTER TABLE clientes 
MODIFY COLUMN email VARCHAR(255) UNIQUE,
ADD CHECK (email LIKE '%@%');

-- Adcionar coluna na tabela com uma verificação
Alter table clientes add column credito decimal(9,2) CHECK ( credito >= 0);

-- Adcionar valor em coluna da tabela
insert into clientes (nome) values('otavio');

-- Deletar valor em coluna da tabela
delete from clientes where id = 51;