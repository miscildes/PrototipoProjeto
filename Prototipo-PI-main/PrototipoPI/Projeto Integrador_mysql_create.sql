CREATE TABLE `Categoria` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`especie_plantas` varchar(500) NOT NULL,
	`palavra_chave` varchar(500) NOT NULL,
	`caracteristica` varchar(500) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Produto` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome_produto` varchar(255) NOT NULL,
	`valor` DECIMAL(255) NOT NULL,
	`descricao` varchar(1000) NOT NULL,
	`quantidade` bigint(1000) NOT NULL,
	`especie` varchar(500) NOT NULL,
	`tamanho` varchar(500) NOT NULL,
	`usuario_id` bigint NOT NULL,
	`categoria_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Usuário` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`senha` varchar(500) NOT NULL,
	`endereco` varchar(600) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Produto` ADD CONSTRAINT `Produto_fk0` FOREIGN KEY (`usuario_id`) REFERENCES `Usuário`(`id`);

ALTER TABLE `Produto` ADD CONSTRAINT `Produto_fk1` FOREIGN KEY (`categoria_id`) REFERENCES `Categoria`(`id`);




