create table profissoes(
  id int not null identity(1,1),
  cargo varchar(60) not null,
  primary key (id)



);

create table clientes(

id int not null identity(1,1),
nome varchar (60) not null,
dataNascimento date not null,
telefone varchar (10),
idProfissao int not null,
primary key (id),
foreign key(idProfissao) references profissoes (id)
);

insert into profissoes (cargo) values ('Programador')
insert into profissoes (cargo) values ('Analista de Sistemas')
insert into profissoes (cargo) values ('Suporte')
insert into profissoes (cargo) values ('Gerente')

insert into clientes (nome, dataNascimento, telefone, idProfissao) values ('Lucas', '15-05-1998', '999999999', 1)
insert into clientes (nome, dataNascimento, telefone, idProfissao) values ('Viviane', '10-05-1990', '999999999',2)
insert into clientes (nome, dataNascimento, telefone, idProfissao) values ('Glebson', '01-01-2000', '999999999', 3)
insert into clientes (nome, dataNascimento, telefone, idProfissao) values ('Larissa', '20-02-1999', '999999999', 4)

update clientes set idProfissao = 1 where nome = 'Glebson'



SELECT c.id, c.nome, c.datanascimento, c.telefone, p.cargo
FROM clientes AS c INNER JOIN profissoes AS p
ON c.idprofissao = p.id;


select * from clientes



