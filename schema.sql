-- 1. CRIAÇÃO DAS TABELAS
CREATE TABLE produtos(
	id_produto INT PRIMARY KEY,
	nome_produto VARCHAR(60) NOT NULL,
	preco_produto DECIMAL(10,2) NOT NULL,
	categoria_produto VARCHAR(60) NOT NULL
);

CREATE TABLE lotes(
	id_lote INT PRIMARY KEY,
	id_produto INT NOT NULL,
	data_validade DATE NOT NULL,
	quantidade INT NOT NULL,
	FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

CREATE TABLE avarias(
	id_avaria INT PRIMARY KEY,
	id_lote INT NOT NULL,
	tipo_quebra VARCHAR(60) NOT NULL,
	quantidade_perdida INT NOT NULL,
	data_registro DATE NOT NULL,
	FOREIGN KEY (id_lote) REFERENCES lotes(id_lote)
);

-- 2. INSERÇÃO DOS DADOS FICTÍCIOS
INSERT INTO produtos (id_produto, nome_produto, preco_produto, categoria_produto)
VALUES 
(1, 'Arroz Integral 1kg', 6.50, 'Mercearia'),
(2, 'Leite Integral 1L', 4.80, 'Laticínios'),
(3, 'Biscoito Recheado 140g', 3.20, 'Biscoitos');

INSERT INTO lotes (id_lote, id_produto, data_validade, quantidade)
VALUES 
(101, 1, '2027-06-30', 500),
(102, 2, '2026-11-15', 200),
(103, 3, '2027-01-20', 1000);

INSERT INTO avarias (id_avaria, id_lote, tipo_quebra, quantidade_perdida, data_registro)
VALUES 
(501, 101, 'Embalagem Rasgada (Transporte/Caminhão)', 5, '2026-10-01'),
(502, 102, 'Caixa Furada na Movimentação do Palete', 12, '2026-10-03'),
(503, 103, 'Pacote Amassado/Aberto no Estoque', 3, '2026-10-05');

-- 3. CONSULTA DE RELATÓRIO (JOIN)
SELECT 
    produtos.nome_produto, 
    avarias.tipo_quebra,
    avarias.quantidade_perdida
FROM avarias
INNER JOIN lotes 
    ON avarias.id_lote = lotes.id_lote
INNER JOIN produtos 
    ON lotes.id_produto = produtos.id_produto;