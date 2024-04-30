insert into usuario (nome, senha) values('op1', 'op1');
insert into usuario (nome, senha) values('op2', 'op2');
insert into usuario (nome, senha) values('op3', 'op3');

insert into produto (nome, quantidade, preco) values ('Banana', 100, 5.00);
insert into produto (nome, quantidade, preco) values ('Laranja', 500, 2.00);
insert into produto (nome, quantidade, preco) values ('Manga', 800, 4.00);

insert into pessoa (idPessoa, nome, logradouro, cidade, estado, email, telefone) values (NEXT VALUE FOR seq_idPessoa, 'Joao', 'Rua 12, Bairro 1', 'Riacho do Norte', 'PA', 'Joao@email.com', '11 1234-5678');
insert into pessoa (idPessoa, nome, logradouro, cidade, estado, email, telefone) values (NEXT VALUE FOR seq_idPessoa, 'Pedro', 'Rua 7, Bairro 8', 'Riacho do Sul', 'PA', 'pedro@email.com', '11 1234-5678');
insert into pessoa (idPessoa, nome, logradouro, cidade, estado, email, telefone) values (NEXT VALUE FOR seq_idPessoa, 'Maria', 'Rua 2, Bairro 7', 'Riacho do Norte', 'PA', 'Maria@email.com', '11 7894-5612');
insert into pessoa (idPessoa, nome, logradouro, cidade, estado, email, telefone) values (NEXT VALUE FOR seq_idPessoa, 'Julia', 'Rua 1, Bairro 10', 'Riacho do Sul', 'PA', 'Julia@email.com', '11 7894-5612');

insert into pessoaFisica (idPessoa, cpf) values (1, '11122233344');
insert into pessoaFisica (idPessoa, cpf) values (3, '11122233355');
insert into pessoaJuridica(idPessoa, cnpj) values (2, '11122233344455');
insert into pessoaJuridica(idPessoa, cnpj) values (4, '11122233344466');

insert into movimentacao (idUsuario, idPessoa, idProduto, quantidade, preco, tipo) values (1, 2, 4, 200, 4.00, 'E');
insert into movimentacao (idUsuario, idPessoa, idProduto, quantidade, preco, tipo) values (1, 2, 4, 50, 4.50, 'E');
insert into movimentacao (idUsuario, idPessoa, idProduto, quantidade, preco, tipo) values (1, 1, 4, 100, 5.00, 'S')
insert into movimentacao (idUsuario, idPessoa, idProduto, quantidade, preco, tipo) values (1, 1, 4, 80, 5.00, 'S');
insert into movimentacao (idUsuario, idPessoa, idProduto, quantidade, preco, tipo) values (2, 4, 5, 300, 1.50, 'E');
insert into movimentacao (idUsuario, idPessoa, idProduto, quantidade, preco, tipo) values (2, 4, 5, 100, 1.80, 'E');
insert into movimentacao (idUsuario, idPessoa, idProduto, quantidade, preco, tipo) values (2, 3, 5, 200, 2.00, 'S');
insert into movimentacao (idUsuario, idPessoa, idProduto, quantidade, preco, tipo) values (2, 3, 5, 500, 2.00, 'S');
insert into movimentacao (idUsuario, idPessoa, idProduto, quantidade, preco, tipo) values (2, 4, 6, 400, 3.00, 'E');
insert into movimentacao (idUsuario, idPessoa, idProduto, quantidade, preco, tipo) values (2, 4, 6, 300, 3.20, 'E');
insert into movimentacao (idUsuario, idPessoa, idProduto, quantidade, preco, tipo) values (2, 3, 6, 200, 4.00, 'S');
insert into movimentacao (idUsuario, idPessoa, idProduto, quantidade, preco, tipo) values (1, 3, 6, 200, 4.00, 'S');


