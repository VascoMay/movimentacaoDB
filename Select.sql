/*Dados completos de pessoas f�sicas. */
select * from pessoa inner join pessoaFisica on pessoa.idPessoa = pessoaFisica.idPessoa;

/*Dados completos de pessoas jur�dicas. */
select * from pessoa inner join pessoaJuridica on pessoa.idPessoa = pessoaJuridica.idPessoa;

/*Movimenta��es de entrada, com produto, comprador, quantidade, pre�o unit�rio e valor total. */
select pe.nome produto, po.nome fornecedor, m.quantidade, m.preco, (m.preco * m.quantidade) as valorTotal 
	from movimentacao m 
		inner join pessoa pe on pe.idPessoa = m.idPessoa
		inner join produto po on po.idProduto = m.idProduto
	where tipo = 'E';

/*Movimenta��es de sa�da, com produto, comprador, quantidade, pre�o unit�rio e valor total. */
select pe.nome produto, po.nome fornecedor, m.quantidade, m.preco, (m.preco * m.quantidade) as valorTotal 
	from movimentacao m 
		inner join pessoa pe on pe.idPessoa = m.idPessoa
		inner join produto po on po.idProduto = m.idProduto
	where tipo = 'S';

/*Valor total das entradas  agrupadas por produto. */
select p.nome, sum(m.quantidade * m.preco) as totalEntradas
	from movimentacao m
		inner join produto p on p.idProduto = m.idProduto
	where tipo = 'E'
	group by p.nome;

/*Valor total das sa�das agrupadas por produto. */
select p.nome, sum(m.quantidade * m.preco) as TotalSaidas
	from movimentacao m
		inner join produto p on p.idProduto = m.idProduto
	where tipo = 'S'
	group by p.nome;

/*Operadores que n�o efetuaram movimenta��es de entrada (compra). */
select nome from usuario where idUsuario not in (select idUsuario from movimentacao where tipo = 'E');

/*Valor total de entrada, agrupado por operador. */
select o.nome, sum(m.quantidade * m.preco) as TotalEntrada
	from movimentacao m
		inner join usuario o on o.idUsuario = m.idUsuario
	where tipo = 'E'
	group by o.nome;

/*Valor total de sa�da, agrupado por operador. */
select o.nome, sum(m.quantidade * m.preco) as TotalSaidas
	from movimentacao m
		inner join usuario o on o.idUsuario = m.idUsuario
	where tipo = 'S'
	group by o.nome;

/*M�dia ponderada */
select p.nome, sum(m.quantidade * m.preco) / SUM(m.quantidade) as mediaPonderada
	from movimentacao m
		inner join produto p on p.idProduto = m.idProduto
	where tipo = 'S'
	group by p.nome;