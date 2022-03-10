-- Banco de dados 'Light on'
create database Light_on;
use Light_on;

-- Tabela usuário
create table usuario ( id_usuario int auto_increment primary key,
					 email varchar (60),
                     nome_usuario varchar (40),
                     senha_usuario varchar (30),
                     empresa varchar (60),
                     CNPJ char (14));
                     
insert into usuario (email, nome_usuario, senha_usuario, empresa, CNPJ) values 
						('arthur.freitas@sptech.school', 'Arthur Peracolli', 12345678, 'Light On', 87462086000152),
                    ('guilherme.goncalves@sptech.school', 'Guilherme Gonçalves', 654789, 'Shopping São Caetano', 15196450000179),
					('caique.silva@sptech.school', 'Caíque Carvalho', 468748, 'Shopping Tatuapé', 09942250000115),
                    ('yuri.goncales@sptech.school', 'Yuri Carralero', 5428499, 'Shopoing Cidade Jardim', 3176884553),
                    ('gabriel.martins@sptech.school', 'Gabriel Martins', 45764878, 'Shopping JK Iguatemi', 92141698000183);
                    
select * from usuario;

create table movimento ( id_medida int auto_increment primary key, 
						estado char, check (estado = 1 or estado = 0),
                        dtHora datetime default current_timestamp);
                        drop table movimento;
                        
insert into movimento (estado) values (0), (1), (0), (1), (1), (1), (0);
