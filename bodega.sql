-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2022 a las 02:46:21
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bodega`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `rfc` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `ap_pat` varchar(30) NOT NULL,
  `ap_mat` varchar(30) NOT NULL,
  `folio_venta` int(10) NOT NULL,
  `telefono` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`rfc`, `nombre`, `ap_pat`, `ap_mat`, `folio_venta`, `telefono`) VALUES
('rfc1', 'daniel1', 'diaz1', 'macias1', 1, 4491),
('rfc10', 'daniel10', 'diaz10', 'macias10', 10, 4410),
('rfc2', 'daniel2', 'diaz2', 'macias2', 2, 4492),
('rfc3', 'daniel3', 'diaz3', 'macias3', 3, 4493),
('rfc4', 'daniel4', 'diaz4', 'macias4', 4, 4494),
('rfc5', 'daniel5', 'diaz5', 'macias5', 5, 4495),
('rfc6', 'daniel6', 'diaz6', 'macias6', 6, 4496),
('rfc7', 'daniel7', 'diaz7', 'macias7', 7, 4497),
('rfc8', 'daniel8', 'diaz8', 'macias8', 8, 4498),
('rfc9', 'daniel9', 'diaz9', 'macias9', 9, 4499);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `clave` int(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `ap_pat` varchar(30) NOT NULL,
  `ap_mat` varchar(30) NOT NULL,
  `sexo` varchar(30) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `telefono` int(10) NOT NULL,
  `sueldo` int(10) NOT NULL,
  `fecha_alta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`clave`, `nombre`, `ap_pat`, `ap_mat`, `sexo`, `domicilio`, `telefono`, `sueldo`, `fecha_alta`) VALUES
(1001, 'ruben1', 'chavez1', 'venezuelo1', 'masc', 'c.rom #101', 44921, 999, '2011-08-09'),
(1002, 'ruben2', 'GONZALES', 'venezuelo2', 'fem', 'c.rom #102', 44922, 999, '2012-08-09'),
(1003, 'ruben3', 'chavez3', 'venezuelo3', 'fem', 'c.rom #103', 44923, 9991, '2013-08-09'),
(1004, 'ruben4', 'chavez4', 'venezuelo4', 'masc', 'c.rom #104', 44924, 9992, '2014-08-09'),
(1005, 'ruben5', 'chavez5', 'venezuelo5', 'masc', 'c.rom #105', 44925, 9993, '2015-08-09'),
(1006, 'ruben6', 'chavez6', 'venezuelo6', 'fem', 'c.rom #106', 44926, 9994, '2016-08-09'),
(1007, 'ruben7', 'chavez7', 'venezuelo7', 'masc', 'c.rom #107', 44927, 995, '2017-08-09'),
(1008, 'ruben8', 'chavez8', 'venezuelo8', 'fem', 'c.rom #108', 44928, 997, '2018-08-09'),
(1009, 'ruben9', 'chavez9', 'venezuelo9', 'masc', 'c.rom #109', 44929, 998, '2019-08-09'),
(1010, 'ruben10', 'chavez10', 'venezuelo10', 'masc', 'c.rom #110', 44910, 10000, '2020-08-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `numero` int(10) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `costo` int(30) NOT NULL,
  `cantidad` int(30) NOT NULL,
  `marca` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`numero`, `descripcion`, `costo`, `cantidad`, `marca`) VALUES
(5001, 'leche 1lt', 91, 1001, 'san marcos1'),
(5002, 'leche 2lt', 92, 1002, 'san marcos2'),
(5003, 'leche 3lt', 93, 1003, 'GAMESA'),
(5004, 'leche 4lt', 94, 1004, 'san marcos4'),
(5005, 'leche 5lt', 95, 1005, 'san marcos5'),
(5006, 'leche 6lt', 96, 1006, 'san marcos6'),
(5007, 'leche 7lt', 97, 1007, 'san marcos7'),
(5008, 'leche 8lt', 98, 1008, 'san marcos8'),
(5009, 'leche 9lt', 99, 1009, 'san marcos9'),
(5010, 'leche 10lt', 100, 1010, 'san marcos10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `folio` int(10) NOT NULL,
  `numero_prod` int(10) NOT NULL,
  `precio` int(30) NOT NULL,
  `fecha_venta` date NOT NULL,
  `clave_vendedor` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`folio`, `numero_prod`, `precio`, `fecha_venta`, `clave_vendedor`) VALUES
(1, 5001, 91, '2011-06-21', 1001),
(2, 5002, 92, '2012-06-21', 1002),
(3, 5003, 93, '2013-06-21', 1003),
(4, 5004, 94, '2014-06-21', 1004),
(5, 5005, 95, '2015-06-21', 1005),
(6, 5006, 96, '2016-06-21', 1006),
(7, 5007, 97, '2017-06-21', 1007),
(8, 5008, 98, '2018-06-21', 1008),
(9, 5009, 99, '2019-06-21', 1009),
(10, 5010, 100, '2020-06-21', 1010);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`rfc`),
  ADD KEY `folio_venta` (`folio_venta`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`folio`),
  ADD KEY `numero_prod` (`numero_prod`),
  ADD KEY `clave_vendedor` (`clave_vendedor`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`folio_venta`) REFERENCES `ventas` (`folio`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`numero_prod`) REFERENCES `productos` (`numero`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`clave_vendedor`) REFERENCES `empleados` (`clave`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
