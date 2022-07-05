-- Nomes e RAs dos integrantes:
-- Bruno Zin Almas - 769658
-- Diogo Ichiro - 760528
-- Fabiano Alberto Teodoro Junior - 790800
-- Vitor Mendes Camilo - 790736

INSERT INTO restaurante(cnpj_rest, nome_rest, estoque, nota, cep, bairro, rua, complemento, numero)
-- O programa insere o objeto (entidade) restaurante com determinados valores abaixo
VALUES
('11111111', 'Restaurante Marco', 'Hamburger:20, Alface:5', 8,'11111-111', 'Bairro Jacira', 'Rua do algodão', NULL, '1034'),
('22222222', 'Restaurante Perez', 'Coca-cola:25, Peixe:3', 9,'22222-222', 'Bairro São Fernando', 'Rua do cobre', 'Padaria na esquina', '88'),
('33333333', 'Tenda do Diniz', 'Taco:12, Alface:9', 7,'33333-333', 'Bairro Picerno', 'Rua do porto', NULL, '111'),
('44444444', 'Pizzaria Cabana', 'Queijo:11, Presunto:5', 8,'44444-444', 'Bairro Fernandez', 'Rua do balão', 'Em frente a um bar', '328'),
('55555555', 'Espetaria Henry', 'Frango:19, Acem:15', 7,'55555-555', 'Bairro Pairo', 'Rua do leite', NULL, '987'); 

INSERT INTO funcionario(cod_funcionario, rg, cpf, nome_func, carteira_trabalho, salario, cnpj_rest)
-- O programa insere o objeto (entidade)funcionário com determinados valores abaixo
VALUES
(1, '18.835.348-9', '125.878.489-97', 'Marcio de Paula', '1273469238', 4423, '11111111'),
(2, '17.634.098-9', '692.924.443-97', 'Carlos de Nóbrega', '1936400338', 2832, '44444444'),
(3, '19.584.221-8', '769.658.012-41', 'Ramón Valdez', '1085723951', 5306, '33333333'),
(4, '16.182.677-9', '172.418.909-97', 'Maria Antonieta', '9127569234', 4138, '22222222'),
(5, '28.835.348-9', '225.878.489-97', 'Cezar Coelho', '2273469238', 3392, '11111111');

INSERT INTO mantimentos(cod_mantimento, cnpj_rest, validade, marca, quantidade)
-- O programa insere o objeto (entidade) mantimentos com determinados valores abaixo
VALUES
(1, '11111111', '2022-01-25', 'Pullman', '40'),
(2, '33333333', '2022-01-02', 'Sadia', '30'),
(3, '11111111', '2021-12-25', 'Hortaboa', '30'),
(4, '22222222', '2021-12-25', 'Seara', '40'),
(5, '44444444', '2022-12-30', 'Cisne', '10');

INSERT INTO fornecedor(cnpj_forn, nome_forn, cnpj_rest, cep, bairro, rua, complemento, numero)
-- O programa insere o objeto (entidade) fornecedor com determinados valores abaixo
VALUES 
('09543231', 'Grande Irmão', '33333333', '37.483-586', 'Parque verde', 'Rua do limoeiro', 'comercial', '230'),
('23576523', 'Moura distribuidora', '22222222', '37.543-596', 'Parque verde', 'Rua do limoeiro', 'comercial', '232'),
('92835637', 'Alimentos SC', '11111111', '39.453-536', 'Água limpa', 'Rua João da Silva', 'comercial', '1313'),
('73492457', 'Vagner frios', '44444444', '67.483-002', 'Água limpa', 'Rua José Almeida', 'comercial', '5679'),
('11204856', 'Precinho queijos', '11111111', '38.643-502', 'Parque verde', 'Rua Vale madeira', 'comercial', '544');

INSERT INTO telefone_fornecedor(cnpj_forn, telefone)
-- O programa atribui ao objeto fornecedor uma referencia telefone de valores especificados
VALUES 
('09543231', '16-3293-4598'),
('23576523', '16-3292-2955'),
('92835637', '16-3293-7778'),
('73492457', '16-3291-6452'),
('11204856', '16-3291-0987');

INSERT INTO fornece(cnpj_forn, cod_mantimento)
-- O programa linka a relação fornece com o fornecedor através de dois valores característicos
VALUES 
('09543231', 1),
('23576523', 2),
('92835637', 3),
('73492457', 4),
('11204856', 5);

INSERT INTO telefone_funcionario(cod_funcionario, telefone)
-- O programa insere o telefone do funcionario referenciado como um objeto e linkado com funcionario pelo código
VALUES 
(1, '16-3289-1295'),
(2, '16-3294-4124'),
(3, '16-3292-5259'),
(4, '16-3295-9182'),
(5, '16-3290-2854');

INSERT INTO cardapio(id, cnpj_rest)
-- O programa cria o cardapio com um código de referencia próprio e um pra ligá-lo ao restaurante
VALUES 
(1, '44444444'),
(2, '22222222'),
(3, '11111111'),
(4, '11111111'),
(5, '33333333');

INSERT INTO itens(id, preco, tabela_nutri)
-- O programa cria o objeto itens, especificando atributos listados abaixo
VALUES 
(1, 29, '50g carboidrato, 10g proteina'),
(2, 59, '150g carboidrato, 30g proteina'),
(3, 64, '400g carboidrato, 0g proteina'),
(4, 3, '600ml agua'),
(5, 109 , '50g carboidrato, 400g proteina, 100g gordura');

INSERT INTO ingredientes(id, ingrediente)
-- O programa cria o objeto ingredientes e os referencia com dois atributos próprios
VALUES 
(1, 'pao, tomate, hamburguer, queijo'),
(2, 'pão, 2 carnes, tomate, queijo e cebola'),
(3, 'arroz e brocolis'),
(4, 'agua'),
(5, 'picanha');

INSERT INTO cliente(cod_cliente, nome_cli, cnpj_rest, nota)
-- O programa cria o objeto cliente e linka a ele uma série de atributos do conjunto de dados
VALUES 
(1, 'Silvio Santos', '11111111', 10),
(2, 'Fausto Silva', '22222222', 9),
(3, 'Raul Gil', '44444444', 8),
(4, 'Celso Portiole', '44444444', 10),
(5, 'Galvão Bueno', '33333333', 7),
(6, 'Casagrande', '22222222', 5),
(7, 'Luciano Huck', '11111111', 6),
(8, 'Rodrigo Faro', '55555555', 10),
(9, 'Willian Boner', '33333333', 10),
(10, 'Datena', '55555555', 9);

INSERT INTO cliente_fisico(cod_cliente)
-- O programa cria 5 clientes fictícios um código
VALUES 
(1),
(2),
(3),
(4),
(5);

INSERT INTO cliente_distancia(cod_cliente, cep, bairro, rua, complemento, numero)
-- O programa cria 5 clientes com atributos listados abaixo
VALUES 
(6, '37-123-650', 'Alto monte', 'Rua Pedro Augusto', 'apartamento 131', 155),
(7, '37-123-221', 'Jardim do Sol', 'Rua Matias Davila', 'casa', 755),
(8, '37-654-650', 'Centro', '7 de setembro', 'apartamento 134', 1091),
(9, '37-187-656', 'Centro', 'Rua João Paulo Terra', 'casa', 765),
(10, '37-412-567', 'Alto monte', 'Rua Pedro Augusto', 'casa', 918);

INSERT INTO telefone_cliente(cod_cliente, telefone)
-- O programa insere no conjunto de dados o telefone do cliente linkado com o código do respectivo
VALUES 
(1, '16-3295-5812'),
(2, '16-3299-6543'),
(3, '16-3298-8762'),
(4, '16-3297-5835'),
(5, '16-3297-5935'),
(6, '16-3297-5862'),
(7, '16-3297-5635'),
(8, '16-3297-5234'),
(9, '16-3297-7654'),
(10, '16-3296-5009');

INSERT INTO entregador(cod_entregador, nome_entr)
-- O programa cria o objeto entregador, com código próprio e nome
VALUES 
(1, 'Lewis Hamilton'),
(2, 'Neymar Junior'),
(3, 'Daiane dos Santos'),
(4, 'Cesar Cielo'),
(5, 'Artur Zaneti');

INSERT INTO pedido(cod_pedido, itens, preco, cod_cliente, cod_entregador)
-- O programa cria o objeto pedido, com atributos que linkam quem entrega, quem pede e seu preço
VALUES 
(1, 'x-tudo, agua', 39, 1, 2),
(2, 'picanha, agua', 112, 2, 1),
(3, 'pizza, cerveja', 49, 3, 1),
(4, 'x-salada, agua', 34, 4, 3),
(5, 'arroz e brócolis, agua', 29, 5, 4),
(6, 'pizza, vinho', 59, 6, 5),
(7, 'xbacon, agua', 37, 7, 3),
(8, 'x-tudo, refrigerante', 39, 8, 4),
(9, 'peixe e feijao, vinho', 49, 9, 3),
(10, 'x-salada, cerveja', 39, 10, 2);

INSERT INTO metodo_pagamento(cod_pedido, pix, cartao, dinheiro)
-- O programa especifica os métodos de pagamento possíveis para cada cliente
VALUES 
(1, false, false, true),
(2, true, false, false),
(3, true, false, false),
(4, false, true, false),
(5, true, false, false),
(6, false, true, false),
(7, false, false, true),
(8, false, true, false),
(9, false, true, false),
(10, false, false, true);

INSERT INTO forma_contato(cod_pedido, aplicativo, telefone, dinheiro)
-- O programa insere a forma de contato especificada pra cada cliente no conjunto de dados
VALUES 
(1, false, false, true),
(2, true, false, false),
(3, true, false, false),
(4, false, true, false),
(5, true, false, false),
(6, false, true, false),
(7, false, false, true),
(8, false, true, false),
(9, false, true, false),
(10, false, false, true);

INSERT INTO prepara(cod_funcionario, cod_pedido)
-- O programa cria a relação prepara, linkando quem pediu (código) com o funcionário que realiza
VALUES 
(1, 3),
(2, 2),
(3, 1),
(4, 4),
(4, 5),
(5, 7),
(5, 6),
(2, 8),
(2, 10),
(1, 9);

INSERT INTO entrega(cod_pedido, cod_entregador)
-- O programa cria a relação entrega, linkando quem pediu e quem tá entregando, através dos códigos
VALUES 
(1, 2),
(2, 3),
(3, 4),
(4, 4),
(5, 1);