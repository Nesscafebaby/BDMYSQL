-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2022 a las 13:39:22
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artiulos`
--

CREATE TABLE `artiulos` (
  `Clave_articulo` int(30) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Precio` int(30) DEFAULT NULL,
  `Clave_fabricante` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artiulos`
--

INSERT INTO `artiulos` (`Clave_articulo`, `Nombre`, `Precio`, `Clave_fabricante`) VALUES
(1, 'TECLADO', 100, 3),
(2, 'DISCO DURO 300 GB', 500, 5),
(3, 'MOUSE', 80, 3),
(4, 'MEMORIA USB', 140, 4),
(5, 'MEMORIA RAM', 290, 1),
(6, 'DISCO DURO EXTRAIBLE 250 GB', 650, 5),
(7, 'MEMORIA USB', 279, 1),
(8, 'DVD ROM', 450, 2),
(9, 'CD ROM', 200, 2),
(10, 'TARJETA DE RED', 180, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricantes`
--

CREATE TABLE `fabricantes` (
  `Clave_fabricante` int(30) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fabricantes`
--

INSERT INTO `fabricantes` (`Clave_fabricante`, `Nombre`) VALUES
(1, 'KINGSTON'),
(2, 'ADATA'),
(3, 'LOGITECH'),
(4, 'LEXAR'),
(5, 'SEAGATE');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artiulos`
--
ALTER TABLE `artiulos`
  ADD PRIMARY KEY (`Clave_articulo`),
  ADD KEY `Clave_fabricante` (`Clave_fabricante`);

--
-- Indices de la tabla `fabricantes`
--
ALTER TABLE `fabricantes`
  ADD PRIMARY KEY (`Clave_fabricante`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artiulos`
--
ALTER TABLE `artiulos`
  ADD CONSTRAINT `artiulos_ibfk_1` FOREIGN KEY (`Clave_fabricante`) REFERENCES `fabricantes` (`Clave_fabricante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
