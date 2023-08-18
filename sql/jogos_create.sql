CREATE TABLE `jogos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) NOT NULL,
  `ano` int(11) DEFAULT NULL,
  `genero_id` int(11) NOT NULL,
  `publicadora_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `genero_id` (`genero_id`),
  KEY `publicadora_id` (`publicadora_id`),
  CONSTRAINT `fk_jogos_genero` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`),
  CONSTRAINT `fk_jogos_publicadora` FOREIGN KEY (`publicadora_id`) REFERENCES `publicadoras` (`id`)
);
