-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-03-2024 a las 17:47:35
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ciit`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `id_empresa` bigint NOT NULL AUTO_INCREMENT,
  `nombre_empresa` text NOT NULL,
  `direccion` text NOT NULL,
  `rfc` text NOT NULL,
  `telefono` text NOT NULL,
  `responsable` text NOT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `nombre_empresa`, `direccion`, `rfc`, `telefono`, `responsable`) VALUES
(1, 'corana s.a de c.v', 'Calle 13', '546546', '2132', 'ninguno'),
(3, 'pepsi s.a de c.v', 'Calle 13', '546546', '2132', 'ninguno'),
(4, 'intel', 'Calle 14', '654321', '3221', 'ninguno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertalaboral`
--

DROP TABLE IF EXISTS `ofertalaboral`;
CREATE TABLE IF NOT EXISTS `ofertalaboral` (
  `idOferta` bigint NOT NULL AUTO_INCREMENT,
  `salario` float NOT NULL,
  `puesto` text NOT NULL,
  `id_empresa` bigint NOT NULL,
  `descripcion` text NOT NULL,
  `horario` text NOT NULL,
  PRIMARY KEY (`idOferta`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ofertalaboral`
--

INSERT INTO `ofertalaboral` (`idOferta`, `salario`, `puesto`, `id_empresa`, `descripcion`, `horario`) VALUES
(1, 2000, 'jefe', 1, 'mucho money', '7 am- 6pm'),
(2, 3000, 'ayudante', 1, 'servicio de limpieza', '6 am- 5pm'),
(3, 4000, 'administrador', 3, 'administrar inventario', '7 am- 6pm'),
(4, 15000, 'Secretaria', 2, 'Puesto fijo', '9 am - 5 pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta_empresa`
--

DROP TABLE IF EXISTS `oferta_empresa`;
CREATE TABLE IF NOT EXISTS `oferta_empresa` (
  `idEmpresa` bigint NOT NULL,
  `idOferta` bigint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `oferta_empresa`
--

INSERT INTO `oferta_empresa` (`idEmpresa`, `idOferta`) VALUES
(1, 2),
(1, 1),
(2, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id_rol` bigint NOT NULL AUTO_INCREMENT,
  `nombre_rol` text NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre_rol`) VALUES
(1, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `correo` text NOT NULL,
  `id_Rol` bigint NOT NULL,
  `contrasena` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `id_Rol`, `contrasena`) VALUES
(1, 'Juan Perez', 'juan@gmail.com', 1, '123*'),
(2, 'Alejandro Rosas', 'Ale@gmail.com', 3, '456#'),
(4, 'Angel Cruz', 'Angel@gmail.com', 4, '789*');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
