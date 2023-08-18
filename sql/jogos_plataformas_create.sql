CREATE TABLE `jogos_plataformas` (
  `jogo_id` int(11) NOT NULL,
  `plataforma_id` int(11) NOT NULL,
  `na_vendas` decimal(10,2) DEFAULT NULL,
  `eu_vendas` decimal(10,2) DEFAULT NULL,
  `jp_vendas` decimal(10,2) DEFAULT NULL,
  `other_vendas` decimal(10,2) DEFAULT NULL,
  `global_vendas` decimal(10,2) DEFAULT NULL,
  KEY `jogo_id` (`jogo_id`),
  KEY `plataforma_id` (`plataforma_id`),
  CONSTRAINT `fk_jogos_plataformas_jogos` FOREIGN KEY (`jogo_id`) REFERENCES `jogos` (`id`),
  CONSTRAINT `fk_jogos_plataformas_plataformas` FOREIGN KEY (`plataforma_id`) REFERENCES `plataformas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
