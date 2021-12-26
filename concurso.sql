-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-12-2021 a las 20:53:35
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `concurso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(20) NOT NULL,
  `nivel_categoria` int(20) NOT NULL,
  `grado_dificultad` varchar(20) NOT NULL,
  `id_ronda` int(20) NOT NULL,
  `tipo categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nivel_categoria`, `grado_dificultad`, `id_ronda`, `tipo categoria`) VALUES
(11, 1, 'bajo', 1, 'deportes'),
(22, 2, 'medio', 2, 'geografia'),
(333, 3, 'intermedio', 3, 'sociales'),
(444, 4, 'alto', 4, 'quimica'),
(555, 5, 'superior', 5, 'matematicas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE `juego` (
  `ïd_partida` int(100) NOT NULL,
  `id_jugador` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `juego`
--

INSERT INTO `juego` (`ïd_partida`, `id_jugador`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `id_jugador` int(100) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellido` varchar(15) NOT NULL,
  `edad` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`id_jugador`, `nombre`, `apellido`, `edad`) VALUES
(1, 'JUAN', 'PEREZ', 25),
(2, 'OSCAR', 'RIOS', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id_pregunta` int(10) NOT NULL,
  `enunciado` varchar(100) NOT NULL,
  `id_partida` int(20) NOT NULL,
  `id_categoria` int(20) NOT NULL,
  `id_ronda` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id_pregunta`, `enunciado`, `id_partida`, `id_categoria`, `id_ronda`) VALUES
(1, '¿que equipo gano la champions league 2015-2016?', 1, 11, 1),
(2, '¿Çuantas champions league ha ganado Barcelona FC?', 2, 11, 1),
(3, '¿que equipo gano la europa league 2019-2020?', 1, 11, 1),
(4, '¿que fue el goleador del mundial brasil 2014?', 1, 11, 1),
(5, '¿Quien es el maximo goleador de los mundiales?', 2, 11, 1),
(11, '¿en que pais se habla neerlandes?', 1, 22, 2),
(12, '¿cual es la capital de uruguay?', 1, 22, 2),
(13, '¿en que pais se puede visitar machu picchu?', 1, 22, 2),
(14, '¿cual es la capital de estados unidos?', 1, 22, 2),
(15, '¿cual es la montaña mas grande el mundo?', 1, 22, 2),
(21, '¿Quien fue el presidente de colombia en el periodo 2014-2018?', 1, 333, 3),
(22, '¿que significa la sigla ONU?', 1, 333, 3),
(23, '¿Colombia esta constituida por cuantos departmanentos?', 1, 333, 3),
(24, '¿Cuantas regiones naturales tiene Colombia?', 1, 333, 3),
(25, '¿cuales son los 2 grandes oceanos que limitan con colombia?', 1, 333, 3),
(31, '¿Cual es el elemento quimico con menor peso atomico?', 1, 444, 4),
(32, '¿Que elemento tiene como simbolo quimico N?', 1, 444, 4),
(33, '¿Cuales son los 3 principales estados de la materia?', 1, 444, 4),
(34, '¿Cual es el simbolo atomico del MERCURIO?', 1, 444, 4),
(35, '¿Cual es el simbolo quimico de la PLATA?', 1, 444, 4),
(41, '¿Como se llama el poligono de 7 lados?', 1, 555, 5),
(42, '¿A cuanto equivale un lustro?', 1, 555, 5),
(43, '¿Como se llama el poligono que tiene tanto sus lados como sus angulos iguales?', 1, 555, 5),
(44, '¿En numeros romanos que significa LXVI?', 1, 555, 5),
(45, '¿El endecagono es un poligono de cuantos lados?', 1, 555, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `premio`
--

CREATE TABLE `premio` (
  `id_acumulado` int(20) NOT NULL,
  `id_ronda` int(20) NOT NULL,
  `saldo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `premio`
--

INSERT INTO `premio` (`id_acumulado`, `id_ronda`, `saldo`) VALUES
(10, 2, 200000),
(11, 3, 600000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id_respuesta` int(10) NOT NULL,
  `respuesta` varchar(20) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `id_pregunta` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id_respuesta`, `respuesta`, `estado`, `id_pregunta`) VALUES
(1, 'real madrid', 'c', 1),
(2, 'bayer munchen', 'f', 1),
(3, 'liverpool', 'f', 1),
(4, 'chelsea', 'f', 1),
(5, '4', 'f', 2),
(6, '6', 'f', 2),
(7, '5', 'c', 2),
(8, '7', 'f', 2),
(9, 'villareal', 'f', 3),
(10, 'manchester united', 'f', 3),
(11, 'ajax', 'f', 3),
(12, 'sevilla', 'c', 3),
(13, 'leonel messi', 'f', 4),
(14, 'luis suarez', 'f', 4),
(15, 'james rodriguez', 'c', 4),
(16, 'neymar', 'f', 4),
(17, 'ronaldo', 'f', 5),
(18, 'miroslav klose', 'c', 5),
(19, 'pele', 'f', 5),
(20, 'maradona', 'f', 5),
(21, 'holanda', 'c', 11),
(22, 'ucrania', 'f', 11),
(23, 'polonia', 'f', 11),
(24, 'luxemburgo', 'f', 11),
(25, 'asuncion', 'f', 12),
(26, 'montevideo', 'c', 12),
(27, 'paraguay', 'f', 12),
(28, 'buenos aires', 'f', 12),
(29, 'peru', 'c', 13),
(30, 'mexico', 'f', 13),
(31, 'canada', 'f', 13),
(32, 'venezuela', 'f', 13),
(33, 'canada', 'f', 14),
(34, 'miami', 'f', 14),
(35, 'nueva york', 'f', 14),
(36, 'washington DC', 'c', 14),
(37, 'makalu', 'f', 15),
(38, 'k2', 'f', 15),
(39, 'everest', 'c', 15),
(40, 'manaslu', 'f', 15),
(41, 'alvaro uribe', 'f', 21),
(42, 'ivan duque', 'f', 21),
(43, 'juan manuel santos', 'c', 21),
(44, 'andres pastrana', 'f', 21),
(45, 'organicacion de naci', 'c', 22),
(46, 'organizacion unida', 'f', 22),
(47, 'organizacion unida d', 'f', 22),
(48, 'union de naciones or', 'f', 22),
(49, '30', 'f', 23),
(50, '33', 'f', 23),
(51, '32', 'c', 23),
(52, '31', 'f', 23),
(53, '6', 'c', 24),
(54, '5', 'f', 24),
(55, '7', 'f', 24),
(56, '4', 'f', 24),
(57, 'artico y pacifico', 'f', 25),
(58, 'atlantico y indico', 'f', 25),
(59, 'indico y pacifico', 'f', 25),
(60, 'pacifico y atlantico', 'c', 25),
(61, 'nitrogeno', 'f', 31),
(62, 'hidrogeno', 'c', 31),
(63, 'oxigeno', 'f', 31),
(64, 'calcio', 'f', 31),
(65, 'niquel', 'f', 32),
(66, 'nobelio', 'f', 32),
(67, 'nitrogeno', 'c', 32),
(68, 'niobio', 'f', 32),
(69, 'solido, liquido y pl', 'f', 33),
(70, 'liquido, gaseoso y p', 'f', 33),
(71, 'solido, liquido y ga', 'c', 33),
(72, 'solido, gaseoso y pl', 'f', 33),
(73, 'mc', 'f', 34),
(74, 'hg', 'c', 34),
(75, 'mg', 'f', 34),
(76, 'me', 'f', 34),
(77, 'pl', 'f', 35),
(78, 'pt', 'f', 35),
(79, 'pg', 'f', 35),
(80, 'ag', 'c', 35),
(81, 'heptagono', 'c', 41),
(82, 'septagono', 'f', 41),
(83, 'pentagono', 'f', 41),
(84, 'noptagono', 'f', 41),
(87, '15', 'f', 42),
(88, '5', 'c', 42),
(89, '25', 'f', 42),
(90, '500', 'f', 42),
(91, 'regular', 'c', 43),
(92, 'irregular', 'f', 43),
(93, 'paralelo', 'f', 43),
(94, 'rectangulo', 'f', 43),
(95, '116', 'f', 44),
(96, '1116', 'f', 44),
(97, '516', 'f', 44),
(98, '66', 'c', 44),
(99, '13', 'f', 45),
(100, '14', 'f', 45),
(101, '11', 'c', 45),
(102, '20', 'f', 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `retiro`
--

CREATE TABLE `retiro` (
  `id_retiro` int(20) NOT NULL,
  `saldo` int(20) NOT NULL,
  `id_jugador` int(30) NOT NULL,
  `id_acumulado` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `retiro`
--

INSERT INTO `retiro` (`id_retiro`, `saldo`, `id_jugador`, `id_acumulado`) VALUES
(122, 100000, 1, 10),
(2344, 200000, 2, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ronda`
--

CREATE TABLE `ronda` (
  `id_ronda` int(20) NOT NULL,
  `nivel_ronda` int(20) NOT NULL,
  `valor_premio` int(11) NOT NULL,
  `id_partida` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ronda`
--

INSERT INTO `ronda` (`id_ronda`, `nivel_ronda`, `valor_premio`, `id_partida`) VALUES
(1, 1, 100000, 1),
(2, 2, 300000, 1),
(3, 3, 600000, 1),
(4, 4, 1200000, 1),
(5, 5, 2000000, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD KEY `id_ronda` (`id_ronda`),
  ADD KEY `id_ronda_2` (`id_ronda`);

--
-- Indices de la tabla `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`ïd_partida`),
  ADD KEY `ïd_partida` (`ïd_partida`),
  ADD KEY `ïd_partida_2` (`ïd_partida`),
  ADD KEY `id_jugador` (`id_jugador`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`id_jugador`),
  ADD KEY `id_jugador` (`id_jugador`),
  ADD KEY `id_jugador_2` (`id_jugador`),
  ADD KEY `id_jugador_3` (`id_jugador`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id_pregunta`),
  ADD KEY `id_pregunta` (`id_pregunta`),
  ADD KEY `id_partida` (`id_partida`),
  ADD KEY `id_ronda` (`id_categoria`),
  ADD KEY `id_ronda_2` (`id_ronda`);

--
-- Indices de la tabla `premio`
--
ALTER TABLE `premio`
  ADD PRIMARY KEY (`id_acumulado`),
  ADD KEY `id_acumulado` (`id_acumulado`),
  ADD KEY `id_ronda` (`id_ronda`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id_respuesta`),
  ADD KEY `id_pregunta` (`id_pregunta`);

--
-- Indices de la tabla `retiro`
--
ALTER TABLE `retiro`
  ADD PRIMARY KEY (`id_retiro`),
  ADD KEY `id_jugador` (`id_jugador`),
  ADD KEY `id_acumulado` (`id_acumulado`);

--
-- Indices de la tabla `ronda`
--
ALTER TABLE `ronda`
  ADD PRIMARY KEY (`id_ronda`),
  ADD KEY `id_partida` (`id_partida`),
  ADD KEY `id_ronda` (`id_ronda`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `premio`
--
ALTER TABLE `premio`
  MODIFY `id_acumulado` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `categoria_ibfk_1` FOREIGN KEY (`id_ronda`) REFERENCES `ronda` (`id_ronda`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `juego`
--
ALTER TABLE `juego`
  ADD CONSTRAINT `juego_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugador` (`id_jugador`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`id_partida`) REFERENCES `juego` (`ïd_partida`) ON UPDATE CASCADE,
  ADD CONSTRAINT `preguntas_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `preguntas_ibfk_4` FOREIGN KEY (`id_ronda`) REFERENCES `ronda` (`id_ronda`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `premio`
--
ALTER TABLE `premio`
  ADD CONSTRAINT `premio_ibfk_1` FOREIGN KEY (`id_ronda`) REFERENCES `ronda` (`id_ronda`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `respuestas_ibfk_1` FOREIGN KEY (`id_pregunta`) REFERENCES `preguntas` (`id_pregunta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `retiro`
--
ALTER TABLE `retiro`
  ADD CONSTRAINT `retiro_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugador` (`id_jugador`) ON UPDATE CASCADE,
  ADD CONSTRAINT `retiro_ibfk_2` FOREIGN KEY (`id_acumulado`) REFERENCES `premio` (`id_acumulado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ronda`
--
ALTER TABLE `ronda`
  ADD CONSTRAINT `ronda_ibfk_1` FOREIGN KEY (`id_partida`) REFERENCES `juego` (`ïd_partida`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
