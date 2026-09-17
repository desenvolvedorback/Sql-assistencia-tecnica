-- define o banco 
USE assistencia_celulares_db;

-- filtragem pelo nome do cliente
select * from clientes
where nome = 'Ana Paula Ribeiro';

-- filtragem pelo valor da ordem de serviço
select id_dispositivo, descricao, valor_total from ordens_servico
where valor_total >= 150;

-- filtragem pela data de abertura da ordem do serviço
select * from ordens_servico
where data_abertura >= '2026-09-12';

-- fitragem pela marca do dispositivo
select marca, imei, modelo from dispositivos
where marca = 'Apple'
or marca = 'Samsung';

-- filtragem pela correspondencia no nome do cliente
select nome, telefone from clientes
where nome like '%Santos%';

-- seleção do nome nome dos clientes em ordem descendente
select * from clientes
order by nome desc;

-- desafios
-- 1) exiba as ordens de serviço por valor total crescente
select * from ordens_servico
order by valor_total asc;
-- 2) exibe o nome tecnico que tem cpf igual a 222.333.444-555.
select * from tecnicos
where cpf = '222.333.444-55';
-- 3) liste todas as ordens de serviço com status igual a aguardando
select * from ordens_servico
where status like '%Aguardando%';