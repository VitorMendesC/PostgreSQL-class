-- Nomes e RAs dos integrantes:
-- Bruno Zin Almas - 769658
-- Diogo Ichiro - 760528
-- Fabiano Alberto Teodoro Junior - 790800
-- Vitor Mendes Camilo - 790736


/* Esta pesquisa faz a junção das relações do fornecedor, fornece e restaurante.
A intenção é relacionar tais dados das tabelas, para compreender qual fornecedor fornece o que
para qual restaurante*/
SELECT nome_forn as Fornecedor, cod_mantimento as "código mantimento", nome_rest as Restaurante
FROM fornecedor as f, restaurante as r, fornece
WHERE f.cnpj_rest = r.cnpj_rest AND f.cnpj_forn = fornece.cnpj_forn;
/* O resultao dessa pesquisa é uma relação onde as colunas são o nome do fornecedor,
o código do mantimento que o mesmo fornece e o nome do restaurante para o qual ele fornece tal mantimento*/


/* Esta pesquisa faz a junção das relações do cliente e pedido.
De forma a agrupar as informações de um determinado cliente com seus respectivos pedidos*/
SELECT nome_cli as "Nome Cliente", itens, CONCAT('R$', TO_CHAR(preco,'999D99')) as "Preço"
FROM cliente as c, pedido as p
WHERE c.cod_cliente = p.cod_cliente;
/* O resultado desta pesquisa é uma relação com o nome do cliente, os itens de um determinado pedido
de tal cliente e o valor do pedido*/


/* Esta pesquisa faz a junção das relações do cliente, cliente a distância e telefone do cliente,
juntando todas as informações relacionadas a um cliente a distância desconsiderando seus pedidos*/
SELECT nome_cli as Cliente, bairro, telefone
FROM cliente as c, cliente_distancia as d, telefone_cliente as t
WHERE c.cod_cliente = d.cod_cliente AND c.cod_cliente = t.cod_cliente;
/* O retorno desta pesquisa é o nome do cliente, o bairro em que o cliente mora e seu telefone*/


/* Inicialmente é feito a junção das relaçoões cliente e pedido, em seguida os dados são agrupados
pelas notas dadas pelos clientes em seus respectivos pedidos, então são selecionadas somente as entradas cujas notas
são maiores do que 6 e por fim a relação é ordenada de forma decrscente em relação as notas*/
SELECT nota as "Avaliação do cliente", CONCAT('R$', TO_CHAR(AVG(preco), '999D99')) as "Gasto Médio"
FROM cliente as c, pedido as p
WHERE c.cod_cliente = p.cod_cliente
GROUP BY nota
HAVING nota > 6
ORDER BY nota DESC;
/* O retorno dessa pesquisa, é uma relação das notas dadas pelos clientes e o valór medio gasto pelos clientes que deram
tais notas, exemplo: clientes que deram a nota 8, gastaram em média R$ 80,00.
Organizada de forma decrescente em relação a nota, e mostrando somente notas maiores que 6*/


/* Primeiramente é feito a junção das relações funcionario e restaurante, em seguida os dados são agrupados por nome do
restaurante, e então é selecionado somente as entradas, cujo o salario medio dos funcionarios de um determinado restaurante
é maior do que R$ 4000*/
SELECT nome_rest as Restaurante, CONCAT('R$', TO_CHAR(AVG(salario), '999999D99')) as "Salário Médio"
FROM funcionario as f, restaurante as r
WHERE f.cnpj_rest = r.cnpj_rest
GROUP BY nome_rest
HAVING AVG(salario) > 4000;
/* O retorno desta pesquisa é uma relação onde as colunas são o nome do restaurante e o salario médio dos funcionarios de tal restaurante,
onde as entradas cujas medias são menores do que R$ 4000 foram removidas*/


/* Esta pesquisa faz uso de duas funções não vistas em aula, DECLARE CURSOR e FETCH, tais funções respectivamente criam um cursor
que é posicionado em uma dada relação, no caso SELECT * FROM restaurante, e em seguida através do FETCH recupera alguns dados especificos da relação
onde estava o cursor*/
DECLARE cur CURSOR FOR SELECT * FROM restaurante;
FETCH FORWARD 3 FROM cur;
/* O resultado dessa pesquisa são os primeiros 3 itens da relação restaurante, já que o cursor foi posicionado por padrão no inicio de tal relação
e através do comando FORWARD 3 em seguido ao comando FETCH escolhemos as proximas 3 entradas.*/