-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-03-2019 a las 12:57:20
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id` int(11) NOT NULL,
  `titulo` varchar(80) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `horaInicio` time DEFAULT NULL,
  `fechaFinalizacion` date DEFAULT NULL,
  `horaFinalizacion` time DEFAULT NULL,
  `todoDia` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`id`, `titulo`, `fechaInicio`, `horaInicio`, `fechaFinalizacion`, `horaFinalizacion`, `todoDia`) VALUES
(1, 'Titulo', '2019-03-17', '05:00:00', '2019-03-20', '11:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `contrasena` varchar(800) NOT NULL,
  `fechaNacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `nombre`, `contrasena`, `fechaNacimiento`) VALUES
(1, 'alcantaraosc@gmail.com', 'Oscar Alcantara', '$2y$10$WBMRCnL15S4cQotdj0G7Je0CoTJli642IjQ9trC3yRLHbTClUJf.2', '1990-12-12'),
(2, 'josemendoza@gmail.com', 'Jose Mendoza', '$2y$10$KplWZJyayBTZwEjktqJMn.mtLZmI2odU39s2AiCqecu7obz7m8qDW', '1989-10-15'),
(3, 'perlazamora@gmail.com', 'Perla Zamora', '$2y$10$smMKZRBKCyyTbtrM/iKugeMJFMri4lkMrkYUCLI/dqAlRnE9OeFHe', '1989-05-25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
