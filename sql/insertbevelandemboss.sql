USE BevelAndEmbossBD;

-- Inserir dados na tabela CLIENTE
INSERT INTO CLIENTE (nome, email, telefone, empresa)
VALUES 
('Ana Souza', 'ana@email.com', '(11) 99999-1111', 'Design Criativo'),
('Carlos Lima', 'carlos@email.com', '(21) 98888-2222', 'TechWeb'),
('Beatriz Santos', 'beatriz@email.com', '(31) 97777-3333', 'Bia Studio');

-- Inserir dados na tabela PREFDESIGN
INSERT INTO PREFDESIGN (estilo, paleta_cores)
VALUES 
('Minimalista', 'Branco, Cinza, Azul'),
('Criativo', 'Roxo, Rosa, Amarelo'),
('Corporativo', 'Azul-marinho, Branco, Cinza');

-- Inserir dados na tabela PROJETO
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


