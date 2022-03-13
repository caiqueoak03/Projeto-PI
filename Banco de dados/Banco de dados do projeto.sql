-- Banco de dados 'Light on'
create database Light_on;
use Light_on;

-- Tabela usuario
create table usuario ( id_usuario int auto_increment primary key,
					 email varchar (60),
                     nome_usuario varchar (40),
                     senha_usuario varchar (30),
                     empresa varchar (60),
                     CNPJ char (14));
                     
insert into usuario (email, nome_usuario, senha_usuario, empresa, CNPJ) values 
						('arthur.freitas@sptech.school', 'Arthur Peracolli', 12345678, 'Shopping Maua', 87462086000152),
                    ('guilherme.goncalves@sptech.school', 'Guilherme Goncalves', 654789, 'Shopping Sao Caetano', 15196450000179),
					('caique.silva@sptech.school', 'Caique Carvalho', 468748, 'Shopping Tatuape', 09942250000115),
                    ('yuri.goncales@sptech.school', 'Yuri Carralero', 5428499, 'Shopoing Cidade Jardim', 3176884553),
                    ('gabriel.martins@sptech.school', 'Gabriel Martins', 45764878, 'Shopping JK Iguatemi', 92141698000183);
                    
-- Selects utlizados na tabela "usuario".
                   
select * from usuario;

select * from usuario order by nome_usuario desc;

select empresa from usuario where empresa like '%a';

-- Updates da tabela 

update usuario set email = 'exemplo@sptech.school' where id_usuario = 2;
update usuario set nome_usuario  = 'Joao Henrique' where id_usuario = 4;
update usuario set senha_usuario  = '1254787' where id_usuario = 3;
update usuario set empresa = 'Shopping Aricanduva' where id_usuario = 5;
update usuario set cnpj = '12345678910' where id_usuario = 1;

-- Tabela movimento

create table movimento ( id_movimento int auto_increment primary key, 
						estado char, check (estado = 1 or estado = 0),
                        dtHora datetime default current_timestamp);
                        drop table movimento;
                       
insert into movimento (estado) values (0), (1), (0), (1), (1), (1), (0), (0), (1), (0), (0), (1), (1), (1);

-- Selects utilizados na tabela "movimento"

select * from movimento;

select dtHora, estado from movimento where dtHora like '%2022-03-14%';

select estado from movimento where estado = 1;

-- Updates da tabela 
update movimento set estado = '1' where id_medida = 2;
