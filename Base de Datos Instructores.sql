-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.19-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla dbinstructores.alumnos
CREATE TABLE IF NOT EXISTS `alumnos` (
  `alumnos_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `direccion_calle` varchar(255) DEFAULT NULL,
  `direccion_numero` varchar(255) DEFAULT NULL,
  `direccion_barrio` varchar(255) DEFAULT NULL,
  `direccion_localidad` varchar(255) DEFAULT NULL,
  `estado_eliminacion` tinyint(4) DEFAULT 0,
  `fecha_nacimiento` datetime DEFAULT NULL,
  PRIMARY KEY (`alumnos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbinstructores.alumnos: ~99 rows (aproximadamente)
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` (`alumnos_id`, `nombres`, `apellidos`, `dni`, `celular`, `mail`, `direccion_calle`, `direccion_numero`, `direccion_barrio`, `direccion_localidad`, `estado_eliminacion`, `fecha_nacimiento`) VALUES
	(2, 'Marcos', 'Perez', '30500500', '+543886004578', 'marcos@gmail.com', 'LAPRIDA', '555', 'MALVINAS', 'PALPALA', 0, NULL),
	(3, 'Lucia', 'Mallagray', '30500600', '+543886004574', 'lucy@gmail.com', 'EL SAUCHAL', '551', 'MALVINAS', 'PALPALA', 0, NULL),
	(21, 'Omar', 'Test', '30500600', '+543886004574', 'lucy@gmail.com', 'EL SAUCHAL', '551', 'MALVINAS', 'PALPALA', 0, NULL),
	(23, 'Oscar', 'Fernandez', '42459273', '+543888489449', 'fernando.gonzalez.261196@gmail.com', 'Paterson', '10', 'San Roque', 'San Pedro Jujuy', 0, NULL),
	(31, 'Sol', 'Burker', '4023494', '3888542342', 'sol@gmail.com', 'barbessini', '333', 'Horacio Guzman', 'San Pedro Jujuy', 0, NULL),
	(32, 'test', 'test', 'test', 'test', 'test', NULL, NULL, NULL, NULL, 0, NULL),
	(33, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 0, NULL),
	(36, 'ariana', 'sosa', '123123', '123213', '123213', NULL, NULL, NULL, NULL, 0, NULL),
	(42, 'edgardo', 'frias', '80808080', '123123123213ell', 'edgar@gmail', NULL, NULL, NULL, NULL, 0, NULL),
	(43, 'edgardo', 'frias', '80808080', '123123123213ell', 'edgar@gmail', 'pacara', '420', 'providencia', 'Jujuy', 0, NULL),
	(44, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'prueba', 0, NULL),
	(45, 'elias', 'elias', '333', '425555', 'elias@gmail.com', 'barbessini', '400', 'guzman', NULL, 0, NULL),
	(46, 'eli', 'eli', 'eli', '23123', 'eli@gmail.com', 'opulencia', '500', 'Horacio Guzman', NULL, 0, NULL),
	(48, 'ayala', 'ayala', '21312', '27/10/1997', 'a', 'a', 'a', 'a', 'a', 0, NULL),
	(50, '', '', '', '', '', '', '', '', '', 0, NULL),
	(51, '', '', '', '', '', '', '', '', '', 0, NULL),
	(52, '', '', '', '', '', '', '', '', '', 0, NULL),
	(53, '', '', '', '', '', '', '', '', '', 0, NULL),
	(54, '', '', '', '', '', '', '', '', '', 0, NULL),
	(55, '', '', '', '', '', '', '', '', '', 0, NULL),
	(56, '', '', '', '', '', '', '', '', '', 0, NULL),
	(57, '', '', '', '', '', '', '', '', '', 0, NULL),
	(59, 'mauro', 'mauro', 'mauro', NULL, 'mauro', 'mauroprogramador157@gmail.com', 'barbessini', '333', 'Guzman', 0, NULL),
	(60, 'mauro', 'mauro', 'mauro', NULL, 'mauro', 'mauroprogramador157@gmail.com', 'barbessini', '333', 'Guzman', 0, NULL),
	(61, 'a', 'a', 'a', NULL, 'a', 'a', 'a', 'a', 'a', 0, NULL),
	(62, '', '', '', NULL, '3888534063', '', '', '', '', 0, NULL),
	(63, '', '', '', NULL, '123123', '', '', '', '', 0, NULL),
	(64, 'Mauro', 'Ayarde', '', NULL, 'aaaaa', 'mauroprogramador157@gmail.com', '', '', '', 0, NULL),
	(65, 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 0, '0000-00-00 00:00:00'),
	(66, 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 0, '0000-00-00 00:00:00'),
	(67, 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 0, '0000-00-00 00:00:00'),
	(68, 'test', 'test', 'test', NULL, 'test', 'test', 'test', 'test', 'test', 0, '0000-00-00 00:00:00'),
	(69, 'sofia', 'elias', '1111', '1234', 'sofi@gmail.com', 'alberto', '888', 'perales', NULL, 0, NULL),
	(70, 'test', 'test', 'test', 'test', 'tes', 'test', 'tes123', 'test', NULL, 0, '0000-00-00 00:00:00'),
	(71, 'Mauro', 'Ayarde', '39198157', '3888525533', 'mauroprogramador157@gmail.com', 'barbessini', '333', 'Guzman', NULL, 0, '0000-00-00 00:00:00'),
	(72, '', '', '', '', '', '', '', '', NULL, 0, '2021-07-16 03:00:00'),
	(73, '', '', '', '', '', '', '', '', NULL, 0, '2021-07-22 03:00:00'),
	(74, '', '', '', '', '', '', '', '', NULL, 0, '0000-00-00 00:00:00'),
	(75, '', '', '', '', '', '', '', '', NULL, 0, '0000-00-00 00:00:00'),
	(76, 'Mauro', 'Ayarde', '39198157', '3888445566', 'mauroprogramador157@gmail.com', 'barbessini', '333', 'Guzman', NULL, 0, '1995-07-25 03:00:00'),
	(77, '', '', '', '', '', '', '', '', NULL, 0, '0000-00-00 00:00:00'),
	(80, '', '', '', '', '', '', '', '', NULL, 0, '0000-00-00 00:00:00'),
	(81, '', '', '', '', '', '', '', '', NULL, 0, '0000-00-00 00:00:00'),
	(82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
	(83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
	(84, '', '', '', '', '', '', '', '', '5', 0, '0000-00-00 00:00:00'),
	(85, '', '', '', '', '', '', '', '', 'Ledesma', 0, '0000-00-00 00:00:00'),
	(86, 'Sofia', 'Elias', '123917231', '123123123', 'sofi@gmail.com', 'parque providencia', '688', 'Providencia', 'San Pedro de Jujuy', 0, '2021-07-05 03:00:00'),
	(87, '', '', '', '', '', '', '', '', 'San salvador de Jujuy', 0, '0000-00-00 00:00:00'),
	(88, '8', '', '10', '', '', '', '999', '', 'San salvador de Jujuy', 0, '0000-00-00 00:00:00'),
	(89, '', '', '', '', '', '', '', '', 'Perico', 0, '0000-00-00 00:00:00'),
	(90, '', '', '', '', '', '', '', '', 'San salvador de Jujuy', 0, '0000-00-00 00:00:00'),
	(91, 'test', 'test', 'test', '3888542342', 'test@gmail.com', 'barbesini', '33', 'bernaqui', 'San Pedro de Jujuy', 0, '2021-07-10 03:00:00'),
	(92, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'Horacio Guzman', 'San Pedro de Jujuy', 0, '2021-07-19 03:00:00'),
	(93, 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'Perico', 0, '2021-07-08 03:00:00'),
	(94, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'Ledesma', 0, '2021-07-13 03:00:00'),
	(95, 'a', 'a', '10011', 'a', 'a', 'a', 'a', 'a', 'San Pedro de Jujuy', 0, '2021-07-19 03:00:00'),
	(96, 'a', 'a', '125', 'a', 'asdasd', 'a', 'a', 'a', 'San Pedro de Jujuy', 0, '2021-07-12 03:00:00'),
	(97, 'a', 'a', '333', 'a', 'a', 'a', 'a', 'a', 'San Pedro de Jujuy', 0, '2021-07-13 03:00:00'),
	(98, 'a', 'a', '555', 'a', 'a', 'a', 'a', 'a', 'Perico', 0, '2021-07-12 03:00:00'),
	(99, 'Elias', 'a', '22', 'asda', 'sadsad', 'asdasd', 'sad', '123123', 'San salvador de Jujuy', 0, '2021-07-12 03:00:00'),
	(100, 'a', 'a', '111', 'a', 'a', 'a', 'a', 'a', 'San Pedro de Jujuy', 0, '2021-07-12 03:00:00'),
	(101, 'a', 'a', '5', 'a', 'a', 'a', 'a', 'a', 'Perico', 0, '2021-07-11 03:00:00'),
	(102, 'Mauro', 'Ayarde', '888', '123123', 'joker@gmail.com', 'barbessini', '333', 'Horacio Guzman', 'San Pedro de Jujuy', 0, '2021-07-07 03:00:00'),
	(103, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
	(104, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
	(105, 'a', '3', 'test', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
	(106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
	(107, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'San Pedro de Jujuy', 0, '2021-07-12 03:00:00'),
	(108, 'a', 'a', '5', 'a', 'a', 'a', '77', '33', 'San Pedro de Jujuy', 0, '2021-07-13 03:00:00'),
	(109, 'a', 'a', '666', 'a', 'a', 'a', 'a', 'a', 'San Pedro de Jujuy', 0, '2021-07-20 03:00:00'),
	(110, 'a', 'a', '777', 'a', 'a', 'a', 'a', 'a', 'San Pedro de Jujuy', 0, '2021-07-12 03:00:00'),
	(111, 'a', 'a', '888', '24124', 'joker@gmail.com', 'asd', 'sad', '213123', 'San Pedro de Jujuy', 0, '2021-07-13 03:00:00'),
	(112, 'a', 'a', '12831823', 'asd', 'asda', 'asdas', 'asd', 'asd', 'San Pedro de Jujuy', 0, '2021-07-12 03:00:00'),
	(113, 'a', 'a', '999', 'a', 'a', '888', '23123', 'a', 'San Pedro de Jujuy', 0, '2021-07-11 03:00:00'),
	(114, 'a', 'a', '888', 'a', 'asdas', 'aa', '23', 'aa', 'San Pedro de Jujuy', 0, '2021-07-12 03:00:00'),
	(115, 'a', 'a', '21387213y', 'a', 'asdasd', 'a', '2132', 'a', 'San Pedro de Jujuy', 0, '2021-07-13 03:00:00'),
	(116, 'a', 'a', '6656', 'a', 'asdsad', 'asd', 'asd', 'asd', 'San Pedro de Jujuy', 0, '2021-07-05 03:00:00'),
	(117, 'a', 'a', '213123', 'asdasd', 'asdas', 'asdasd', '123123', 'asdasd', 'San Pedro de Jujuy', 0, '2021-07-06 03:00:00'),
	(118, 'a', 'a', '123123', '123123', 'asdasd', 'asdsd', '123123', 'asdasd', 'San Pedro de Jujuy', 0, '2021-07-11 03:00:00'),
	(119, 'a', 'a', '123123123123', '812838', '123213', 'asdd', '123123123', 'asdsa', 'San Pedro de Jujuy', 0, '2021-07-12 03:00:00'),
	(120, 'Sofia', 'elias', '99482374', '12312323', 'joker@gmail.com', 'barbessini', '333', 'bernachi', 'San Pedro de Jujuy', 0, '2021-07-13 03:00:00'),
	(122, 'mauro', 'ayarde', '1239190382', '21321', 'mauroprogramador157@gmail.com', 'asdasd', '333', 'barbessini', 'Perico', 0, '2021-07-13 03:00:00'),
	(123, 'asdasd', 'asdasdasd', '1287371232163', '123123', 'sadasd', '123213', '123213', 'asdasd', 'Palpala', 0, '2021-07-05 03:00:00'),
	(124, 'asdasd', 'asdasd', '23333232', '213213', 'joker@gmail.com', 'asdsdasd', '123213', 'asdsad', 'San Pedro de Jujuy', 0, '2021-07-12 03:00:00'),
	(125, 'asdasd', 'asdsad', '21321323213', '213123', 'joker@gmail.com', 'asdasd', 'asdasd', 'asdasdasd', 'San Pedro de Jujuy', 0, '2021-07-13 03:00:00'),
	(126, 'asdb', 'dsabkda', '237772362', 'as123', 'asdasd', 'asdasd', 'asdasd', 'Horacio Guzman', 'Palpala', 0, '2021-07-13 03:00:00'),
	(127, 'asdasd', 'asdasd', '12312366352', '12312', 'joker@gmail.com', 'asdasd', '123125', 'asdasd', 'San Pedro de Jujuy', 0, '2021-07-12 03:00:00'),
	(128, 'asjdnhasjd', 'asdnjasdn', '1232663522', '123123', 'mauroprogramador157@gmail.com', 'swdasd', '123123', 'asdasd', 'Perico', 0, '2021-07-13 03:00:00'),
	(129, 'sadkjasdbasdb', 'baskdbasbjd', '2131231272662', '123123', 'joker@gmail.com', 'asdsad', '123123', 'asdasd', 'San Pedro de Jujuy', 0, '2021-07-07 03:00:00'),
	(130, 'Mauro', 'Ayarde', '39198157', '3888542342', 'mauroprogramador157@gmail.com', 'barbessini', '333', 'Horacio Guzman', 'San Pedro de Jujuy', 0, '2021-07-07 03:00:00'),
	(131, 'a', 'a', 'a', '12371238', 'a', 'a', 'a', 'a', 'Palpala', 0, '2020-02-04 03:00:00'),
	(132, 'Jorge Luis', 'Lewin', '875623623', '3888746236', 'joker@gmail.com', 'rinconada', '780', 'provincia', 'Perico', 0, '1995-07-10 03:00:00');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;

-- Volcando estructura para tabla dbinstructores.asistencias
CREATE TABLE IF NOT EXISTS `asistencias` (
  `id_asistencias` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha_alta` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `identificador` varchar(50) DEFAULT NULL,
  `id_inscripciones` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_asistencias`),
  KEY `FK_asistencias_inscripciones_id_inscripciones` (`id_inscripciones`),
  CONSTRAINT `FK_asistencias_inscripciones_id_inscripciones` FOREIGN KEY (`id_inscripciones`) REFERENCES `inscripciones` (`id_inscripciones`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbinstructores.asistencias: ~41 rows (aproximadamente)
/*!40000 ALTER TABLE `asistencias` DISABLE KEYS */;
INSERT INTO `asistencias` (`id_asistencias`, `fecha_alta`, `identificador`, `id_inscripciones`) VALUES
	(1, '2021-05-02 18:32:38', '1', NULL),
	(2, '2021-05-02 18:40:41', '2', NULL),
	(3, '2021-05-02 18:46:45', '2', NULL),
	(4, '2021-05-02 19:17:59', 'caja3', NULL),
	(5, '2021-05-02 19:18:04', 'caja3', NULL),
	(6, '2021-05-02 19:18:14', 'caja3', NULL),
	(7, '2021-05-02 19:18:20', 'caja3', NULL),
	(8, '2021-05-02 19:18:25', 'caja3', NULL),
	(9, '2021-05-02 19:18:34', 'caja3', NULL),
	(10, '2021-05-02 19:18:44', 'caja3', NULL),
	(11, '2021-05-02 19:18:54', 'caja3', NULL),
	(12, '2021-05-02 19:19:04', 'caja3', NULL),
	(13, '2021-05-02 19:19:14', 'caja3', NULL),
	(14, '2021-05-02 19:19:19', 'caja3', NULL),
	(15, '2021-05-02 19:19:25', 'caja3', NULL),
	(16, '2021-05-02 19:19:30', 'caja3', NULL),
	(17, '2021-05-02 19:19:36', 'caja3', NULL),
	(18, '2021-05-02 19:19:41', 'caja3', NULL),
	(19, '2021-05-02 19:19:47', 'caja3', NULL),
	(20, '2021-05-02 19:19:52', 'caja3', NULL),
	(21, '2021-05-02 19:19:57', 'caja3', NULL),
	(22, '2021-05-02 19:20:02', 'caja3', NULL),
	(23, '2021-05-02 19:20:07', 'caja3', NULL),
	(24, '2021-05-02 19:20:12', 'caja3', NULL),
	(25, '2021-05-02 19:20:18', 'caja3', NULL),
	(26, '2021-05-02 19:20:23', 'caja3', NULL),
	(27, '2021-05-02 19:20:29', 'caja3', NULL),
	(28, '2021-05-02 19:20:34', 'caja3', NULL),
	(29, '2021-05-02 19:20:39', 'caja3', NULL),
	(30, '2021-05-02 19:20:44', 'caja3', NULL),
	(31, '2021-05-02 19:20:50', 'caja3', NULL),
	(32, '2021-05-02 19:35:22', 'caja3', NULL),
	(33, '2021-05-02 19:35:27', 'caja3', NULL),
	(34, '2021-05-02 19:35:37', 'caja3', NULL),
	(35, '2021-05-02 19:36:11', 'caja3', NULL),
	(36, '2021-05-02 19:36:36', 'caja3', NULL),
	(37, '2021-05-02 19:36:52', 'caja3', NULL),
	(38, '2021-05-02 19:37:07', 'caja3', NULL),
	(39, '2021-05-02 19:37:18', 'caja3', NULL),
	(40, '2021-05-02 19:37:36', 'caja3', NULL),
	(41, '2021-05-02 19:38:00', 'caja3', NULL);
/*!40000 ALTER TABLE `asistencias` ENABLE KEYS */;

-- Volcando estructura para tabla dbinstructores.comisiones
CREATE TABLE IF NOT EXISTS `comisiones` (
  `id_comisiones` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `horario_dias` varchar(255) DEFAULT NULL,
  `id_cursos` bigint(20) DEFAULT NULL,
  `cupo` int(11) DEFAULT 100,
  PRIMARY KEY (`id_comisiones`),
  KEY `FK_comisiones_cursos_id_cursos` (`id_cursos`),
  CONSTRAINT `FK_comisiones_cursos_id_cursos` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbinstructores.comisiones: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `comisiones` DISABLE KEYS */;
INSERT INTO `comisiones` (`id_comisiones`, `nombre`, `descripcion`, `horario_dias`, `id_cursos`, `cupo`) VALUES
	(1, 'Grupo A', 'test', '12pm a 3pm', 1, 100),
	(2, 'Grupo B', 'test', '4pm a 5pm', 1, 50),
	(3, 'Grupo a', 'test', '8 am a 10am', 5, 50),
	(4, 'Grupo b', 'test', '10am a 11am', 5, 100),
	(5, 'GrupoD', 'prueba', '7pm a 9pm', 1, 50),
	(6, 'GrupoD', 'prueba', '2pm a 3pm', 4, 50),
	(7, 'GrupoD', 'prueba', '4pm a 7pm', 4, 50),
	(8, 'GrupoD', 'prueba', '11pm a 11:30pm', 5, 50),
	(9, 'Grupo A', 'Turno mañana', '8:00 a 9:00', 6, 30),
	(10, 'Grupo A', 'Turno mañana', '9:00am a 10:00am', 6, 30),
	(11, 'Grupo A', 'Turno Tarde', '9:00pm a 10:00pm', 12, 20),
	(12, 'Grupo B', 'Turno Tarde', '10:00pm a 11:00pm', 12, 20),
	(13, 'Grupo C', 'Turno Tarde', '11:00pm a 00:00am', 12, 20),
	(14, 'Grupo A', 'Turno Tarde', '3:00pm a 4:00pm', 9, 100),
	(15, 'Grupo A', 'Turno Tarde', '6:00pm a 7:00pm', 9, 100),
	(16, 'Grupo B', 'Turno Tarde', '7:00pm a 9:00pm', 9, 100);
/*!40000 ALTER TABLE `comisiones` ENABLE KEYS */;

-- Volcando estructura para tabla dbinstructores.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `id_cursos` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `publico_destinado` varchar(255) DEFAULT NULL,
  `requisitos` varchar(255) DEFAULT NULL,
  `url_imagen_presentacion` varchar(255) DEFAULT NULL,
  `url_video_presentacion` varchar(255) DEFAULT NULL,
  `precio_inscripcion` decimal(10,2) DEFAULT NULL,
  `precio_cuota` decimal(10,2) DEFAULT NULL,
  `cantidad_cuotas` tinyint(4) DEFAULT NULL,
  `id_subrubros` int(11) NOT NULL,
  `id_instructores` int(11) DEFAULT NULL,
  `estado_eliminacion` tinyint(4) DEFAULT 1,
  `estado_publicacion` tinyint(4) DEFAULT 1,
  `habilita_inscripcion` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id_cursos`),
  KEY `FK_cursos_id_subrubros` (`id_subrubros`),
  KEY `fk_cursos_instructores` (`id_instructores`),
  CONSTRAINT `FK_cursos_id_subrubros` FOREIGN KEY (`id_subrubros`) REFERENCES `subrubros` (`id_subrubros`) ON DELETE NO ACTION,
  CONSTRAINT `fk_cursos_instructores` FOREIGN KEY (`id_instructores`) REFERENCES `instructores` (`id_instructores`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbinstructores.cursos: ~27 rows (aproximadamente)
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` (`id_cursos`, `nombre`, `descripcion`, `publico_destinado`, `requisitos`, `url_imagen_presentacion`, `url_video_presentacion`, `precio_inscripcion`, `precio_cuota`, `cantidad_cuotas`, `id_subrubros`, `id_instructores`, `estado_eliminacion`, `estado_publicacion`, `habilita_inscripcion`) VALUES
	(1, 'FUTBOL INFANTIL', 'Curso para comenzar a conocer la cancha y las reglas del futbol. Para niños que quieren correr, jugar y aprender el valor de la compentencia en equipo', 'Infantil', 'Tener de 4 a 6 años', 'https://media.istockphoto.com/photos/young-football-players-kicking-ball-on-soccer-field-soccer-horizontal-picture-id1148035886?k=6&m=1148035886&s=612x612&w=0&h=50RqdXOFTcxeWnZoonbry9Qnst8omLy4MKxxQ_6MHVQ=', NULL, 1000.00, 500.00, 6, 1, 1, 1, 1, 1),
	(4, 'ENTRENAMIENTO FUNCIONAL KIDS', 'Comenzar a entrenar con los niños, posicion, postura, calentamiento, rutinas de ejercios y competencias', 'Infantil', 'Tener de 8 a 12 años', 'https://www.befitirun.com/wp-content/uploads/2018/07/befit_gimnasio_entrenamiento_funcional_nin%CC%83os_adultos_irun_gipuzkoa006.jpg', '', 3000.00, 600.00, 10, 5, 2, 1, 1, 1),
	(5, 'Basquet', 'Entranamiento de Basquet de competencia', 'Adolescentes de 12 a 18 años', 'Contar con electrocardiograma', 'https://i.ytimg.com/vi/EI7av_UR1Co/maxresdefault.jpg', '', 1000.00, 800.00, 6, 2, 2, 1, 1, 1),
	(6, 'Rehabilitacion para adultos mayores', 'Entrenamiento para rehabilitación', 'Adultos mayores de 60', 'Contar con electrocardiograma', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKDTmLOni3asWX3GuSyDvJFR8Hn2pwzY9sPA&usqp=CAU', '', 1000.00, 800.00, 6, 3, 1, 1, 1, 1),
	(9, 'Hockey Nivel Senior', 'Entranamiento de Hockey de competencia', 'Adultos de 20 a 35 años', 'Contar con palo de hockey', NULL, 'editar', 2000.00, 900.00, 10, 4, 3, 1, 1, 1),
	(12, 'Natacion para competicion', 'Entrenamieno, preparacion para competir en natacion', 'Jovenes de 18 a 25 años', 'Traje de baño, tener nivel promedio de natacion', 'https://unycos.com/blog/wp-content/uploads/2018/08/nadadores-competencia-lanzandose.jpg', '', 2500.00, 1100.00, 9, 3, 1, 1, 1, 1),
	(13, 'Hockey Nivel Senior', 'Entranamiento de Hockey de competencia', 'Adultos de 20 a 35 años', 'Contar con palo de hockey', 'https://dummyimage.com/600x400/000/ffd900.jpg&text=imagen', 'https://dummyimage.com/600x400/000/ffd900.jpg&text=video', 2000.00, 900.00, 10, 1, 2, 1, 1, 1),
	(14, 'Futbol Infantil', 'Futbol de verano para niños', 'Niños de 8 a 12 años', 'DNI e Inscripcion hasta el 10 de Mayo', 'https://dummyimage.com/600x400/000/ffd900.jpg&text=imagen', 'https://dummyimage.com/600x400/000/ffd900.jpg&text=imagen', 1000.00, 1000.00, 4, 1, NULL, 1, 1, 1),
	(19, 'Basquet junior', 'Principios básicos del basquet como así también su reglamento', 'Público en general', 'Balón de basquet', 'https://dummyimage.com/600x400/3610cc/fff', 'https://dummyimage.com/600x400/3610cc/fff', 1000.00, 500.00, 3, 2, NULL, 1, 1, 1),
	(31, 'Basquet para Adolescentes', 'Entranamiento de Basquet de competencia', 'Adolescentes de 12 a 18 años', 'Contar con electrocardiograma', '', '', 1000.00, 800.00, 6, 2, NULL, 1, 1, 1),
	(32, 'Prueba curso 2', 'Descripcion 2', 'Publico gral', 'Todos', 'Url...', 'Url...', 200.00, 400.00, 9, 4, NULL, 1, 1, 1),
	(33, 'cardiosaddddddddddddddddddddddddddddddddddddddd', 'para realizarentrenamiento ....', 'todos', 'electrocardiograma', NULL, '', 0.00, 0.00, 0, 5, 3, 1, 1, 1),
	(34, 'Hockey intermedio', 'Para avanzar', 'Gral', 'Palo', '...', '...', 600.00, 800.00, 10, 4, NULL, 1, 1, 1),
	(35, 'Prueba curso 3', 'Descripcion 3', 'Todos', 'Cualquiera', 'http://example.com', 'http://example.com', 400.00, 200.00, 18, 3, NULL, 1, 1, 1),
	(37, 'Curso de Prueba Numero 3', 'Descripcion del curso 3', 'Jóvenes entre 18 a 30', 'ninguno', 'https://img/presentacion', 'https://video/presentacion', 500.00, 150.00, 12, 3, NULL, 1, 1, 1),
	(41, 'ella', '', '', '', NULL, 'absdkbkasbd', 0.00, 0.00, 0, 1, NULL, 1, 1, 1),
	(69, 'a', 'a', 'a', 'a', NULL, 'a', 5000.00, 2000.00, 5, 2, NULL, 1, 1, 1),
	(70, 'a', 'a', 'a', 'a', 'https://i.ibb.co/xLLNSwq/1911b6003820.png', 'a', 1.00, 1.00, 2, 2, NULL, 1, 1, 1),
	(71, '', '', '', '', NULL, '', 0.00, 0.00, 0, 1, NULL, 1, 1, 1),
	(72, 'Basquet', 'basquet niños', 'de 12 a 18 años', 'electrocardiograma', 'https://i.ibb.co/DD99c7v/bffff8dd896d.png', 'htpps:///', 5000.00, 2000.00, 5, 2, NULL, 1, 1, 1),
	(73, 'a', 'a', 'a', 'a', 'https://i.ibb.co/DD99c7v/bffff8dd896d.png', 'asdasd', 123123.00, 2341.00, 127, 2, NULL, 1, 1, 1),
	(74, 'a', 'a', 'a', 'a', NULL, 'a', 234.00, 234.00, 127, 2, NULL, 1, 1, 1),
	(75, 'a', 'sadasd', 'sadasd', 'asdasd', NULL, 'sadasdasd', 1.00, 1.00, 1, 1, NULL, 1, 1, 1),
	(76, 'a', 'a', 'a', 'a', NULL, 'a', 0.00, 0.00, 0, 2, NULL, 1, 1, 1),
	(98, 'a', 'A', 'A', 'A', 'https://i.ibb.co/vP3bKkj/7bfed7212415.png', 'A', 0.00, 0.00, 0, 2, NULL, 1, 1, 1),
	(99, 'Mauro', 'mauro', 'mauro', 'mauro', 'https://i.ibb.co/vP3bKkj/7bfed7212415.png', 'mauro', 5000.00, 2000.00, 2, 2, NULL, 1, 1, 1),
	(100, 'asda', 'askdbhkahsd', 'ashdkhasd', 'sadjhkashd', NULL, 'sjkahdsabd', 213.00, 213.00, 123, 2, NULL, 1, 1, 1),
	(101, 'asd', 'asda', 'asd', 'asd', 'https://i.ibb.co/xmN5NcW/3cf4c07f8d1c.png', 'asd', 2000.00, 2.00, 20, 1, NULL, 1, 1, 1),
	(111, 'De todo un poco', 'de todo un poco', 'de tocoasdasd', 'asdasd', 'https://i.ibb.co/FnB4Dhz/55f3e0e097ca.png', 'sadsada', 12.00, 12.00, 99, 4, NULL, 1, 1, 1),
	(112, 'Futbol Amateur', 'solo para adultos', 'todos', 'ganas', 'https://i.ibb.co/rcPgjXS/168c918be503.jpg', 'https://asdajsbda', 2000.00, 1000.00, 2, 1, NULL, 1, 1, 1),
	(114, 'test', 'test', 'todos', 'electro cardigrama', 'https://i.ibb.co/YZZ6xfm/2f1f75648e96.png', 'asjkdbasbd', 5000.00, 2500.00, 2, 2, NULL, 1, 1, 1),
	(117, 'Natacion', 'para todos', 'para mayores de 12 años en adelante', 'electrocardiograma', 'https://i.ibb.co/XLfY37D/d7c4b13b0430.jpg', 'https://yotube.com', 5000.00, 1000.00, 5, 3, NULL, 1, 1, 1);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;

-- Volcando estructura para tabla dbinstructores.inscripciones
CREATE TABLE IF NOT EXISTS `inscripciones` (
  `id_inscripciones` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT current_timestamp(),
  `id_comisiones` bigint(20) DEFAULT NULL,
  `id_alumnos` bigint(20) DEFAULT NULL,
  `estado_pago` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id_inscripciones`),
  KEY `FK_inscripciones_alumnos_alumnos_id` (`id_alumnos`),
  KEY `FK_inscripciones_comisiones_id_comisiones` (`id_comisiones`),
  CONSTRAINT `FK_inscripciones_alumnos_alumnos_id` FOREIGN KEY (`id_alumnos`) REFERENCES `alumnos` (`alumnos_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_inscripciones_comisiones_id_comisiones` FOREIGN KEY (`id_comisiones`) REFERENCES `comisiones` (`id_comisiones`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbinstructores.inscripciones: ~45 rows (aproximadamente)
/*!40000 ALTER TABLE `inscripciones` DISABLE KEYS */;
INSERT INTO `inscripciones` (`id_inscripciones`, `fecha`, `id_comisiones`, `id_alumnos`, `estado_pago`) VALUES
	(1, '0000-00-00 00:00:00', 1, 2, 0),
	(2, '0000-00-00 00:00:00', 4, 3, 1),
	(4, '2021-07-16 01:29:23', NULL, NULL, 0),
	(5, '2021-07-16 01:30:08', NULL, NULL, 0),
	(6, '2021-07-16 05:51:34', NULL, NULL, 0),
	(7, '2021-07-16 05:56:03', NULL, NULL, 0),
	(8, '2021-07-16 05:58:59', NULL, NULL, 0),
	(9, '2021-07-16 06:19:25', NULL, NULL, 0),
	(10, '2021-07-16 06:22:31', NULL, NULL, 0),
	(11, '2021-07-16 06:25:19', 2, 3, 1),
	(12, '2021-07-16 06:27:52', 2, 3, 1),
	(13, '2021-07-16 06:34:14', 1, 99, 1),
	(16, '2021-07-16 06:41:28', 1, 88, 1),
	(17, '2021-07-16 06:42:35', NULL, NULL, 0),
	(18, '2021-07-16 06:46:56', NULL, NULL, 0),
	(20, '2021-07-16 06:50:33', 1, 77, 1),
	(21, '2021-07-16 06:52:43', NULL, NULL, 0),
	(22, '2021-07-16 07:09:35', NULL, NULL, 0),
	(23, '2021-07-16 07:16:18', NULL, NULL, 0),
	(24, '2021-07-16 07:25:41', NULL, NULL, 0),
	(25, '2021-07-16 07:35:29', NULL, NULL, 0),
	(26, '2021-07-16 07:37:34', 1, 77, 1),
	(27, '2021-07-16 07:40:46', 1, 77, 1),
	(28, '2021-07-16 07:42:20', NULL, NULL, 0),
	(29, '2021-07-16 07:43:04', NULL, NULL, 0),
	(30, '2021-07-16 07:43:06', NULL, NULL, 0),
	(31, '2021-07-16 07:43:23', NULL, NULL, 0),
	(32, '2021-07-16 07:43:46', 1, 77, 1),
	(33, '2021-07-16 07:44:01', 1, 77, 1),
	(34, '2021-07-16 07:44:22', 1, 77, 1),
	(35, '2021-07-16 07:48:35', NULL, NULL, 0),
	(36, '2021-07-16 08:52:33', NULL, NULL, 0),
	(37, '2021-07-16 08:58:53', NULL, NULL, 0),
	(38, '2021-07-16 09:06:32', 1, 77, 1),
	(39, '2021-07-16 09:15:41', NULL, NULL, 0),
	(40, '2021-07-16 11:37:44', NULL, NULL, 0),
	(41, '2021-07-16 13:06:03', NULL, 122, 0),
	(42, '2021-07-16 13:15:40', NULL, 123, 0),
	(43, '2021-07-16 13:20:11', NULL, 124, 0),
	(44, '2021-07-16 13:23:14', NULL, 125, 0),
	(45, '2021-07-16 13:26:28', NULL, 126, 0),
	(46, '2021-07-16 13:27:50', NULL, 127, 0),
	(47, '2021-07-16 13:29:27', NULL, 128, 0),
	(48, '2021-07-16 13:31:00', 1, 129, 1),
	(49, '2021-07-16 17:38:26', 5, 71, 1),
	(50, '2021-07-22 17:37:13', 2, 61, 0),
	(51, '2021-07-22 17:43:41', 2, 61, 0),
	(52, '2021-07-22 18:00:54', 2, 132, 0);
/*!40000 ALTER TABLE `inscripciones` ENABLE KEYS */;

-- Volcando estructura para tabla dbinstructores.instructores
CREATE TABLE IF NOT EXISTS `instructores` (
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `foto_perfil` varchar(255) NOT NULL,
  `cv_corto` varchar(1000) NOT NULL,
  `mp_public_key` varchar(255) NOT NULL,
  `mp_access_token` varchar(255) NOT NULL,
  `id_instructores` int(11) NOT NULL AUTO_INCREMENT,
  `estado_eliminacion` tinyint(4) DEFAULT 1,
  `id_usuarios` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_instructores`),
  KEY `FK_instructores_usuarios_id_usuarios` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbinstructores.instructores: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `instructores` DISABLE KEYS */;
INSERT INTO `instructores` (`nombres`, `apellidos`, `dni`, `titulo`, `celular`, `foto_perfil`, `cv_corto`, `mp_public_key`, `mp_access_token`, `id_instructores`, `estado_eliminacion`, `id_usuarios`, `email`) VALUES
	('mauro', 'ayarde', '39198157', 'test', '422130', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRmFoY-CfAaLFjHkJYTetM6Gtik-HWT2ZVIA&usqp=CAU', 'test', 'test', 'test', 1, 0, 1, 'mauroprogramador157@gmail.com'),
	('julieta', 'thomas', 'test', 'test', 'test', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUl-cwN5P4G7WgjMC7RUL0Z8Ofq8RewlSWAg&usqp=CAU', 'test', 'test', 'test', 2, 1, 2, 'mauroprogramador157@gmail.com'),
	('eliana', 'tejada', '39111111', 'test', 'test', 'https://fotografias.antena3.com/clipping/cmsimages01/2021/05/02/26E03450-C5FB-4D16-BC9B-B282AE784352/57.jpg', 'test', 'test', 'test', 3, 0, 1, 'eli@gmail.com');
/*!40000 ALTER TABLE `instructores` ENABLE KEYS */;

-- Volcando estructura para tabla dbinstructores.rubros
CREATE TABLE IF NOT EXISTS `rubros` (
  `id_rubros` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_rubros`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbinstructores.rubros: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `rubros` DISABLE KEYS */;
INSERT INTO `rubros` (`id_rubros`, `nombre`) VALUES
	(1, 'IDIOMAS'),
	(2, 'DEPORTES');
/*!40000 ALTER TABLE `rubros` ENABLE KEYS */;

-- Volcando estructura para tabla dbinstructores.subrubros
CREATE TABLE IF NOT EXISTS `subrubros` (
  `id_subrubros` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `id_rubros` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_subrubros`),
  KEY `FK_subrubros_id_rubros` (`id_rubros`),
  CONSTRAINT `FK_subrubros_id_rubros` FOREIGN KEY (`id_rubros`) REFERENCES `rubros` (`id_rubros`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbinstructores.subrubros: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `subrubros` DISABLE KEYS */;
INSERT INTO `subrubros` (`id_subrubros`, `nombre`, `id_rubros`) VALUES
	(1, 'FUTBOL', 2),
	(2, 'BASQUET', 2),
	(3, 'NATACION', 2),
	(4, 'HOCKEY', 2),
	(5, 'RUNNING', 2);
/*!40000 ALTER TABLE `subrubros` ENABLE KEYS */;

-- Volcando estructura para tabla dbinstructores.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuarios` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbinstructores.usuarios: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id_usuarios`, `usuario`, `password`, `activo`) VALUES
	(1, 'jormendoza@gmail.com', '1234', 1),
	(2, 'ramon@gmail.com', '1234', 1),
	(3, 'joker@gmail.com', '1234', 1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
