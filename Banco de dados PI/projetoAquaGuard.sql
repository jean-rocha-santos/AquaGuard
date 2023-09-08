create database AquaGuard;
use AquaGuard;

create table usuarioEmpresa (
    id_usuario int primary key auto_increment,
    email_usuario varchar(100) not null,
    senha_usuario varchar(50) not null);

create table dadosEmpresa (
	id_empresa int primary key auto_increment,
    cnpj_empresa  float unique,
	nome_empresa varchar(40),
    email_empresa varchar(100));
    
create table enderecoEmpresa(
	id_endereco int primary key auto_increment,
    cep_empresa int,
    rua_empresa varchar(50),
    bairro_empresa varchar (40),
    municipio_empresa varchar(40),
    complemento_empresa varchar(20));

    
create table leituraSensores (
	id_sensores int primary key auto_increment,
	sensor1 int,
    sensor2 int,
    dt_atual datetime default current_timestamp);
   
-- INSERT 
insert into usuarioEmpresa values
(null, 'maria.guardiao@sptech.school', '12345'),
(null, 'heloisa.salgado@sptech.school', '54321'),
(null, 'luan.araujo@sptech.school', '67890'),
(null, 'igor.moura@sptech.school', '09876'),
(null, 'jean.santos@sptech.school', '23456'),
(null, 'giovanni.santos@sptech.school', '76543'),
(null, 'gabriel.barreto@sptech.school', '89012');

insert into dadosEmpresa values
(null, 93365395574574, 'Americanas', 'americanas@gmail.com'),
(null, 20156387000187, 'Assaí Atacadista', 'assaiatacadista@gmail.com'),
(null, 06808342000119, 'Carrefour', 'carrefou@gmail.com'),
(null, 10941266000192, 'Grupo Muffato', 'muffato@gmail.com'),
(null, 68148779000120, 'Sam´s Club', 'samsclub@gmail.com'),
(null, 04344358700014, 'Supermercado Dia', 'supermecadodia@gmail.com'),
(null, 04443587000165, 'Extra', 'extra@gmail.com');

insert into enderecoEmpresa values
(null, 76873064, 'Avenida Urupá', 'Boa Vista', 'Caruaru', 'A' ),
(null, 60192010, 'Rua Vilebaldo Aguiar', 'Santa Lúcia', 'Rio Branco', 'B'),
(null, 45822230, 'Rua São Lourenço', 'Pedreira', 'Araraquara', 'C'),
(null, 69900046, 'Rua Floriano Peixoto', 'Rio Branco', 'Pricumã', 'D'),
(null, 69900400, 'Rua Alagoas', 'Bosque', 'Asa Norte', 'E'),
(null, 49067246, 'Porto Dantas', 'Fazendinha', 'Eldorado', 'F'),
(null, 81200080, 'Rua João Kososki', 'Operário', 'Glória', 'G');

insert into leituraSensores (sensor1, sensor2) values 
(0,0),
(1,0),
(1,1);

-- SELECT
select * from usuarioEmpresa;
select * from dadosEmpresa;
select * from enderecoEmpresa;
select * from leituraSensores;

select id_usuario as ID, email_usuario  as Email, senha_usuario as Senha from usuarioEmpresa;
select cnpj_empresa as CNPJ, nome_empresa as Nome, email_empresa as Email from dadosEmpresa; 
select cep_empresa as CEP, rua_empresa as Rua, bairro_empresa as Bairro, municipio_empresa as Município, complemento_empresa as Complemento from enderecoEmpresa; 
select sensor1 as 'Sensor de presença 1', sensor2 as 'Sensor de presença 2', dt_atual as 'Data e Hora' from leituraSensores;

select * from usuarioEmpresa where email_usuario like 'g%';
select * from dadosEmpresa where nome_empresa like '%a';
select * from enderecoEmpresa where rua_empresa like '%a_';
select * from leituraSensores where sensor1 like '%1%';

    
    