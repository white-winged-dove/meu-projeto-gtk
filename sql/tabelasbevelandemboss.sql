CREATE DATABASE BevelAndEmbossBD;
USE BevelAndEmbossBD;

CREATE TABLE CLIENTE (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    empresa VARCHAR(100)
);

CREATE TABLE PREFDESIGN (
    id_prefdesign INT AUTO_INCREMENT PRIMARY KEY,
    estilo VARCHAR(100),
    paleta_cores VARCHAR(200)
);

CREATE TABLE PROJETO (
    id_projeto INT AUTO_INCREMENT PRIMARY KEY,
    nome_projeto VARCHAR(150) NOT NULL,
    tipo VARCHAR(100),
    objetivo TEXT,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE SOLICITACAO (
    id_solicitacao INT AUTO_INCREMENT PRIMARY KEY,
    data_solicitacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
    id_projeto INT,
    id_prefdesign INT,
    FOREIGN KEY (id_projeto) REFERENCES PROJETO(id_projeto),
    FOREIGN KEY (id_prefdesign) REFERENCES PREFDESIGN(id_prefdesign)
);

CREATE TABLE CONTEM (
    id_projeto INT,
    id_prefdesign INT,
    PRIMARY KEY (id_projeto, id_prefdesign),
    FOREIGN KEY (id_projeto) REFERENCES PROJETO(id_projeto),
    FOREIGN KEY (id_prefdesign) REFERENCES PREFDESIGN(id_prefdesign)
);
