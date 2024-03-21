-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2024 a las 03:53:37
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

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

CREATE TABLE `empresa` (
  `id_empresa` bigint(20) NOT NULL,
  `nombre_empresa` text NOT NULL,
  `direccion` text NOT NULL,
  `rfc` text NOT NULL,
  `telefono` text NOT NULL,
  `responsable` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `ofertalaboral` (
  `idOferta` bigint(20) NOT NULL,
  `salario` float NOT NULL,
  `puesto` text NOT NULL,
  `id_empresa` bigint(20) NOT NULL,
  `descripcion` text NOT NULL,
  `horario` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `oferta_empresa` (
  `idEmpresa` bigint(20) NOT NULL,
  `idOferta` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

CREATE TABLE `roles` (
  `id_rol` bigint(20) NOT NULL,
  `nombre_rol` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre_rol`) VALUES
(1, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `nombre` text NOT NULL,
  `correo` text NOT NULL,
  `id_Rol` bigint(20) NOT NULL,
  `contrasena` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `id_Rol`, `contrasena`) VALUES
(1, 'Juan Perez', 'juan@gmail.com', 1, '$2b$10$BlxJLZCbhDOlw5y9Bflm8.8GtMuXSl1yOyJ/lNUtcSSwdpDQ1eGWa'),
(2, 'Alejandro Rosas', 'Ale@gmail.com', 3, '$2b$10$2Iyvv44GZN/UaMCPQz5B5OMXFLkgegrGH8XesCfjus6A6HH6z.MZm'),
(4, 'Angel Cruz', 'Angel@gmail.com', 4, '$2b$10$FyruYKi5bnAkYa/dmGsouugDFCviSPeAxKCqPabHdkZSLxAvoCUqO'),
(9, 'Temp', 'Angel@gmail.com', 0, '789*');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indices de la tabla `ofertalaboral`
--
ALTER TABLE `ofertalaboral`
  ADD PRIMARY KEY (`idOferta`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ofertalaboral`
--
ALTER TABLE `ofertalaboral`
  MODIFY `idOferta` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
