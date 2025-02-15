CREATE TABLE pais (
    id_pais   NUMBER PRIMARY KEY,
    nome_pais VARCHAR2(30)
);

CREATE TABLE estado (
    id_estado   NUMBER PRIMARY KEY,
    nome_estado VARCHAR2(30),
    id_pais     NUMBER
);

ALTER TABLE estado ADD constraint pk_estado

FOREIGN KEY ( ID_PAIS ) REFERENCES PAIS ( ID_PAIS );


CREATE TABLE cidade (
    id_cidade   NUMBER PRIMARY KEY,
    nome_cidade VARCHAR2(30),
    id_estado   NUMBER
);

ALTER TABLE CIDADE ADD CONSTRAINT PK_CIDADE FOREIGN KEY (ID_ESTADO) REFERENCES ESTADO (ID_ESTADO)

CREATE TABLE bairro (
    id_bairro NUMBER PRIMARY KEY,
    nome_BAIRRO VARCHAR2(30),
    id_cidade NUMBER
);

ALTER TABLE BAIRRO ADD CONSTRAINT PK_BAIRRO FOREIGN KEY (ID_CIDADE) REFERENCES CIDADE (ID_CIDADE);

CREATE TABLE end_cliente (
    id_end      NUMBER PRIMARY KEY,
    logradouro  VARCHAR2(50),
    numero      NUMBER,
    cep         NUMBER,
    id_tipo_log NUMBER,
    referencia  VARCHAR2(30),
    complemento VARCHAR2(30)
);

ALTER TABLE end_cliente ADD ID_CLIENTE NUMBER;

CREATE TABLE tipo_logradouro (
    id_tipo_log NUMBER PRIMARY KEY,
    descricao   VARCHAR2(30)
);

ALTER TABLE end_cliente
    ADD CONSTRAINT pk_tipo_log FOREIGN KEY ( id_tipo_log )
        REFERENCES tipo_logradouro ( id_tipo_log );

CREATE TABLE cliente (
    id_cliente  NUMBER PRIMARY KEY,
    nome        VARCHAR2(100),
    data_nasc   DATE,
    cpf_cnpj    NUMBER,
    id_tipo_cli NUMBER,
    id_genero   NUMBER,
    email       VARCHAR2(30),
    telefone    NUMBER
);

CREATE TABLE tipo_cliente (
    id_tipo_cli NUMBER PRIMARY KEY,
    descricao   VARCHAR2(30)
);
--FADFADSFADSF
/* SDFASDFASDF*/

CREATE TABLE genero (
    id_genero NUMBER PRIMARY KEY,
    descricao VARCHAR2(30)
);

ALTER TABLE cliente
    ADD CONSTRAINT pk_GENERO FOREIGN KEY ( id_genero )
        REFERENCES GENERO ( id_genero );

ALTER TABLE cliente
    ADD CONSTRAINT PK_TIPO_CLI FOREIGN KEY ( id_tipo_cli )
        REFERENCES TIPO_CLIENTE ( id_tipo_cli );










