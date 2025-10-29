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
USE BevelAndEmbossBD;

INSERT INTO CLIENTE (nome, email, telefone, empresa)
VALUES 
('Ana Souza', 'ana@email.com', '(11) 99999-1111', 'Design Criativo'),
('Carlos Lima', 'carlos@email.com', '(21) 98888-2222', 'TechWeb'),
('Beatriz Santos', 'beatriz@email.com', '(31) 97777-3333', 'Bia Studio');

INSERT INTO PREFDESIGN (estilo, paleta_cores)
VALUES 
('Minimalista', 'Branco, Cinza, Azul'),
('Criativo', 'Roxo, Rosa, Amarelo'),
('Corporativo', 'Azul-marinho, Branco, Cinza');

INSERT INTO PROJETO (nome_projeto, tipo, objetivo, id_cliente)
VALUES 
('Site Ana Design', 'Portfólio', 'Divulgar serviços de design gráfico', 1),
('Loja TechWeb', 'E-commerce', 'Vender produtos eletrônicos online', 2);

INSERT INTO SOLICITACAO (status, id_projeto, id_prefdesign)
VALUES 
('Em análise', 1, 1),
('Aprovada', 2, 3);

INSERT INTO CONTEM (id_projeto, id_prefdesign)
VALUES 
(1, 1),
(1, 2),
(2, 3);

SELECT * FROM CLIENTE;
SELECT * FROM PROJETO;
SELECT * FROM SOLICITACAO;
