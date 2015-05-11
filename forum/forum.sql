-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-05-2015 a las 00:59:59
-- Versión del servidor: 5.5.43-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `forum`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE IF NOT EXISTS `mensajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_topico` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `mensaje` text NOT NULL,
  `activo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id`, `id_topico`, `id_user`, `mensaje`, `activo`) VALUES
(8, 4, 1, 'asfdasdf\r\n', 1),
(10, 4, 1, 'vvvvvvvvvvvv', 1),
(11, 4, 1, 'zcvzxcv', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topicos`
--

CREATE TABLE IF NOT EXISTS `topicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `topico_name` varchar(50) NOT NULL,
  `date` varchar(100) NOT NULL,
  `activo` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `topicos`
--

INSERT INTO `topicos` (`id`, `user_id`, `topico_name`, `date`, `activo`) VALUES
(4, 1, 'asdfdasfasdf', 'Sun May 10 23:12:26 2015', 1),
(6, 1, 'adsfadsfads', 'Sun May 10 23:29:49 2015', 1),
(7, 1, 'sssssssssssssss', 'Mon May 11 00:18:02 2015', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user_name`, `name`, `pass`) VALUES
(1, 'macno', 'Mariano', 'mariano'),
(2, 'prueba', 'Prueba', '1234');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
