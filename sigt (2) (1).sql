-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-10-2025 a las 05:15:27
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
-- Base de datos: `sigt`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `idAsistencia` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora_Entrada` time NOT NULL,
  `Hora_Salida` time NOT NULL,
  `Incapacidad` tinyint(4) DEFAULT NULL,
  `Persona_FK` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritos`
--

CREATE TABLE `carritos` (
  `idCarrito` int(11) NOT NULL,
  `FechaCreacion` datetime NOT NULL,
  `Estado` varchar(255) NOT NULL,
  `Persona_FK` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carritos`
--

INSERT INTO `carritos` (`idCarrito`, `FechaCreacion`, `Estado`, `Persona_FK`, `createdAt`, `updatedAt`) VALUES
(1, '2025-10-02 23:18:28', 'Pagado', 2, '2025-10-02 23:18:28', '2025-10-03 02:19:50'),
(2, '2025-10-02 23:28:57', 'Pendiente', 2, '2025-10-02 23:28:58', '2025-10-02 23:28:58'),
(3, '2025-10-02 23:30:20', 'Pagado', 2, '2025-10-02 23:30:20', '2025-10-02 23:30:20'),
(4, '2025-10-02 23:31:29', 'Pagado', 2, '2025-10-02 23:31:29', '2025-10-02 23:31:29'),
(5, '2025-10-02 23:42:50', 'Pendiente', 2, '2025-10-02 23:42:50', '2025-10-02 23:42:50'),
(6, '2025-10-02 23:43:26', 'Pagado', 2, '2025-10-02 23:43:26', '2025-10-02 23:43:26'),
(7, '2025-10-03 00:31:40', 'Pagado', 2, '2025-10-03 00:31:40', '2025-10-03 00:31:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallecarritos`
--

CREATE TABLE `detallecarritos` (
  `idDetalleCarrito` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Carrito_FK` int(11) NOT NULL,
  `Producto_FK` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detallecarritos`
--

INSERT INTO `detallecarritos` (`idDetalleCarrito`, `Cantidad`, `Carrito_FK`, `Producto_FK`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 2, '2025-10-02 23:18:28', '2025-10-02 23:18:28'),
(2, 2, 1, 1, '2025-10-02 23:18:28', '2025-10-02 23:18:28'),
(3, 2, 1, 3, '2025-10-02 23:18:28', '2025-10-02 23:18:28'),
(4, 2, 2, 1, '2025-10-02 23:28:58', '2025-10-02 23:28:58'),
(5, 1, 2, 2, '2025-10-02 23:28:58', '2025-10-02 23:28:58'),
(6, 5, 3, 2, '2025-10-02 23:30:20', '2025-10-02 23:30:20'),
(7, 2, 4, 1, '2025-10-02 23:31:29', '2025-10-02 23:31:29'),
(8, 1, 5, 3, '2025-10-02 23:42:50', '2025-10-02 23:42:50'),
(9, 1, 6, 3, '2025-10-02 23:43:26', '2025-10-02 23:43:26'),
(10, 1, 7, 1, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(11, 1, 7, 2, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(12, 1, 7, 3, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(13, 1, 7, 6, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(14, 1, 7, 5, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(15, 1, 7, 4, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(16, 1, 7, 7, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(17, 1, 7, 8, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(18, 1, 7, 9, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(19, 1, 7, 10, '2025-10-03 00:31:40', '2025-10-03 00:31:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `idDetalleVenta` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `PrecioUnitario` decimal(10,2) NOT NULL,
  `Producto_FK` int(11) NOT NULL,
  `Venta_FK` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`idDetalleVenta`, `Cantidad`, `PrecioUnitario`, `Producto_FK`, `Venta_FK`, `createdAt`, `updatedAt`) VALUES
(1, 5, 60000.00, 2, 2, '2025-10-02 23:30:20', '2025-10-02 23:30:20'),
(2, 2, 55000.00, 1, 3, '2025-10-02 23:31:29', '2025-10-02 23:31:29'),
(3, 1, 58000.00, 3, 4, '2025-10-02 23:42:50', '2025-10-02 23:42:50'),
(4, 1, 58000.00, 3, 5, '2025-10-02 23:43:26', '2025-10-02 23:43:26'),
(5, 1, 55000.00, 1, 6, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(6, 1, 60000.00, 2, 6, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(7, 1, 58000.00, 3, 6, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(8, 1, 50000.00, 6, 6, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(9, 1, 65000.00, 4, 6, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(10, 1, 45000.00, 5, 6, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(11, 1, 59000.00, 7, 6, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(12, 1, 70000.00, 8, 6, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(13, 1, 85000.00, 9, 6, '2025-10-03 00:31:40', '2025-10-03 00:31:40'),
(14, 1, 52000.00, 10, 6, '2025-10-03 00:31:40', '2025-10-03 00:31:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadopersonas`
--

CREATE TABLE `estadopersonas` (
  `idEstadoPersona` int(11) NOT NULL,
  `NombreEstado` varchar(255) NOT NULL,
  `DescriptionEstado` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadopersonas`
--

INSERT INTO `estadopersonas` (`idEstadoPersona`, `NombreEstado`, `DescriptionEstado`, `createdAt`, `updatedAt`) VALUES
(1, 'Activo', 'Perfil Activo', '2025-10-02 22:59:23', '2025-10-02 22:59:23'),
(2, 'Inactivo', 'Perfil Inactivo por Tiempo Indefinido', '2025-10-02 22:59:40', '2025-10-02 22:59:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `idPersona` int(11) NOT NULL,
  `NumeroDocumento` int(11) NOT NULL,
  `TipoDocumento` enum('CC','TI','CE','Pasaporte') NOT NULL,
  `Primer_Nombre` varchar(255) NOT NULL,
  `Segundo_Nombre` varchar(255) DEFAULT NULL,
  `Primer_Apellido` varchar(255) NOT NULL,
  `Segundo_Apellido` varchar(255) DEFAULT NULL,
  `Telefono` varchar(255) NOT NULL,
  `Correo` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Rol_FK` int(11) NOT NULL,
  `EstadoPersona_FK` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`idPersona`, `NumeroDocumento`, `TipoDocumento`, `Primer_Nombre`, `Segundo_Nombre`, `Primer_Apellido`, `Segundo_Apellido`, `Telefono`, `Correo`, `Password`, `Rol_FK`, `EstadoPersona_FK`, `createdAt`, `updatedAt`) VALUES
(1, 1141314753, 'CC', 'Cristian', 'Mateo', 'Valencia', 'Peña', '3208478371', 'crismatius46@gmail.com', '$2b$10$O8VFqtRxmN7tSd3gSIQ7iegrY.xJLcv5x2ZYOMJNRznLZnHbvBQjW', 1, 1, '2025-10-02 23:00:06', '2025-10-02 23:00:06'),
(2, 1028481643, 'CC', 'Valeria', 'Sofia', 'Meza', 'Medina', '3102909927', 'mezamedinavaleria@gmail.com', '$2b$10$bFNTXX22OPvS4TB1jv7KXeI84WMYdOZKfodeKVs8fBTp4O9R.cjki', 4, 1, '2025-10-02 23:02:43', '2025-10-02 23:02:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `NombreProducto` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Talla` enum('XS','S','M','L','XL','2','4','6','8','10','12','14','16') NOT NULL,
  `Stock` int(11) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `NombreProducto`, `Color`, `Talla`, `Stock`, `Precio`, `createdAt`, `updatedAt`) VALUES
(1, 'Pijama Unicornio', 'Rosa', 'M', 14, 55000.00, '2025-10-02 23:15:38', '2025-10-03 00:31:40'),
(2, 'Pijama Estrellas', 'Azul', 'S', 19, 60000.00, '2025-10-02 23:15:45', '2025-10-03 00:31:40'),
(3, 'Pijama Corazones', 'Rojo', 'L', 10, 58000.00, '2025-10-02 23:15:52', '2025-10-03 00:31:40'),
(4, 'Pijama Rayas', 'Blanco', 'XL', 9, 65000.00, '2025-10-02 23:15:57', '2025-10-03 00:31:40'),
(5, 'Pijama Infantil Dino', 'Verde', '6', 24, 45000.00, '2025-10-02 23:16:03', '2025-10-03 00:31:40'),
(6, 'Pijama Básica', 'Negro', 'M', 29, 50000.00, '2025-10-02 23:16:08', '2025-10-03 00:31:40'),
(7, 'Pijama Flores', 'Amarillo', 'L', 17, 59000.00, '2025-10-02 23:16:14', '2025-10-03 00:31:40'),
(8, 'Pijama Polar Invierno', 'Gris', 'XL', 7, 70000.00, '2025-10-02 23:16:19', '2025-10-03 00:31:40'),
(9, 'Pijama Seda Elegante', 'Beige', 'S', 5, 85000.00, '2025-10-02 23:16:25', '2025-10-03 00:31:40'),
(10, 'Pijama Corta Verano', 'Celeste', 'M', 21, 52000.00, '2025-10-02 23:16:29', '2025-10-03 00:31:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idRol` int(11) NOT NULL,
  `NombreRol` enum('SuperAdmin','Administrador','Empleado','Cliente') NOT NULL,
  `DescripcionRol` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `NombreRol`, `DescripcionRol`, `createdAt`, `updatedAt`) VALUES
(1, 'SuperAdmin', 'SuperAdmin', '2025-10-02 22:58:09', '2025-10-02 22:58:09'),
(2, 'Administrador', 'Administrador', '2025-10-02 22:58:21', '2025-10-02 22:58:21'),
(3, 'Empleado', 'Empleado', '2025-10-02 22:58:30', '2025-10-02 22:58:30'),
(4, 'Cliente', 'Cliente', '2025-10-02 22:58:43', '2025-10-02 22:58:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `idTarea` int(11) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `FechaAsignacion` datetime NOT NULL,
  `FechaLimite` datetime NOT NULL,
  `EstadoTarea` varchar(255) NOT NULL,
  `Prioridad` varchar(255) NOT NULL,
  `Persona_FK` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idVenta` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  `Persona_FK` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idVenta`, `Fecha`, `Total`, `Persona_FK`, `createdAt`, `updatedAt`) VALUES
(2, '2025-10-02 05:00:00', 350000.00, 2, '2025-10-02 23:30:20', '2025-10-03 02:27:33'),
(3, '2025-10-02 05:00:00', 115000.00, 2, '2025-10-02 23:31:29', '2025-10-03 02:27:59'),
(4, '2025-10-02 05:00:00', 60000.00, 2, '2025-10-02 23:42:50', '2025-10-03 02:28:14'),
(5, '2025-10-02 00:00:00', 58000.00, 2, '2025-10-02 23:43:26', '2025-10-02 23:43:26'),
(6, '2025-10-03 00:00:00', 599000.00, 2, '2025-10-03 00:31:40', '2025-10-03 00:31:40');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`idAsistencia`),
  ADD KEY `Persona_FK` (`Persona_FK`);

--
-- Indices de la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD PRIMARY KEY (`idCarrito`),
  ADD KEY `Persona_FK` (`Persona_FK`);

--
-- Indices de la tabla `detallecarritos`
--
ALTER TABLE `detallecarritos`
  ADD PRIMARY KEY (`idDetalleCarrito`),
  ADD KEY `Carrito_FK` (`Carrito_FK`),
  ADD KEY `Producto_FK` (`Producto_FK`);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`idDetalleVenta`),
  ADD KEY `Producto_FK` (`Producto_FK`),
  ADD KEY `Venta_FK` (`Venta_FK`);

--
-- Indices de la tabla `estadopersonas`
--
ALTER TABLE `estadopersonas`
  ADD PRIMARY KEY (`idEstadoPersona`),
  ADD UNIQUE KEY `NombreEstado` (`NombreEstado`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`idPersona`),
  ADD UNIQUE KEY `NumeroDocumento` (`NumeroDocumento`),
  ADD UNIQUE KEY `Telefono` (`Telefono`),
  ADD UNIQUE KEY `Correo` (`Correo`),
  ADD KEY `Rol_FK` (`Rol_FK`),
  ADD KEY `EstadoPersona_FK` (`EstadoPersona_FK`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRol`),
  ADD UNIQUE KEY `NombreRol` (`NombreRol`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`idTarea`),
  ADD KEY `Persona_FK` (`Persona_FK`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `Persona_FK` (`Persona_FK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `idAsistencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carritos`
--
ALTER TABLE `carritos`
  MODIFY `idCarrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `detallecarritos`
--
ALTER TABLE `detallecarritos`
  MODIFY `idDetalleCarrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `idDetalleVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `estadopersonas`
--
ALTER TABLE `estadopersonas`
  MODIFY `idEstadoPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `idTarea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`Persona_FK`) REFERENCES `personas` (`idPersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD CONSTRAINT `carritos_ibfk_1` FOREIGN KEY (`Persona_FK`) REFERENCES `personas` (`idPersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallecarritos`
--
ALTER TABLE `detallecarritos`
  ADD CONSTRAINT `detallecarritos_ibfk_1` FOREIGN KEY (`Carrito_FK`) REFERENCES `carritos` (`idCarrito`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detallecarritos_ibfk_2` FOREIGN KEY (`Producto_FK`) REFERENCES `productos` (`idProducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`Producto_FK`) REFERENCES `productos` (`idProducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`Venta_FK`) REFERENCES `venta` (`idVenta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`Rol_FK`) REFERENCES `roles` (`idRol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `personas_ibfk_2` FOREIGN KEY (`EstadoPersona_FK`) REFERENCES `estadopersonas` (`idEstadoPersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `tareas_ibfk_1` FOREIGN KEY (`Persona_FK`) REFERENCES `personas` (`idPersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`Persona_FK`) REFERENCES `personas` (`idPersona`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
