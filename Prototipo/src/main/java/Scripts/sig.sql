-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2026 a las 20:26:01
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sig`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicaciones`
--

CREATE TABLE `aplicaciones` (
  `Aplcodigo` int(11) NOT NULL,
  `Aplnombre` varchar(100) NOT NULL,
  `Aplestado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aplicaciones`
--

INSERT INTO `aplicaciones` (`Aplcodigo`, `Aplnombre`, `Aplestado`) VALUES
(0, 'Apps', '2'),
(1, 'LOGIN', '1'),
(2, 'Usuarios', '2'),
(3, 'Registros', '2'),
(4, 'Excel', '1'),
(5, 'Word', 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacionaplicacionperfil`
--

CREATE TABLE `asignacionaplicacionperfil` (
  `Aplcodigo` int(11) NOT NULL,
  `Percodigo` int(11) NOT NULL,
  `APLPins` varchar(1) NOT NULL,
  `APLPsel` varchar(1) NOT NULL,
  `APLPupd` varchar(1) NOT NULL,
  `APLPdel` varchar(1) NOT NULL,
  `APLPrep` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacionaplicacionusuarios`
--

CREATE TABLE `asignacionaplicacionusuarios` (
  `Aplcodigo` int(11) NOT NULL,
  `UsuId` int(11) NOT NULL,
  `APLUins` varchar(1) NOT NULL,
  `APLUsel` varchar(1) NOT NULL,
  `APLUupd` varchar(1) NOT NULL,
  `APLUdel` varchar(1) NOT NULL,
  `APLUrep` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacionperfilusuario`
--

CREATE TABLE `asignacionperfilusuario` (
  `UsuId` int(11) NOT NULL,
  `Percodigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `Bitcodigo` int(11) NOT NULL,
  `UsuId` int(11) DEFAULT NULL,
  `Aplcodigo` int(11) DEFAULT NULL,
  `Bitfecha` datetime DEFAULT NULL,
  `Bitip` varchar(50) DEFAULT NULL,
  `Bitequipo` varchar(100) DEFAULT NULL,
  `Bitaccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`Bitcodigo`, `UsuId`, `Aplcodigo`, `Bitfecha`, `Bitip`, `Bitequipo`, `Bitaccion`) VALUES
(106, 1, 1, '2026-04-08 11:14:27', '172.20.10.3', 'MSI', 'UPDATE aplicación ID: 4 Nombre: Excel'),
(123, 1, 1, '2026-04-08 11:39:57', '172.20.10.3', 'MSI', 'Inicio Sesiòn'),
(124, 1, 1, '2026-04-08 11:40:50', '172.20.10.3', 'MSI', 'INSERT usuario: Apps'),
(125, 1, 1, '2026-04-08 11:42:51', '172.20.10.3', 'MSI', 'UPDATE aplicación ID: 4 Nombre: Excel'),
(126, 7, 1, '2026-04-08 11:43:37', '172.20.10.3', 'MSI', 'Inicio Sesiòn'),
(127, 7, 1, '2026-04-08 11:43:48', '172.20.10.3', 'MSI', 'UPDATE usuario: Boris'),
(133, 1, 1, '2026-04-10 21:57:55', '192.168.1.227', 'MSI', 'Inicio Sesiòn'),
(140, 1, 1, '2026-04-10 22:02:50', '192.168.1.227', 'MSI', 'Inicio Sesiòn'),
(142, 1, 1, '2026-04-10 22:27:19', '192.168.1.227', 'MSI', 'Inicio Sesiòn'),
(144, 1, 1, '2026-04-10 22:28:23', '192.168.1.227', 'MSI', 'Inicio Sesiòn'),
(147, 1, 1, '2026-04-10 22:34:10', '192.168.1.227', 'MSI', 'Inicio Sesiòn'),
(149, 1, 1, '2026-04-17 11:34:49', '10.207.70.238', 'MSI', 'Inicio Sesiòn'),
(150, 1, 1, '2026-04-17 11:44:24', '10.207.70.238', 'MSI', 'Inicio Sesiòn'),
(151, 1, 1, '2026-04-17 11:46:35', '10.207.70.238', 'MSI', 'Inicio Sesiòn'),
(152, 1, 1, '2026-04-17 11:50:44', '10.207.70.238', 'MSI', 'Inicio Sesiòn'),
(153, 1, 1, '2026-04-17 11:51:37', '10.207.70.238', 'MSI', 'Inicio Sesiòn'),
(154, 1, 1, '2026-04-17 11:51:54', '10.207.70.238', 'MSI', 'Inicio Sesiòn'),
(155, 1, 1, '2026-04-17 12:09:15', '10.207.70.238', 'MSI', 'Inicio Sesiòn'),
(156, 1, 1, '2026-04-17 12:16:23', '10.207.70.238', 'MSI', 'Inicio Sesiòn'),
(157, 1, 1, '2026-04-17 12:25:09', '10.207.70.238', 'MSI', 'Inicio Sesiòn');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `Percodigo` int(11) NOT NULL,
  `Pernombre` varchar(100) NOT NULL,
  `Perestado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuid` int(11) NOT NULL,
  `usunombre` varchar(45) NOT NULL,
  `usucontrasena` varchar(25) NOT NULL,
  `usuultimasesion` date DEFAULT NULL,
  `usuestatus` varchar(1) NOT NULL,
  `usunombrereal` varchar(60) DEFAULT NULL,
  `usucorreoe` varchar(60) DEFAULT NULL,
  `usutelefono` varchar(25) DEFAULT NULL,
  `usudireccion` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuid`, `usunombre`, `usucontrasena`, `usuultimasesion`, `usuestatus`, `usunombrereal`, `usucorreoe`, `usutelefono`, `usudireccion`) VALUES
(1, 'admon', 'MTIzNDU2', '2026-01-01', 'T', 'Administrador', 'admon@gmail.com', '502-23311017', 'conocida'),
(2, 'Boris', 'MTIzNDU=', '2026-03-24', 'A', 'Boris', 'delenboris', '1234', 'zona 2'),
(6, 'jjuan', 'MTIzNDU=', '2026-03-24', 'A', 'JUAN', 'ldajclña', '22334343', 'zona 1'),
(7, 'Apps', 'MTIzNDU2', '2026-03-24', 'A', 'Juan', 'apps@gmail.com', '55663345', 'zona 1'),
(8, 'j', 'ag==', '0001-01-01', 'A', 'j', 'j', 'j', 'j'),
(9, 'juan', 'MTI=', '0001-01-01', 'A', 'Juan', 'jalfda', 'ljsldkjlkfa', 'fadsafas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `codigo_vendedor` varchar(5) NOT NULL,
  `nombre_vendedor` varchar(60) DEFAULT NULL,
  `direccion_vendedor` varchar(60) DEFAULT NULL,
  `telefono_vendedor` varchar(50) DEFAULT NULL,
  `nit_vendedor` varchar(20) DEFAULT NULL,
  `estatus_vendedor` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`codigo_vendedor`, `nombre_vendedor`, `direccion_vendedor`, `telefono_vendedor`, `nit_vendedor`, `estatus_vendedor`) VALUES
('1', 'Juan', 'zona 1', '56434590', '000000001', 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicaciones`
--
ALTER TABLE `aplicaciones`
  ADD PRIMARY KEY (`Aplcodigo`);

--
-- Indices de la tabla `asignacionaplicacionperfil`
--
ALTER TABLE `asignacionaplicacionperfil`
  ADD PRIMARY KEY (`Aplcodigo`,`Percodigo`),
  ADD KEY `Percodigo` (`Percodigo`);

--
-- Indices de la tabla `asignacionaplicacionusuarios`
--
ALTER TABLE `asignacionaplicacionusuarios`
  ADD PRIMARY KEY (`Aplcodigo`,`UsuId`),
  ADD KEY `UsuId` (`UsuId`);

--
-- Indices de la tabla `asignacionperfilusuario`
--
ALTER TABLE `asignacionperfilusuario`
  ADD PRIMARY KEY (`UsuId`,`Percodigo`),
  ADD KEY `Percodigo` (`Percodigo`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`Bitcodigo`),
  ADD KEY `UsuId` (`UsuId`),
  ADD KEY `Aplcodigo` (`Aplcodigo`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`Percodigo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuid`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`codigo_vendedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `Bitcodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `Percodigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignacionaplicacionperfil`
--
ALTER TABLE `asignacionaplicacionperfil`
  ADD CONSTRAINT `asignacionaplicacionperfil_ibfk_1` FOREIGN KEY (`Aplcodigo`) REFERENCES `aplicaciones` (`Aplcodigo`),
  ADD CONSTRAINT `asignacionaplicacionperfil_ibfk_2` FOREIGN KEY (`Percodigo`) REFERENCES `perfiles` (`Percodigo`);

--
-- Filtros para la tabla `asignacionaplicacionusuarios`
--
ALTER TABLE `asignacionaplicacionusuarios`
  ADD CONSTRAINT `asignacionaplicacionusuarios_ibfk_1` FOREIGN KEY (`Aplcodigo`) REFERENCES `aplicaciones` (`Aplcodigo`),
  ADD CONSTRAINT `asignacionaplicacionusuarios_ibfk_2` FOREIGN KEY (`UsuId`) REFERENCES `usuario` (`usuid`);

--
-- Filtros para la tabla `asignacionperfilusuario`
--
ALTER TABLE `asignacionperfilusuario`
  ADD CONSTRAINT `asignacionperfilusuario_ibfk_1` FOREIGN KEY (`UsuId`) REFERENCES `usuario` (`usuid`),
  ADD CONSTRAINT `asignacionperfilusuario_ibfk_2` FOREIGN KEY (`Percodigo`) REFERENCES `perfiles` (`Percodigo`);

--
-- Filtros para la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`UsuId`) REFERENCES `usuario` (`usuid`),
  ADD CONSTRAINT `bitacora_ibfk_2` FOREIGN KEY (`Aplcodigo`) REFERENCES `aplicaciones` (`Aplcodigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
