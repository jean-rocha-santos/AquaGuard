create database AquaGuard1; 
use AquaGuard1;

create table cadastroEmpresa(
	id_usuario int primary key auto_increment,
    email_usuario varchar(100),
    senha_usuario varchar(50)
);

create table dadosEmpresa(
	id_empresa int primary key auto_increment,
    cpnj_empresa int,
	nome_empresa varchar(40),
    email_empresa varchar(100),
    cep_empresa int,
    rua_empresa varchar(50),
    bairro_empresa varchar (40),
    municipio_empresa varchar(40),
    complemento_empresa varchar(20)
);

create table leituraSensores(
	id_sensores int primary key auto_increment,
	sensor1 int,
    sensor2 int
);

insert into cadastroempresa (email_usuario, senha_usuario) values
('heloisa.salgado@sptech.school', 'sptechschool');

select id_usuario as ID, email_usuario  as Email, senha_usuario as Senha from cadastroEmpresa;
select * from cadastroEmpresa;

insert into dadosEmpresa (cpnj_empresa, nome_empresa, email_empresa, cep_empresa, rua_empresa, bairro_empresa, municipio_empresa, complemento_empresa) values
(569113664, 'SPTech', 'sptech@sptech.school', 65221452, 'Haddock Lobo', 'Bela vista', 'São Paulo', 'Metro Consolação');

select * from dadosEmpresa;
select id_empresa as ID, cnpj_empresa as CNPJ, nome_empresa as Nome, email_empresa as Email, cep_empresa as CEP,
 rua_empresa as Rua, bairro_empresa as Bairro, municipio_empresa as Município, complemento_empresa as Complemento from dadosEmpresa;

insert into leituraSensores (sensor1, sensor2) values 
(0,0),
(1,0),
(1,1)
;

select * from leituraSensores;
select id_sensores as ID, sensor1 as 'Sensor de presença 1', sensor2 as 'Sensor de presença 2', dt_atual as 'Data' from leituraSensores;

alter table leituraSensores add column dt_atual datetime default current_timestamp;
desc leituraSensores;

insert into leituraSensores (sensor1, sensor2) values
(1,0);

desc cadastroEmpresa;
desc dadosEmpresa;

alter table dadosEmpresa modify column cpnj_empresa int unique;
alter table dadosEmpresa rename column cpnj_empresa to cnpj_empresa;