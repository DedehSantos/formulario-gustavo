-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/04/2024 às 19:59
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd`
--
CREATE DATABASE IF NOT EXISTS `bd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd`;
--
-- Banco de dados: `bd_mobiliaria`
--
CREATE DATABASE IF NOT EXISTS `bd_mobiliaria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_mobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `foto`
--

CREATE TABLE `foto` (
  `id_arquivo` int(11) NOT NULL,
  `nome_foto` varchar(100) NOT NULL,
  `id_imovel_foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_arquivo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `foto`
--
ALTER TABLE `foto`
  MODIFY `id_arquivo` int(11) NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `dbescolar`
--
CREATE DATABASE IF NOT EXISTS `dbescolar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbescolar`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(4) NOT NULL,
  `nomeAluno` varchar(40) NOT NULL,
  `matriculaAluno` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `curso`
--

CREATE TABLE `curso` (
  `id` int(4) NOT NULL,
  `nomeCurso` varchar(40) NOT NULL,
  `cargaHorariaCurso` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursodisciplina`
--

CREATE TABLE `cursodisciplina` (
  `id` int(4) NOT NULL,
  `codigoCurso` int(4) DEFAULT NULL,
  `codigoDisciplina` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id` int(4) NOT NULL,
  `nomeDisciplina` varchar(40) NOT NULL,
  `cargaHorariaDisciplina` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `professor`
--

CREATE TABLE `professor` (
  `id` int(4) NOT NULL,
  `nomeProfessor` varchar(40) NOT NULL,
  `matriculaProfessor` varchar(40) NOT NULL,
  `escolaridadeProfessor` varchar(40) NOT NULL,
  `especialidadeProfessor` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `professordisciplina`
--

CREATE TABLE `professordisciplina` (
  `id` int(4) NOT NULL,
  `codigoProfessor` int(4) DEFAULT NULL,
  `codigoDisciplina` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cursodisciplina`
--
ALTER TABLE `cursodisciplina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codigoCurso` (`codigoCurso`),
  ADD KEY `codigoDisciplina` (`codigoDisciplina`);

--
-- Índices de tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `professordisciplina`
--
ALTER TABLE `professordisciplina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codigoProfessor` (`codigoProfessor`),
  ADD KEY `codigoDisciplina` (`codigoDisciplina`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cursodisciplina`
--
ALTER TABLE `cursodisciplina`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professordisciplina`
--
ALTER TABLE `professordisciplina`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cursodisciplina`
--
ALTER TABLE `cursodisciplina`
  ADD CONSTRAINT `cursodisciplina_ibfk_1` FOREIGN KEY (`codigoCurso`) REFERENCES `curso` (`id`),
  ADD CONSTRAINT `cursodisciplina_ibfk_2` FOREIGN KEY (`codigoDisciplina`) REFERENCES `disciplina` (`id`);

--
-- Restrições para tabelas `professordisciplina`
--
ALTER TABLE `professordisciplina`
  ADD CONSTRAINT `professordisciplina_ibfk_1` FOREIGN KEY (`codigoProfessor`) REFERENCES `professor` (`id`),
  ADD CONSTRAINT `professordisciplina_ibfk_2` FOREIGN KEY (`codigoDisciplina`) REFERENCES `disciplina` (`id`);
--
-- Banco de dados: `formulario-gustavo`
--
CREATE DATABASE IF NOT EXISTS `formulario-gustavo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `formulario-gustavo`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` int(45) NOT NULL,
  `senha` int(50) NOT NULL,
  `email` varchar(110) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `data_nasc` date NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Banco de dados: `pagina1`
--
CREATE DATABASE IF NOT EXISTS `pagina1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pagina1`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `postagem`
--

CREATE TABLE `postagem` (
  `id` int(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `subtitulo` varchar(100) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `texto` varchar(100) NOT NULL,
  `data_hora` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `postagem`
--
ALTER TABLE `postagem`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `postagem`
--
ALTER TABLE `postagem`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Despejando dados para a tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"formulario-gustavo\",\"table\":\"usuarios\"},{\"db\":\"sistema_matricula_2024\",\"table\":\"lista_alunos_2024\"},{\"db\":\"sistema_matricula_2024\",\"table\":\"alunos\"},{\"db\":\"bd_mobiliaria\",\"table\":\"foto\"},{\"db\":\"dbescolar\",\"table\":\"cursodisciplina\"},{\"db\":\"upload_de_arquivos\",\"table\":\"arquivos\"},{\"db\":\"dbescolar\",\"table\":\"professordisciplina\"},{\"db\":\"dbescolar\",\"table\":\"professor\"},{\"db\":\"dbescolar\",\"table\":\"disciplina\"},{\"db\":\"dbescolar\",\"table\":\"curso\"}]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Despejando dados para a tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-04-01 17:58:25', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt_BR\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices de tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices de tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices de tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices de tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices de tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices de tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices de tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices de tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices de tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `sistema_matricula_2024`
--
CREATE DATABASE IF NOT EXISTS `sistema_matricula_2024` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sistema_matricula_2024`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lista_alunos_2024`
--

CREATE TABLE `lista_alunos_2024` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `curso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `lista_alunos_2024`
--

INSERT INTO `lista_alunos_2024` (`id`, `nome`, `curso`) VALUES
(1, 'Adryan Gabriel Santos Nascimento', '1? A Programa??o de Jogos Digitai\r'),
(2, 'Alanderson Freire da Silva', '1? A Programa??o de Jogos Digitai\r'),
(3, 'Angela Adrielly Gon?alves da Silva', '1? A Programa??o de Jogos Digitai\r'),
(4, 'Anna Beatriz Silvestre de Moura', '1? A Programa??o de Jogos Digitai\r'),
(5, 'Anna Julia Oliveira Nogueira', '1? A Programa??o de Jogos Digitai\r'),
(6, 'Anne Kendolly Dias Gomes', '1? A Programa??o de Jogos Digitai\r'),
(7, 'Antonio Marcus Cardoso da S. Costa', '1? A Programa??o de Jogos Digitai\r'),
(8, 'Arthur Fernandes Alves', '1? A Programa??o de Jogos Digitai\r'),
(9, 'Bruno Alysson Souza Valentin Filho', '1? A Programa??o de Jogos Digitai\r'),
(10, 'Cauan Jonathas Almeida Ataide Alves', '1? A Programa??o de Jogos Digitai\r'),
(11, 'Enailly da Silva Marques', '1? A Programa??o de Jogos Digitai\r'),
(12, 'Gabriel Farias Patricio', '1? A Programa??o de Jogos Digitai\r'),
(13, 'Gabriel Lacerda Costa', '1? A Programa??o de Jogos Digitai\r'),
(14, 'Ian Davi Rodrigues Paiva', '1? A Programa??o de Jogos Digitai\r'),
(15, 'Jaine Libna Cord?o Costa e Silva', '1? A Programa??o de Jogos Digitai\r'),
(16, 'J?nio Chaves Cordeiro Filho', '1? A Programa??o de Jogos Digitai\r'),
(17, 'Jo?o Henrique dos Santos Cabral', '1? A Programa??o de Jogos Digitai\r'),
(18, 'Jo?o Pedro de Barros Silva', '1? A Programa??o de Jogos Digitai\r'),
(19, 'Jo?o Ricardo do Nascimento Silva', '1? A Programa??o de Jogos Digitai\r'),
(20, 'Jo?o Victor Dias Ribeiro', '1? A Programa??o de Jogos Digitai\r'),
(21, 'Jos? Diego de guiar Souto', '1? A Programa??o de Jogos Digitai\r'),
(22, 'Kelvin Bezerra Rodrigues', '1? A Programa??o de Jogos Digitai\r'),
(23, 'Lais Aline Monteiro Juli?o', '1? A Programa??o de Jogos Digitai\r'),
(24, 'Luiz Felipe Pereira de Ferreira', '1? A Programa??o de Jogos Digitai\r'),
(25, 'Mateus Henrique Carvalho Matos', '1? A Programa??o de Jogos Digitai\r'),
(26, 'Matheus Vinicius Santana de Medeiros', '1? A Programa??o de Jogos Digitai\r'),
(27, 'Miguel Alexandro Queiroz de Souza', '1? A Programa??o de Jogos Digitai\r'),
(28, 'Nicolas Gomes Lucena de Morais', '1? A Programa??o de Jogos Digitai\r'),
(29, 'Pedro Henrique Sant\'anna Gomes', '1? A Programa??o de Jogos Digitai\r'),
(30, 'Pyetro Phelipe Mota de Sousa', '1? A Programa??o de Jogos Digitai\r'),
(31, 'Renan Gustavo Lira Barbosa', '1? A Programa??o de Jogos Digitai\r'),
(32, 'Robert Vinicius de Oliveira Silva Lima', '1? A Programa??o de Jogos Digitai\r'),
(33, 'Ryan Silva Azevedo', '1? A Programa??o de Jogos Digitai\r'),
(34, 'Silvia Cabral Araujo', '1? A Programa??o de Jogos Digitai\r'),
(35, 'Suellen Souto Cavalcante', '1? A Programa??o de Jogos Digitai\r'),
(36, 'Thomas Pierre de Aquino Figueiredo', '1? A Programa??o de Jogos Digitai\r'),
(37, 'Yarllei Victor Santos Ferreira', '1? A Programa??o de Jogos Digitai\r'),
(38, 'Yasmin Cartaxo do Rego', '1? A Programa??o de Jogos Digitai\r'),
(39, 'Adnaelly Vit?ria de Aquino Silva', '1? B  Programa??o de Jogos Digitais\r'),
(40, 'Adriano Melo Queiroga dos Santos', '1? B  Programa??o de Jogos Digitais\r'),
(41, 'Aleff Gabriel Albuquerque de Morais', '1? B  Programa??o de Jogos Digitais\r'),
(42, 'Alexsandro Francisco Porto Basilio', '1? B  Programa??o de Jogos Digitais\r'),
(43, 'Ana Beatriz Leal da Fonseca', '1? B  Programa??o de Jogos Digitais\r'),
(44, 'Ana Sofia Pereira Lima', '1? B  Programa??o de Jogos Digitais\r'),
(45, 'Arthur Arag?o Thamay Medeiros', '1? B  Programa??o de Jogos Digitais\r'),
(46, 'Arthur Cavalcanti Oliveira', '1? B  Programa??o de Jogos Digitais\r'),
(47, 'Caio Vinicius Araujo de Andrade', '1? B  Programa??o de Jogos Digitais\r'),
(48, 'Carolina Silva Gon?alves', '1? B  Programa??o de Jogos Digitais\r'),
(49, 'Cau? Nunes Gon?alves de Brito', '1? B  Programa??o de Jogos Digitais\r'),
(50, 'Daniela Camila Vieira Mendon?a', '1? B  Programa??o de Jogos Digitais\r'),
(51, 'Emmanuele Michievicy Contente', '1? B  Programa??o de Jogos Digitais\r'),
(52, 'Gabriel Douglas Guedes Almeida', '1? B  Programa??o de Jogos Digitais\r'),
(53, 'Henry Evangelista de Almeida Ara?jo', '1? B  Programa??o de Jogos Digitais\r'),
(54, 'Jefferson Vieira Virginio', '1? B  Programa??o de Jogos Digitais\r'),
(55, 'Jhonata Gabriel Ferreira e Silva', '1? B  Programa??o de Jogos Digitais\r'),
(56, 'Jo?o Vitor Queiroz Silva', '1? B  Programa??o de Jogos Digitais\r'),
(57, 'Kaiky Fernandes de Araujo', '1? B  Programa??o de Jogos Digitais\r'),
(58, 'Kevem Matheus Ramos do Nascimento', '1? B  Programa??o de Jogos Digitais\r'),
(59, 'Lara Barbosa de Vasconcelos', '1? B  Programa??o de Jogos Digitais\r'),
(60, 'Maria Fernanda C?ndido Santos', '1? B  Programa??o de Jogos Digitais\r'),
(61, 'Mariana Rocha Gomes', '1? B  Programa??o de Jogos Digitais\r'),
(62, 'Matheus Vinicius da Silva Brito', '1? B  Programa??o de Jogos Digitais\r'),
(63, 'Maycon Vinicios de Azevedo Souza', '1? B  Programa??o de Jogos Digitais\r'),
(64, 'Nathan Ara?jo Luna', '1? B  Programa??o de Jogos Digitais\r'),
(65, 'Pedro Henrique de Melo Souza Pereira', '1? B  Programa??o de Jogos Digitais\r'),
(66, 'Pedro Miguel de Oliveira Silva', '1? B  Programa??o de Jogos Digitais\r'),
(67, 'Rallyson Pereira Vasconcelos', '1? B  Programa??o de Jogos Digitais\r'),
(68, 'Rian Neves Patricio', '1? B  Programa??o de Jogos Digitais\r'),
(69, 'Ronald Nathanael Silva', '1? B  Programa??o de Jogos Digitais\r'),
(70, 'Sara Camile de Lima Santos', '1? B  Programa??o de Jogos Digitais\r'),
(71, 'Severino Felipe Camelo da Silva', '1? B  Programa??o de Jogos Digitais\r'),
(72, 'Thiago Santana de S? Filho', '1? B  Programa??o de Jogos Digitais\r'),
(73, 'Thomas Rafael Ribeiro A. Marques', '1? B  Programa??o de Jogos Digitais\r'),
(74, 'Vitor Cola?o de Lima', '1? B  Programa??o de Jogos Digitais\r'),
(75, 'Vitoria Cola?o de Lima', '1? B  Programa??o de Jogos Digitais\r'),
(76, 'Yago Silva de Souza', '1? B  Programa??o de Jogos Digitais\r'),
(77, 'Ygor Fernnando Lima Martins', '1? B  Programa??o de Jogos Digitais\r'),
(78, 'Adrielly Loranny Ferreira da Silva', '1? A Design Gr?fico\r'),
(79, 'Aghata Martins de Sousa', '1? A Design Gr?fico\r'),
(80, 'Aline Surama Rocha Barreto', '1? A Design Gr?fico\r'),
(81, 'Ana Luiza Henriques da Silva', '1? A Design Gr?fico\r'),
(82, 'Anderson Henrique de Sousa', '1? A Design Gr?fico\r'),
(83, 'Anna Beatriz Silva Lucena', '1? A Design Gr?fico\r'),
(84, 'Anna Liz da Silva Farias', '1? A Design Gr?fico\r'),
(85, 'Arthur Leite Silva Pereira', '1? A Design Gr?fico\r'),
(86, 'Caio Pereira Soares', '1? A Design Gr?fico\r'),
(87, 'Camila Rodrigues Cardoso', '1? A Design Gr?fico\r'),
(88, 'Denner Alves Serafim', '1? A Design Gr?fico\r'),
(89, 'Emilly Marques Moreira', '1? A Design Gr?fico\r'),
(90, 'Fernando Gabriel Tomaz da Silva', '1? A Design Gr?fico\r'),
(91, 'Giovanna da Silva Santos', '1? A Design Gr?fico\r'),
(92, 'Guilherme Samuel Lima Sim?es', '1? A Design Gr?fico\r'),
(93, 'Hellen Kamilly N. de Vasconcelos Silva', '1? A Design Gr?fico\r'),
(94, 'Izabel Cristina M. Conserva Souza', '1? A Design Gr?fico\r'),
(95, 'Julia Moura Pereira', '1? A Design Gr?fico\r'),
(96, 'Julia Pereira Barbosa', '1? A Design Gr?fico\r'),
(97, 'Keicy Gabrielly Lopes Bandeira', '1? A Design Gr?fico\r'),
(98, 'Kerllon Hanry Ferreira Silva de Melo', '1? A Design Gr?fico\r'),
(99, 'K?zia Vit?ria dos Santos Silva', '1? A Design Gr?fico\r'),
(100, 'Kleber Messias Barbosa Pereira', '1? A Design Gr?fico\r'),
(101, 'Laura Vivian Felix de Lima', '1? A Design Gr?fico\r'),
(102, 'Livia Cust?dio', '1? A Design Gr?fico\r'),
(103, 'Livya Victorya Muniz Sales Gonzaga', '1? A Design Gr?fico\r'),
(104, 'Lorena Kelly Greg?rio Neres', '1? A Design Gr?fico\r'),
(105, 'Luan Guilherme Oliveira Ferreira', '1? A Design Gr?fico\r'),
(106, 'Maria Eduarda Lisb?a Paulino', '1? A Design Gr?fico\r'),
(107, 'Maria Gabriela Brito Pereira', '1? A Design Gr?fico\r'),
(108, 'Maria Julia Guedes dos Santos', '1? A Design Gr?fico\r'),
(109, 'Maria Laura Barbosa Xavier', '1? A Design Gr?fico\r'),
(110, 'Matheus Marques Policarpo', '1? A Design Gr?fico\r'),
(111, 'Mathews Augusto Lima Ara?jo', '1? A Design Gr?fico\r'),
(112, 'Nathalia Rodrigues Sousa', '1? A Design Gr?fico\r'),
(113, 'Pedro Arthur Freire da Silva', '1? A Design Gr?fico\r'),
(114, 'Riquelme Ribeiro Nunes', '1? A Design Gr?fico\r'),
(115, 'Rute Cristina de Souza Pereira', '1? A Design Gr?fico\r'),
(116, 'Sabrina Marianny Santos Diniz', '1? A Design Gr?fico\r'),
(117, 'Welker Yuri Santos Diniz', '1? A Design Gr?fico\r'),
(118, 'Yasmin Ketly Bezerra de Farias', '1? A Design Gr?fico\r'),
(119, 'Ygor Santos da Silva', '1? A Design Gr?fico\r'),
(120, 'Adrielly Nicole Barreto Silva', '1? B Design Gr?fico\r'),
(121, 'Adryan Victor Silva Matias', '1? B Design Gr?fico\r'),
(122, 'Ana Beatriz de Araujo In?cio', '1? B Design Gr?fico\r'),
(123, 'Anna Livia dos Santos Barros Silva', '1? B Design Gr?fico\r'),
(124, 'Arthur Tavares de Oliveira', '1? B Design Gr?fico\r'),
(125, 'Danyella Wadja de Carvalho Oliveira', '1? B Design Gr?fico\r'),
(126, 'Debora Tayna Lima Ferreira', '1? B Design Gr?fico\r'),
(127, 'Elis Araujo Andriola Silva', '1? B Design Gr?fico\r'),
(128, 'Emily Yasmin Velez Pereira', '1? B Design Gr?fico\r'),
(129, 'Esther Mirelly Mendes de Brito', '1? B Design Gr?fico\r'),
(130, 'Evellyn Laviny Campos do ?', '1? B Design Gr?fico\r'),
(131, 'Felipe Henrique Neri de Souza', '1? B Design Gr?fico\r'),
(132, 'Gabriela Ferreira Ara?jo', '1? B Design Gr?fico\r'),
(133, 'Guilherme Emanuel Nunes Silva', '1? B Design Gr?fico\r'),
(134, 'Heloisa Nascimento Soares', '1? B Design Gr?fico\r'),
(135, 'Italo Gabriel de Sousa Domingos', '1? B Design Gr?fico\r'),
(136, 'Jardson de Oliveira Silva', '1? B Design Gr?fico\r'),
(137, 'Jhenyffer da Silva Figueiredo', '1? B Design Gr?fico\r'),
(138, 'Jo?o Gabriel Marques Gerv?zio', '1? B Design Gr?fico\r'),
(139, 'Jo?o Pedro da Silva de Oliveira Barros', '1? B Design Gr?fico\r'),
(140, 'Jo?o Victor Gomes Travassos', '1? B Design Gr?fico\r'),
(141, 'Jonathan Igor Paulo Santos', '1? B Design Gr?fico\r'),
(142, 'Jose David de Lima', '1? B Design Gr?fico\r'),
(143, 'Julya Fl?via de Prado Moraes', '1? B Design Gr?fico\r'),
(144, 'Kaio Lucas Costa Medeiros', '1? B Design Gr?fico\r'),
(145, 'Leticia Lima Marcelino', '1? B Design Gr?fico\r'),
(146, 'Livia Freitas Santos', '1? B Design Gr?fico\r'),
(147, 'Lucas Gabriel Apolin?rio Silva', '1? B Design Gr?fico\r'),
(148, 'Maria Clara dos Santos Correia', '1? B Design Gr?fico\r'),
(149, 'Maira Evelyn Ferreira Alves', '1? B Design Gr?fico\r'),
(150, 'Maria Luiza Araujo Costa', '1? B Design Gr?fico\r'),
(151, 'Murilo Alves de Souza Flor?ncio', '1? B Design Gr?fico\r'),
(152, 'Pedro Henrique Farias Ribeiro', '1? B Design Gr?fico\r'),
(153, 'Rayra Nathane Menezes Silva', '1? B Design Gr?fico\r'),
(154, 'Rayssa Freitas Ridrigues', '1? B Design Gr?fico\r'),
(155, 'Samira Silva Oliveira', '1? B Design Gr?fico\r'),
(156, 'Sophia Rodrigues Sales', '1? B Design Gr?fico\r'),
(157, 'Tamyres Alves Costa', '1? B Design Gr?fico\r'),
(158, 'Vinicius Jos? Bezerra Silva', '1? B Design Gr?fico\r'),
(159, 'Vitor Mohandas Ramalho Nunes', '1? B Design Gr?fico\r'),
(160, 'Weslley Davi Costa Araujo', '1? B Design Gr?fico\r'),
(161, 'Yaslan da Silva Farias', '1? B Design Gr?fico\r'),
(162, 'Abra?o Gon?alves dos Santos', '1? A  Publicidade\r'),
(163, 'Acsa Leticia Simplicio Eduardo', '1? A  Publicidade\r'),
(164, 'Ana Beatriz Diniz de Araujo', '1? A  Publicidade\r'),
(165, 'Ana Clara Santos Marques', '1? A  Publicidade\r'),
(166, 'Anny Vitoria Rodrigues Luna Almeida', '1? A  Publicidade\r'),
(167, 'Ashley Fernanda Oliveira Mendes', '1? A  Publicidade\r'),
(168, 'Beatriz Figueiredo Daniel dos Santos', '1? A  Publicidade\r'),
(169, 'Bianca Costa de Freitas', '1? A  Publicidade\r'),
(170, 'Bruno Guimar?es Bandeira', '1? A  Publicidade\r'),
(171, 'Byanca Renally Diniz de Araujo', '1? A  Publicidade\r'),
(172, 'Debora Costa Araujo', '1? A  Publicidade\r'),
(173, 'Geislayne Carvalho Costa', '1? A  Publicidade\r'),
(174, 'Guilherme Alves Guimar?es', '1? A  Publicidade\r'),
(175, 'Guilherme Cruz da Silva', '1? A  Publicidade\r'),
(176, 'Heloise de Lacerda Barros', '1? A  Publicidade\r'),
(177, 'Ingrid Beatriz Alves dos Santos', '1? A  Publicidade\r'),
(178, 'Jhennifer Rayssa Amorim Silva', '1? A  Publicidade\r'),
(179, 'Jo?o Gabriel Moreira Cruz', '1? A  Publicidade\r'),
(180, 'Jos? Araujo da Silva Neto', '1? A  Publicidade\r'),
(181, 'Jullye Suivia dos Santos Silva', '1? A  Publicidade\r'),
(182, 'Kaio Gabriel Menezes de Farias', '1? A  Publicidade\r'),
(183, 'Karollyne Victorya Fragoso Greg?rio', '1? A  Publicidade\r'),
(184, 'Kemilly Isabelle Louren?o Barbosa', '1? A  Publicidade\r'),
(185, 'Kethley Beatriz Silva Martins', '1? A  Publicidade\r'),
(186, 'Kissiany Kimberly Lima Neves', '1? A  Publicidade\r'),
(187, 'Lais Gabrielle Medeiros Herculano', '1? A  Publicidade\r'),
(188, 'Larah Walkyria Khaly Monteiro', '1? A  Publicidade\r'),
(189, 'Maria Laura Cassimiro Maciel', '1? A  Publicidade\r'),
(190, 'Maria Vitoria Eustaquio da Silva', '1? A  Publicidade\r'),
(191, 'Nat?lye Hozana da Costa Fernandes', '1? A  Publicidade\r'),
(192, 'Nicholas Levi Oliveira Santos', '1? A  Publicidade\r'),
(193, 'R?vila Drielly Rodrigues Maciel', '1? A  Publicidade\r'),
(194, 'Rosimery de Sousa Amarante', '1? A  Publicidade\r'),
(195, 'Sofia Carolina de Albuquerque Santos', '1? A  Publicidade\r'),
(196, 'Sthefanny da Silva Souza', '1? A  Publicidade\r'),
(197, 'Taylor Nunes Santos', '1? A  Publicidade\r'),
(198, 'Thaina Alves de Lima', '1? A  Publicidade\r'),
(199, 'Thays Alves de Lima', '1? A  Publicidade\r'),
(200, 'Vinicius Araujo dos Santos', '1? A  Publicidade\r'),
(201, 'Vitor Rafael de Souza', '1? A  Publicidade\r'),
(202, 'Yasmim Macedo Cabral', '1? A  Publicidade\r'),
(203, 'Yasmin Kelly Gomes Albuquerque', '1? A  Publicidade\r'),
(204, 'Yasmin Sofia Louren?o', '1? A  Publicidade\r'),
(205, 'Agatha Vitoria Gomes Paz', '1? B  Publicidade\r'),
(206, 'Alyce Rafaella Barbosa Costa', '1? B  Publicidade\r'),
(207, 'Ana Clara Cardoso Ferreira', '1? B  Publicidade\r'),
(208, 'Ana Clara de Souza', '1? B  Publicidade\r'),
(209, 'Ana Livia Almeida C. Araujo', '1? B  Publicidade\r'),
(210, 'Ana Livia Moreira de Barros', '1? B  Publicidade\r'),
(211, 'Ana Livia Santos Costa', '1? B  Publicidade\r'),
(212, 'Anna Beatriz Martins dos Santos', '1? B  Publicidade\r'),
(213, 'Ariel Abrantes Aciole Nascimento', '1? B  Publicidade\r'),
(214, 'Caio Miguel Sales Menschhein', '1? B  Publicidade\r'),
(215, 'Camila Vit?ria dos Santos Figueiredo', '1? B  Publicidade\r'),
(216, 'Emmelliny Silva Dias Farias', '1? B  Publicidade\r'),
(217, 'Guilherme Marinho do ?', '1? B  Publicidade\r'),
(218, 'Iasmin Gizely Barbosa Alves', '1? B  Publicidade\r'),
(219, 'Jo?o Pedro da Silva Alves', '1? B  Publicidade\r'),
(220, 'Kaliandra Raissa do Nascimento Souza', '1? B  Publicidade\r'),
(221, 'Kemilly Vict?ria Dantas Caz?;1? B  Publicidade\r', ''),
(222, 'Lais Julia Silva Guedes', '1? B  Publicidade\r'),
(223, 'Lara Gabrielly Leite Soares', '1? B  Publicidade\r'),
(224, 'Lavinia Nascimento Silva', '1? B  Publicidade\r'),
(225, 'Laysa Ara?jo Oliveira', '1? B  Publicidade\r'),
(226, 'Leticia Gabriely S. M. de Vasconcelos', '1? B  Publicidade\r'),
(227, 'Maria Clara Apolin?rio Silva', '1? B  Publicidade\r'),
(228, 'Maria Clara da Silva Lima Borges', '1? B  Publicidade\r'),
(229, 'Maria Clara Leonardo da Cruz', '1? B  Publicidade\r'),
(230, 'Maria Eduarda da Silva Santiago', '1? B  Publicidade\r'),
(231, 'Mar?lia Eduarda da Silva Santos', '1? B  Publicidade\r'),
(232, 'Maria Eduarda Fernandes B. Oliveira', '1? B  Publicidade\r'),
(233, 'Maria Heloisa Freire Martins', '1? B  Publicidade\r'),
(234, 'Maria Luiza Lima Marques', '1? B  Publicidade\r'),
(235, 'Maria Luiza Teixeira Gomes', '1? B  Publicidade\r'),
(236, 'Maria Rita de Cassia Azevedo Alves', '1? B  Publicidade\r'),
(237, 'Nathalia Farias de Oliveira Silva', '1? B  Publicidade\r'),
(238, 'Otavio Lucas Cabral Louren?o', '1? B  Publicidade\r'),
(239, 'Pedro Lucas de Araujo Dutra Veras', '1? B  Publicidade\r'),
(240, 'Raiff Ygor Lima Queiroz', '1? B  Publicidade\r'),
(241, 'Renata Andrade da Silva', '1? B  Publicidade\r'),
(242, 'Renato Rizork Souto Maior Gomes', '1? B  Publicidade\r'),
(243, 'Sophia Andrade Amorim', '1? B  Publicidade\r'),
(244, 'Victor Emanuel Pereira de Lira', '1? B  Publicidade\r'),
(245, 'Yanni Dantas Chaves', '1? B  Publicidade\r'),
(246, 'Alex Rany? Guilherme Cristino', '2? A Programa??o de Jogos Digitais\r'),
(247, 'Ana beatriz Ara?jo Salvino', '2? A Programa??o de Jogos Digitais\r'),
(248, 'Ana Clara Oliveira das Chagas', '2? A Programa??o de Jogos Digitais\r'),
(249, 'Ana Fl?via Ribeiro Gomes Nascimento', '2? A Programa??o de Jogos Digitais\r'),
(250, 'Ana Luiza Almeida Maia', '2? A Programa??o de Jogos Digitais\r'),
(251, 'Andrei Bernado Nascimento da Silva', '2? A Programa??o de Jogos Digitais\r'),
(252, 'Arthur Juan Costa Ara?jo', '2? A Programa??o de Jogos Digitais\r'),
(253, 'Daniel Dantas da Silva', '2? A Programa??o de Jogos Digitais\r'),
(254, 'Erick Gabriel Ara?jo Leandro', '2? A Programa??o de Jogos Digitais\r'),
(255, 'Eug?nio Genu?no Mota', '2? A Programa??o de Jogos Digitais\r'),
(256, 'Gabriel de Sousa Gonzaga', '2? A Programa??o de Jogos Digitais\r'),
(257, 'Giullia Barros Pietoso Camara', '2? A Programa??o de Jogos Digitais\r'),
(258, 'Gleiciane Almeida de Lima', '2? A Programa??o de Jogos Digitais\r'),
(259, 'Gustavo Oliviera de Menezes', '2? A Programa??o de Jogos Digitais\r'),
(260, 'Heitor G?nu?no Mota', '2? A Programa??o de Jogos Digitais\r'),
(261, 'J?lia da Costa Silva Cruz', '2? A Programa??o de Jogos Digitais\r'),
(262, 'Laura Lima Pires', '2? A Programa??o de Jogos Digitais\r'),
(263, 'Lucas Abrantes R?go', '2? A Programa??o de Jogos Digitais\r'),
(264, 'Luiz Alberto Medeiros Soares', '2? A Programa??o de Jogos Digitais\r'),
(265, 'Maria Alice Borba Agra', '2? A Programa??o de Jogos Digitais\r'),
(266, 'Maria Clara Alves de Lima', '2? A Programa??o de Jogos Digitais\r'),
(267, 'Maria Clara dos  Reis Silva', '2? A Programa??o de Jogos Digitais\r'),
(268, 'Maria Evelyn da Silva Almeida', '2? A Programa??o de Jogos Digitais\r'),
(269, 'Marina Ven?ncio Oliveira', '2? A Programa??o de Jogos Digitais\r'),
(270, 'M?rio Samuel Oliveira Concei??o', '2? A Programa??o de Jogos Digitais\r'),
(271, 'Pedro Elias barbosa de Sousa', '2? A Programa??o de Jogos Digitais\r'),
(272, 'Pedro Henrique dos Santos Sousa', '2? A Programa??o de Jogos Digitais\r'),
(273, 'Pedro V?ctor de Farias Almeida', '2? A Programa??o de Jogos Digitais\r'),
(274, 'Pedro Welisson de Lima Ara?jo', '2? A Programa??o de Jogos Digitais\r'),
(275, 'Rebeca Kemylly Vasquez Mendes', '2? A Programa??o de Jogos Digitais\r'),
(276, 'Renan Victor Rocha Pessoa', '2? A Programa??o de Jogos Digitais\r'),
(277, 'Reuel Rodrigues Ferreira', '2? A Programa??o de Jogos Digitais\r'),
(278, 'Samara Rafaelly Brand?o Rocha', '2? A Programa??o de Jogos Digitais\r'),
(279, 'Samuel Fontes Lima', '2? A Programa??o de Jogos Digitais\r'),
(280, 'Thifany Tayane Pereira Galdino', '2? A Programa??o de Jogos Digitais\r'),
(281, 'Victor Gabriel Clementino Lima', '2? A Programa??o de Jogos Digitais\r'),
(282, 'Vit?ria Cristina Rodrigues Amancio Vieira', '2? A Programa??o de Jogos Digitais\r'),
(283, 'Adrean Danilo Alves Lima', '2? B  Programa??o de Jogos Digitais\r'),
(284, 'Alberto Victor Barbosa Pereira', '2? B  Programa??o de Jogos Digitais\r'),
(285, 'Aleff Silva Lima', '2? B  Programa??o de Jogos Digitais\r'),
(286, 'Ana Carolini da Silva Sousa', '2? B  Programa??o de Jogos Digitais\r'),
(287, 'Anna Carolina Cavalcante Lira', '2? B  Programa??o de Jogos Digitais\r'),
(288, 'Anna Clara Fernandes de Melo Silva', '2? B  Programa??o de Jogos Digitais\r'),
(289, 'Anna Vit?ria Dantas de Sousa Silva', '2? B  Programa??o de Jogos Digitais\r'),
(290, 'Daniel Nascimento de Lima', '2? B  Programa??o de Jogos Digitais\r'),
(291, 'Daniel Weslley Pinto Cavalcante', '2? B  Programa??o de Jogos Digitais\r'),
(292, 'David Vinic?us Silva Souza', '2? B  Programa??o de Jogos Digitais\r'),
(293, 'Deborah Thamyris Araujo Primo', '2? B  Programa??o de Jogos Digitais\r'),
(294, 'Eloyse Sthefanny da Silva Cavalcante', '2? B  Programa??o de Jogos Digitais\r'),
(295, 'Enzo N?collas Martins de Andrade', '2? B  Programa??o de Jogos Digitais\r'),
(296, 'Evandro Gomes da Silva Filho', '2? B  Programa??o de Jogos Digitais\r'),
(297, 'Iasmin Noelly Santos Ramos', '2? B  Programa??o de Jogos Digitais\r'),
(298, 'Ibrahimovic Negreiros Guedes de Andrade', '2? B  Programa??o de Jogos Digitais\r'),
(299, 'Isabella Albuquerque Araujo Gomes', '2? B  Programa??o de Jogos Digitais\r'),
(300, 'Italo Matheus da Silva Ramos', '2? B  Programa??o de Jogos Digitais\r'),
(301, 'Ivny de Lima Silva', '2? B  Programa??o de Jogos Digitais\r'),
(302, 'Jo?o Matheus Souto Neves', '2? B  Programa??o de Jogos Digitais\r'),
(303, 'Jo?o Victor Machado Gomes', '2? B  Programa??o de Jogos Digitais\r'),
(304, 'Keila Andrade da Silva', '2? B  Programa??o de Jogos Digitais\r'),
(305, 'Levi Dantas Peres', '2? B  Programa??o de Jogos Digitais\r'),
(306, 'Maiza Gabriela da Silva Moreira', '2? B  Programa??o de Jogos Digitais\r'),
(307, 'Maria Aym? de Sousa Silva', '2? B  Programa??o de Jogos Digitais\r'),
(308, 'Mariana Araujo Azevedo', '2? B  Programa??o de Jogos Digitais\r'),
(309, 'Matheus Barbosa Escorel Lopes', '2? B  Programa??o de Jogos Digitais\r'),
(310, 'P?mela Yohanna Bezerra Belo', '2? B  Programa??o de Jogos Digitais\r'),
(311, 'Rayssa da Silva Nunes', '2? B  Programa??o de Jogos Digitais\r'),
(312, 'Raul Medeiros de Sousa', '2? B  Programa??o de Jogos Digitais\r'),
(313, 'Samuel Ferreira Vasconcelos Alves', '2? B  Programa??o de Jogos Digitais\r'),
(314, 'Sarah Nunes Magalh?es', '2? B  Programa??o de Jogos Digitais\r'),
(315, 'Victor Coriolano Maciel', '2? B  Programa??o de Jogos Digitais\r'),
(316, 'Vin?cius Zidane Vieira Ferreira', '2? B  Programa??o de Jogos Digitais\r'),
(317, 'Wagner Kennedy Pereira Rodrigues', '2? B  Programa??o de Jogos Digitais\r'),
(318, 'Ana Beatriz de Ara?jo Abrantes', '2? A Design de Cal?ados\r'),
(319, 'Ana Clara Lauriano Gomes dos Santos', '2? A Design de Cal?ados\r'),
(320, 'Clarisse Sousa Alves', '2? A Design de Cal?ados\r'),
(321, 'Eduarda da Silva Raposo', '2? A Design de Cal?ados\r'),
(322, 'Emilly Michele Santos Meira', '2? A Design de Cal?ados\r'),
(323, 'Emilly Nath?lia Pereira Tavares', '2? A Design de Cal?ados\r'),
(324, 'Evillyn Isadora da Silva', '2? A Design de Cal?ados\r'),
(325, 'Gabriela Cavalcante dos Santos', '2? A Design de Cal?ados\r'),
(326, 'Giullia Borges Martins de Oliveira', '2? A Design de Cal?ados\r'),
(327, 'Guilherme C?ndido da Silva Rodrigues', '2? A Design de Cal?ados\r'),
(328, 'Ingryd Keittyanne Sales Arruda', '2? A Design de Cal?ados\r'),
(329, 'Isaac de Oliveira Alves', '2? A Design de Cal?ados\r'),
(330, 'J?lia Mariana Clementino Oliveira', '2? A Design de Cal?ados\r'),
(331, 'Let?cia Carvalho Silva Farias', '2? A Design de Cal?ados\r'),
(332, 'Lindsay Sofie Araujo Alves', '2? A Design de Cal?ados\r'),
(333, 'Luana Rodrigues Guedes da Silva', '2? A Design de Cal?ados\r'),
(334, 'Maria Clara de Oliveira Souza', '2? A Design de Cal?ados\r'),
(335, 'Maria Fernanda Pires de Farias', '2? A Design de Cal?ados\r'),
(336, 'Maria Heloisa Ferreira dos Santos', '2? A Design de Cal?ados\r'),
(337, 'Maria Laura Santros Ferreira', '2? A Design de Cal?ados\r'),
(338, 'Mariana Carvalho Silva Farias', '2? A Design de Cal?ados\r'),
(339, 'Mirely Santana Farias', '2? A Design de Cal?ados\r'),
(340, 'Nicolas samuel Bezerra de Souza', '2? A Design de Cal?ados\r'),
(341, 'Rafaelle Kymmi Carvalho Melo', '2? A Design de Cal?ados\r'),
(342, 'Raquel Silva Arnaud da Silva', '2? A Design de Cal?ados\r'),
(343, 'Rayssa Lima Travassos de Albuquerque', '2? A Design de Cal?ados\r'),
(344, 'Rhanna Nicolle Santos Silva', '2? A Design de Cal?ados\r'),
(345, 'Sara Clara Oliveira Farias', '2? A Design de Cal?ados\r'),
(346, 'Sarah Evelyn Albuquerque da Silva', '2? A Design de Cal?ados\r'),
(347, 'Thays Emanuelly Laureano Silva', '2? A Design de Cal?ados\r'),
(348, 'V?ctor Gabriel Souza Rocha de Lemos', '2? A Design de Cal?ados\r'),
(349, 'Yasmin da Silva Mouzinho', '2? A Design de Cal?ados\r'),
(350, 'Allan Matheus Nascimento de V. Gomes', '3? A  Programa??o de Jogos Digitais\r'),
(351, 'Ana Clara Belmino Freire', '3? A  Programa??o de Jogos Digitais\r'),
(352, 'Ana Clara da Silva Ribeiro Oliveira de Morais', '3? A  Programa??o de Jogos Digitais\r'),
(353, 'Ana Lu?sa Batista de Lima', '3? A  Programa??o de Jogos Digitais\r'),
(354, 'Ana Luisa da Costa Alves', '3? A  Programa??o de Jogos Digitais\r'),
(355, 'Anna Julya Ribeiro Tom?;3? A  Programa??o de Jogos Digitais\r', ''),
(356, 'Anna Luiza Silvestre de Moura', '3? A  Programa??o de Jogos Digitais\r'),
(357, 'Anna Luysa Ferreira  da Silva Sousa', '3? A  Programa??o de Jogos Digitais\r'),
(358, 'Antuany Fernando Pereira da Silva', '3? A  Programa??o de Jogos Digitais\r'),
(359, 'Arthur de Souza Faustino', '3? A  Programa??o de Jogos Digitais\r'),
(360, 'Arthur Miguel Galv?o', '3? A  Programa??o de Jogos Digitais\r'),
(361, 'Arthur Ruan Alves da Silva', '3? A  Programa??o de Jogos Digitais\r'),
(362, 'Bruno Renan Silva Fernandes de Paula', '3? A  Programa??o de Jogos Digitais\r'),
(363, 'Camila Steffany Campos da Silva', '3? A  Programa??o de Jogos Digitais\r'),
(364, 'Dandara Gomes Silva', '3? A  Programa??o de Jogos Digitais\r'),
(365, 'Daniel Aguiar Saraiva', '3? A  Programa??o de Jogos Digitais\r'),
(366, 'Davi Mariz Martins Cantalice', '3? A  Programa??o de Jogos Digitais\r'),
(367, 'Emilly Joyce Tavares da Silva', '3? A  Programa??o de Jogos Digitais\r'),
(368, 'Felipe Adriel da Silva', '3? A  Programa??o de Jogos Digitais\r'),
(369, 'Felipe Emanuel Ponciano de Mello', '3? A  Programa??o de Jogos Digitais\r'),
(370, 'Felipe Matheus Santos', '3? A  Programa??o de Jogos Digitais\r'),
(371, 'Fernanda Ara?jo Souza', '3? A  Programa??o de Jogos Digitais\r'),
(372, 'Fillipe Costa Silva', '3? A  Programa??o de Jogos Digitais\r'),
(373, 'Gabriel Cardoso Ferreira', '3? A  Programa??o de Jogos Digitais\r'),
(374, 'Gabriel Henrique Santana de Brito', '3? A  Programa??o de Jogos Digitais\r'),
(375, 'Geovanna Emilly Tom? Gomes', '3? A  Programa??o de Jogos Digitais\r'),
(376, 'Gustavo Do Nascimento Silva', '3? A  Programa??o de Jogos Digitais\r'),
(377, 'Henrique C?sar dos Santos Dias', '3? A  Programa??o de Jogos Digitais\r'),
(378, 'Henrique Souza Santos', '3? A  Programa??o de Jogos Digitais\r'),
(379, 'Hiago Claus Farias Azevedo', '3? A  Programa??o de Jogos Digitais\r'),
(380, 'Iasmyn Vit?ria Viturino da Silva', '3? A  Programa??o de Jogos Digitais\r'),
(381, 'Jos? Augusto Cisino Bezerra de Oliveira', '3? A  Programa??o de Jogos Digitais\r'),
(382, 'J?lia Lethicia Ferreira Santos', '3? A  Programa??o de Jogos Digitais\r'),
(383, 'Kervin Thayrone Santana Virginio', '3? A  Programa??o de Jogos Digitais\r'),
(384, 'Larissa Correia Silva', '3? A  Programa??o de Jogos Digitais\r'),
(385, 'Larissa Emanuela Lima Ara?jo', '3? A  Programa??o de Jogos Digitais\r'),
(386, 'Let?cia Evellyn Agostinho do Nascimento', '3? A  Programa??o de Jogos Digitais\r'),
(387, 'Maria Luiza Cabral Ventura', '3? A  Programa??o de Jogos Digitais\r'),
(388, 'Oscar Henrique O Maciel', '3? A  Programa??o de Jogos Digitais\r'),
(389, 'Pedro Henrique Bezerra Gon?alves', '3? A  Programa??o de Jogos Digitais\r'),
(390, 'Rafael Fernandes Herculano da Silva', '3? A  Programa??o de Jogos Digitais\r'),
(391, 'Samuel da Silva Martins', '3? A  Programa??o de Jogos Digitais\r'),
(392, 'Vinicius Santos Sousa', '3? A  Programa??o de Jogos Digitais\r'),
(393, 'Carla Beatriz dos Santos Ventura', '3? B Programa??o de Jogos Digitais\r'),
(394, 'Cauan Tavares Pereira', '3? B Programa??o de Jogos Digitais\r'),
(395, 'Cleiton Mikael de Menezes Aguiar', '3? B Programa??o de Jogos Digitais\r'),
(396, 'Daniel Santos de Oliveira', '3? B Programa??o de Jogos Digitais\r'),
(397, 'David Maxwell  Pereira Silva', '3? B Programa??o de Jogos Digitais\r'),
(398, 'Denilson Quaresma da Silva Filho', '3? B Programa??o de Jogos Digitais\r'),
(399, 'Deyvisson Lucas Correia do Nascimento', '3? B Programa??o de Jogos Digitais\r'),
(400, 'Diego Gonzaga Cavalcante Rodrigues', '3? B Programa??o de Jogos Digitais\r'),
(401, 'Dowglas Kauan Barbosa Costa', '3? B Programa??o de Jogos Digitais\r'),
(402, '?llysson Emanuel Silva Melo de Sousa', '3? B Programa??o de Jogos Digitais\r'),
(403, 'Eloyzi Nayana Braz de Sousa', '3? B Programa??o de Jogos Digitais\r'),
(404, 'Emanuelle Sales Galisa', '3? B Programa??o de Jogos Digitais\r'),
(405, 'Emersson Luiz Santos de Oliveira', '3? B Programa??o de Jogos Digitais\r'),
(406, 'Emily dos Santos Trajano', '3? B Programa??o de Jogos Digitais\r'),
(407, 'Erick Lira Mendes', '3? B Programa??o de Jogos Digitais\r'),
(408, 'Evellyn Rillary Costa Rodrigues da Silva', '3? B Programa??o de Jogos Digitais\r'),
(409, 'Evellyn Thaffiny Barbosa Macimiro Santos', '3? B Programa??o de Jogos Digitais\r'),
(410, 'Gabriel Alves Pereira', '3? B Programa??o de Jogos Digitais\r'),
(411, 'Gustavo Galdino Santos', '3? B Programa??o de Jogos Digitais\r'),
(412, 'I?go Cawh?  Augusto da costa', '3? B Programa??o de Jogos Digitais\r'),
(413, 'Isaac Pessoa Souza', '3? B Programa??o de Jogos Digitais\r'),
(414, 'Isaque Silva de Ara?jo', '3? B Programa??o de Jogos Digitais\r'),
(415, 'Jo?o Caetano de Oliveira Silva', '3? B Programa??o de Jogos Digitais\r'),
(416, 'Jo?o Gabriel Ramalho Batista', '3? B Programa??o de Jogos Digitais\r'),
(417, 'Jo?o Kelby Coutinho Castro', '3? B Programa??o de Jogos Digitais\r'),
(418, 'Jo?o Rafael Barbosa Silva', '3? B Programa??o de Jogos Digitais\r'),
(419, 'Jo?o Victor Duarte de Oliveira', '3? B Programa??o de Jogos Digitais\r'),
(420, 'John Lucas Fernandes Alves', '3? B Programa??o de Jogos Digitais\r'),
(421, 'Jorge Eduardo Barroso Barreto', '3? B Programa??o de Jogos Digitais\r'),
(422, 'Jos? Arley Silva Oliveira', '3? B Programa??o de Jogos Digitais\r'),
(423, 'Jos? Jonatias Pereira de lima Neto', '3? B Programa??o de Jogos Digitais\r'),
(424, 'Jos? Lucas Laurindo Silva', '3? B Programa??o de Jogos Digitais\r'),
(425, 'Jos? Lucas Pereira Silva', '3? B Programa??o de Jogos Digitais\r'),
(426, 'Jos? Mateus Lima Teodulino Gondim', '3? B Programa??o de Jogos Digitais\r'),
(427, 'J?lia Alves da Silva Almeida', '3? B Programa??o de Jogos Digitais\r'),
(428, 'Let?cia Rodrigues da Silva', '3? B Programa??o de Jogos Digitais\r'),
(429, 'Lu?s Eduardo Soares Oliveira', '3? B Programa??o de Jogos Digitais\r'),
(430, 'Pedro Felipe Lisboa de Brito', '3? B Programa??o de Jogos Digitais\r'),
(431, 'Pedro Henrique de Sousa Campos', '3? B Programa??o de Jogos Digitais\r'),
(432, 'Rhanderson C?sar da Silva Pereira', '3? B Programa??o de Jogos Digitais\r'),
(433, 'Tiago Gonzaga Cavalcante Rodrigues', '3? B Programa??o de Jogos Digitais\r'),
(434, 'Wictor Miguel Lopes dos Santos', '3? B Programa??o de Jogos Digitais\r'),
(435, 'Ana Luiza Oliveira de Lima', '3? C Programa??o de Jogos Digitais\r'),
(436, 'Andrey Silva Ara?jo', '3? C Programa??o de Jogos Digitais\r'),
(437, 'Davi Sergio Silva Filho', '3? C Programa??o de Jogos Digitais\r'),
(438, 'Eduarda Eshley Sousa', '3? C Programa??o de Jogos Digitais\r'),
(439, 'Elton Cipriano de Lucena', '3? C Programa??o de Jogos Digitais\r'),
(440, 'Emanuel Filipe Alves de Andrade', '3? C Programa??o de Jogos Digitais\r'),
(441, 'Emilly Jolie da Silva Caiana', '3? C Programa??o de Jogos Digitais\r'),
(442, 'Erick Maicon Batista Freitas', '3? C Programa??o de Jogos Digitais\r'),
(443, 'Fellipe Eduardo Alves da Silva', '3? C Programa??o de Jogos Digitais\r'),
(444, 'Gabriel Matias Feitosa', '3? C Programa??o de Jogos Digitais\r'),
(445, 'Heverton Ramos Oliveira', '3? C Programa??o de Jogos Digitais\r'),
(446, 'Jo?o Victor  Silva de Albuquerque', '3? C Programa??o de Jogos Digitais\r'),
(447, 'Jo?o Victor De Arruda Dias', '3? C Programa??o de Jogos Digitais\r'),
(448, 'Jos? Kelvyn Barbosa Vidal de Negureiros', '3? C Programa??o de Jogos Digitais\r'),
(449, 'J?lio C?sar da Silva', '3? C Programa??o de Jogos Digitais\r'),
(450, 'Kamille Ferreira da Costa Coutinho', '3? C Programa??o de Jogos Digitais\r'),
(451, 'Kauan Eduardo Rodrigues de Brito', '3? C Programa??o de Jogos Digitais\r'),
(452, 'Kauan Israel Dias de Oliveira', '3? C Programa??o de Jogos Digitais\r'),
(453, 'Larissa Kathleen Corr?a de Sousa', '3? C Programa??o de Jogos Digitais\r'),
(454, 'Laura Lisboa Filgueira', '3? C Programa??o de Jogos Digitais\r'),
(455, 'Leonardo Guimar?es Alves', '3? C Programa??o de Jogos Digitais\r'),
(456, 'Leonardo Pereira Neiva', '3? C Programa??o de Jogos Digitais\r'),
(457, 'Luan Benedito de Brito Marques', '3? C Programa??o de Jogos Digitais\r'),
(458, 'Lucas Henrique Figueiredo Gomes', '3? C Programa??o de Jogos Digitais\r'),
(459, 'Lu?s Gabriel Cabral Leal', '3? C Programa??o de Jogos Digitais\r'),
(460, 'Luiza Beatriz Barbosa dos Santos', '3? C Programa??o de Jogos Digitais\r'),
(461, 'Maria Clara Gonzaga da Silva', '3? C Programa??o de Jogos Digitais\r'),
(462, 'Maria Eduarda Andr? Lopes Santos', '3? C Programa??o de Jogos Digitais\r'),
(463, 'Mariana Kelly de Brito Soares', '3? C Programa??o de Jogos Digitais\r'),
(464, 'Milena Karoline dos Santos Souza', '3? C Programa??o de Jogos Digitais\r'),
(465, 'Mokly Ellen Gomes de Lima', '3? C Programa??o de Jogos Digitais\r'),
(466, 'Newmany Henrique Borgo Cavalcanti', '3? C Programa??o de Jogos Digitais\r'),
(467, 'Pedro Bezerra Sobrinho Filho', '3? C Programa??o de Jogos Digitais\r'),
(468, 'Pedro Gabriel de Souza Rodrigues', '3? C Programa??o de Jogos Digitais\r'),
(469, 'Pedro Victor de Sena Ferreira', '3? C Programa??o de Jogos Digitais\r'),
(470, 'Rafael Vieira do Nascimento', '3? C Programa??o de Jogos Digitais\r'),
(471, 'Raynnara Mariane Diniz Lima', '3? C Programa??o de Jogos Digitais\r'),
(472, 'Yasmin Cardoso Soares', '3? C Programa??o de Jogos Digitais\r'),
(473, 'Adriano da Silva Medeiros', '3? A  Design de Cal?ados\r'),
(474, 'Alicia Camille Eul?lio de Castro', '3? A  Design de Cal?ados\r'),
(475, 'Anna Vit?ria Silva Nogueira', '3? A  Design de Cal?ados\r'),
(476, 'Antonio Cleston Figuereido Formiga', '3? A  Design de Cal?ados\r'),
(477, 'B?rbarah Barbosa Rodrigues', '3? A  Design de Cal?ados\r'),
(478, 'Beatriz Moitinho Barbosa', '3? A  Design de Cal?ados\r'),
(479, 'Bruna Bianca Ferreira de Sousa', '3? A  Design de Cal?ados\r'),
(480, 'Bruna Let?cia Mendon?a Leite', '3? A  Design de Cal?ados\r'),
(481, 'Camila Moura Pereira', '3? A  Design de Cal?ados\r'),
(482, 'Eloisa Beatriz Martins Rodrigues', '3? A  Design de Cal?ados\r'),
(483, 'Ester R?steny de Morais Oliveira', '3? A  Design de Cal?ados\r'),
(484, 'Evellyn Vitoria Ribeiro Pereira', '3? A  Design de Cal?ados\r'),
(485, 'Everton Ryckardo Oliveira Santos', '3? A  Design de Cal?ados\r'),
(486, 'Evyllin Kellen Rocha Alves', '3? A  Design de Cal?ados\r'),
(487, 'Gabriel Oliveira Marinho', '3? A  Design de Cal?ados\r'),
(488, 'Hazael Nascimento Sousa Louren?o', '3? A  Design de Cal?ados\r'),
(489, 'Hillen Silva Castro Barbosa', '3? A  Design de Cal?ados\r'),
(490, '?caro Agra de Melo Matias', '3? A  Design de Cal?ados\r'),
(491, 'Joel Ara?jo Ferreira', '3? A  Design de Cal?ados\r'),
(492, 'L?via  Maria Santana Rolim', '3? A  Design de Cal?ados\r'),
(493, 'Maria Eduarda Deodato de Brito', '3? A  Design de Cal?ados\r'),
(494, 'Maria Eduarda Guimar?es Barbosa', '3? A  Design de Cal?ados\r'),
(495, 'Maria Eduarda Menezes de Farias', '3? A  Design de Cal?ados\r'),
(496, 'Maria Lu?sa da Silva', '3? A  Design de Cal?ados\r'),
(497, 'Maria Lu?za Ramos Silva Barbosa', '3? A  Design de Cal?ados\r'),
(498, 'Rayla Magalh?es de Morais', '3? A  Design de Cal?ados\r'),
(499, 'Rayssa Vict?ria de Moura Santos', '3? A  Design de Cal?ados\r'),
(500, 'Rhyan henry Melo Costa ', '3? A  Design de Cal?ados\r'),
(501, 'Samuel Marques Nascimento', '3? A  Design de Cal?ados\r'),
(502, 'Sarah Silveira Santino do Nascimento', '3? A  Design de Cal?ados\r'),
(503, 'Silmara Bezerra Santos', '3? A  Design de Cal?ados\r'),
(504, 'Soiane Helen da Silva Ribeiro', '3? A  Design de Cal?ados\r'),
(505, 'Vit?ria Rodriques dos Santos', '3? A  Design de Cal?ados\r'),
(506, 'Wislany de Sousa Silva', '3? A  Design de Cal?ados\r'),
(507, 'Ana Beatriz Candido Costa ', '3? B Design de Cal?ados\r'),
(508, 'Camila Nascimento C?ndido', '3? B Design de Cal?ados\r'),
(509, 'Cauet Jos? Vieira Feij?', '3? B Design de Cal?ados\r'),
(510, 'Clara Beatriz Gon?alves Silva', '3? B Design de Cal?ados\r'),
(511, 'Daniel Farias Gon?alves', '3? B Design de Cal?ados\r'),
(512, 'Eufrasio Arruda Neto', '3? B Design de Cal?ados\r'),
(513, 'Giullia Palmeira de Souza Seabra', '3? B Design de Cal?ados\r'),
(514, 'Ism?nia Rebeca Pereira Barbosa', '3? B Design de Cal?ados\r'),
(515, 'Ivnny Maria de Oliveira Albuqueque', '3? B Design de Cal?ados\r'),
(516, 'Joshua Lucas Clementino Oliveira', '3? B Design de Cal?ados\r'),
(517, 'J?lia Laurian dos Santos Lima', '3? B Design de Cal?ados\r'),
(518, 'Kau? Iago Queiroz Oliveira', '3? B Design de Cal?ados\r'),
(519, 'Larissa Gon?alves Pereira', '3? B Design de Cal?ados\r'),
(520, 'Laura Oliveira Rodrigues', '3? B Design de Cal?ados\r'),
(521, 'Let?cia Isabely Cavalcanti dos Anjos', '3? B Design de Cal?ados\r'),
(522, 'L?via gon?alves Pereira', '3? B Design de Cal?ados\r'),
(523, 'L?via Pereira dos Santos', '3? B Design de Cal?ados\r'),
(524, 'Lorena Cavalcanti Candido', '3? B Design de Cal?ados\r'),
(525, 'Lyandra Sophya Gon?alves da Silva', '3? B Design de Cal?ados\r'),
(526, 'Maria Alice Alves Caitano', '3? B Design de Cal?ados\r'),
(527, 'Maria Clara  Nascimento Louren?o', '3? B Design de Cal?ados\r'),
(528, 'Maria Clara Machado Santos', '3? B Design de Cal?ados\r'),
(529, 'Maria Eduarda Vieira Ara?jo', '3? B Design de Cal?ados\r'),
(530, 'Maria Luiza Batista Nunes', '3? B Design de Cal?ados\r'),
(531, 'Maria Luiza Rufino Ferreira', '3? B Design de Cal?ados\r'),
(532, 'Nicolas Caio da Silva Santos', '3? B Design de Cal?ados\r'),
(533, 'P?mela Jeniffer de Oliveira Freitas', '3? B Design de Cal?ados\r'),
(534, 'Samuel Ramos Salustiano', '3? B Design de Cal?ados\r'),
(535, 'Sarah Fontes Lima', '3? B Design de Cal?ados\r'),
(536, 'Sarah Rivicka Martins Alexandrino', '3? B Design de Cal?ados\r'),
(537, 'Tain? Yasmin Silva Soares', '3? B Design de Cal?ados\r'),
(538, 'Th?ssya Thalya de Negreiros Gomes', '3? B Design de Cal?ados\r'),
(539, 'Victor Lucas Montini dos Santos Ribeiro', '3? B Design de Cal?ados\r'),
(540, 'Vin?cius Gabriel da Costa Agostinho', '3? B Design de Cal?ados\r'),
(541, 'Vitoria Schafer Araujo', '3? B Design de Cal?ados\r'),
(542, 'Weslley Iury Santos Gomes', '3? B Design de Cal?ados\r'),
(543, 'Yasmin Vit?ria Santos de Oliveira', '3? B Design de Cal?ados\r');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `lista_alunos_2024`
--
ALTER TABLE `lista_alunos_2024`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `lista_alunos_2024`
--
ALTER TABLE `lista_alunos_2024`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Banco de dados: `upload_de_arquivos`
--
CREATE DATABASE IF NOT EXISTS `upload_de_arquivos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `upload_de_arquivos`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `arquivos`
--

CREATE TABLE `arquivos` (
  `id_arquivo` int(11) NOT NULL,
  `nome_arquivo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `arquivos`
--
ALTER TABLE `arquivos`
  ADD PRIMARY KEY (`id_arquivo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arquivos`
--
ALTER TABLE `arquivos`
  MODIFY `id_arquivo` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
