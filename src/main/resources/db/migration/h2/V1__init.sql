create table empresa (
   id bigint not null,
    cnpj varchar(255) not null,
    data_atualizacao timestamp not null,
    data_criacao timestamp not null,
    razao_social varchar(255) not null,
    primary key (id)
);

create table funcionario (
   id bigint not null,
    cpf varchar(255) not null,
    data_atualizacao timestamp not null,
    data_criacao timestamp not null,
    email varchar(255) not null,
    nome varchar(255) not null,
    perfil varchar(255) not null,
    qtd_horas_almoco float,
    qtd_horas_trabalho_dia float,
    senha varchar(255) not null,
    valor_hora decimal(19,2),
    empresa_id bigint,
    primary key (id)
);

create table lancamento (
   id bigint not null,
    data timestamp not null,
    data_atualizacao timestamp not null,
    data_criacao timestamp not null,
    descricao varchar(255),
    localizacao varchar(255),
    tipo varchar(255) not null,
    funcionario_id bigint,
    primary key (id)
);

alter table funcionario 
   add constraint FK4cm1kg523jlopyexjbmi6y54j 
   foreign key (empresa_id) 
   references empresa;
   
alter table lancamento 
   add constraint FK46i4k5vl8wah7feutye9kbpi4 
   foreign key (funcionario_id) 
   references funcionario;