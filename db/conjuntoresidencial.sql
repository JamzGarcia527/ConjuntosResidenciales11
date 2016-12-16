-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2016 a las 12:49:47
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `conjuntoresidencial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apartamento`
--

CREATE TABLE `apartamento` (
  `_id_apartamento` int(11) NOT NULL,
  `_id_interior` int(11) NOT NULL,
  `_id_formulario_pro` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `valor_administracion` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `apartamento`
--

INSERT INTO `apartamento` (`_id_apartamento`, `_id_interior`, `_id_formulario_pro`, `nombre`, `descripcion`, `valor_administracion`) VALUES
(1, 9, 1, 'apartamento 101', 'Zona A', 30000),
(2, 9, 2, 'apartamento 102', 'Zona A', 30000),
(3, 9, 3, 'apartamento 103', 'Zona A', 45000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloque`
--

CREATE TABLE `bloque` (
  `_id_bloque` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bloque`
--

INSERT INTO `bloque` (`_id_bloque`, `nombre`, `descripcion`) VALUES
(1, 'bloque 1', 'Zona A'),
(2, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `_id_cliente` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `con_contrasena` varchar(50) NOT NULL,
  `fec_nac` date NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `_id_contacto` int(11) NOT NULL,
  `_id_formulario_pro` int(11) NOT NULL,
  `_id_formulario_res` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `asunto` varchar(30) NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `_id_empleados` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `identificacion` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `funcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`_id_empleados`, `nombre`, `apellido`, `identificacion`, `email`, `funcion`) VALUES
(1, 'maria emma', 'perez martinez', 51236548, '3208796541', 'emma@gmail.com'),
(2, 'maria emma', 'perez martinez', 51236548, '3208796541', 'emma@gmail.com'),
(3, 'Antonio', 'Garcia', 51241632, 'antony@yahoo.com', 'cotero'),
(4, 'Antonio', 'Garcia', 52478965, 'andrescotero@gmail.com', 'cotero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `_id_eventos` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `uploadedpreview` varchar(150) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `costo_evento` int(50) NOT NULL,
  `fecha_entrada` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`_id_eventos`, `nombre`, `uploadedpreview`, `descripcion`, `costo_evento`, `fecha_entrada`) VALUES
(8, 'Fiesta el 24 Asado!!', 'img/preview/asado.jpg', 'Invitados a el asado ', 0, '2016-12-24'),
(9, 'Feliz Fin Año', 'img/preview/2016.jpg', 'Celebra con nosotros este año nuevo', 0, '2016-12-31'),
(10, 'Vacaciones', 'img/preview/vacas.png', 'Disfruta tus Vacaoiones!!', 0, '2001-01-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario_pagos`
--

CREATE TABLE `formulario_pagos` (
  `_id_formulario_pagos` int(11) NOT NULL,
  `_id_apartamento` int(11) NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `concepto` varchar(25) NOT NULL,
  `mes` date NOT NULL,
  `total_pagar` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario_pro`
--

CREATE TABLE `formulario_pro` (
  `_id_formulario_pro` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `identificacion` int(15) NOT NULL,
  `celular` int(15) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formulario_pro`
--

INSERT INTO `formulario_pro` (`_id_formulario_pro`, `nombre`, `apellido`, `identificacion`, `celular`, `email`) VALUES
(1, 'jimmy fernando ', 'Cantor Garcia', 1000782057, 2147483647, 'jamzgarcia@misena.edu.co'),
(2, 'felipe ', 'sanchez', 54789546, 2147483647, 'sanchezfe@hotmail.com'),
(3, 'andrea coloso', 'sanahoria', 36458798, 2147483647, 'coloso@facebook.com'),
(4, 'wilmer', 'cabezas', 1032458795, 2147483647, 'heads@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario_res`
--

CREATE TABLE `formulario_res` (
  `_id_formulario_res` int(11) NOT NULL,
  `_id_apartamento` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `identificacion` int(12) NOT NULL,
  `celular` int(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `funcion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formulario_res`
--

INSERT INTO `formulario_res` (`_id_formulario_res`, `_id_apartamento`, `nombre`, `apellido`, `identificacion`, `celular`, `email`, `funcion`) VALUES
(1, 1, 'emma ', 'gonzales', 51241785, 2147483647, 'emma@gmail.com', 'Arrendatario'),
(2, 1, 'marcerla', 'beltran', 1003785411, 2147483647, 'marce@gmail.com', 'Arrendatario'),
(3, 2, 'andres', 'cardenas', 1003548796, 2147483647, 'cardenasandres01@gmail.co', 'Arrendatario'),
(4, 2, 'andrea ', 'rios', 51236487, 2147483647, 'andreasolorios@yahoo.com', 'Arrendatario'),
(5, 2, 'felipe ', 'sanchez', 54789546, 2147483647, 'sanchezfe@hotmail.com', 'Propietario'),
(6, 3, 'andrea coloso', 'sanahoria', 36458798, 2147483647, 'coloso@facebook.com', 'Propietario'),
(7, 3, 'gilbert', 'cortes', 1054878222, 301654789, 'gil@gil.com', 'Arrendatario'),
(8, 3, 'hillary', 'clinton', 1023569478, 302548796, 'hillary.clinton@usa.com', 'Arrendatario'),
(9, 0, 'maria emma', 'perez martinez', 21145566, 2147483647, 'emma@gmail.com', 'serviciosgenera'),
(10, 0, 'maria emma', 'perez martinez', 21145566, 2147483647, 'emma@gmail.com', 'serviciosgenera'),
(11, 0, 'maria emma', 'perez martinez', 21145566, 2147483647, 'emma@gmail.com', 'serviciosgenera'),
(12, 0, 'maria emma', 'perez martinez', 21145566, 2147483647, 'emma@gmail.com', 'serviciosgenera'),
(13, 0, 'maria emma', 'perez martinez', 21145566, 2147483647, 'emma@gmail.com', 'serviciosgenera'),
(14, 0, 'maria emma', 'perez martinez', 51689275, 2147483647, 'emma@gmail.com', 'serviciosgenera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario_vis`
--

CREATE TABLE `formulario_vis` (
  `_id_formulario_vis` int(11) NOT NULL,
  `_id_apartamento` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `identificacion` int(15) NOT NULL,
  `celular` int(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `foto` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formulario_vis`
--

INSERT INTO `formulario_vis` (`_id_formulario_vis`, `_id_apartamento`, `nombre`, `apellido`, `identificacion`, `celular`, `email`, `fecha_ingreso`, `foto`) VALUES
(10, 1, 'ANDRES', 'PEREZ', 1000145874, 2147483647, 'ASSA@ASSA', '0000-00-00', ''),
(11, 1, 'claudia', 'Perez', 1002002003, 2147483647, 'Hola@Hola.com', '0000-00-00', ''),
(12, 1, 'asdasqw', 'weqw', 123321, 12321, 'Hola@Hola.com', '2016-12-07', ''),
(13, 2, 'Farra Navidad', 'asda', 231, 12312, 'asdas@gmail.com', '2016-12-09', ''),
(14, 1, 'sad', 'q2ew', 123, 423, 'jamzgarcia@misena.edu.co', '2016-12-09', ''),
(15, 1, 'sad', 'q2ew', 123, 423, 'jamzgarcia@misena.edu.co', '2016-12-09', 'img/preview/images.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interior`
--

CREATE TABLE `interior` (
  `_id_interior` int(11) NOT NULL,
  `_id_bloque` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `interior`
--

INSERT INTO `interior` (`_id_interior`, `_id_bloque`, `nombre`, `descripcion`) VALUES
(9, 1, 'interior 1', 'Zona A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `_id_reserva` int(11) NOT NULL,
  `_id_formulario_pro` int(11) DEFAULT NULL,
  `concepto` varchar(15) DEFAULT NULL,
  `costo` int(25) DEFAULT NULL,
  `fecha_reserva` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`_id_reserva`, `_id_formulario_pro`, `concepto`, `costo`, `fecha_reserva`) VALUES
(1, NULL, 'Salon Comunal', 213212, '2016-12-01'),
(2, NULL, 'piscina', NULL, '2016-12-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `_id_user` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `contrasena` varchar(220) NOT NULL,
  `rol` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`_id_user`, `email`, `contrasena`, `rol`) VALUES
(4, 'jamzgarcia@misena.edu.co', '$2y$10$Tgua0Ca1CTFmFtc2f00Sq.8Y9tuC2sjoH197jD252zXu3gmJYbfbS', 'admin'),
(5, 'jaaj@yahoo.com', '$2y$10$JrkSlIsVYPyd/WjrX4jy8eLh0YEMF29dKrY31f2FO4B93BCmgWHwK', 'cliente'),
(6, 'jimmy@1234', '$2y$10$96gN3uzDepNyF5XJiZJJEuKh.w8GxmW9R.vRYgAV9QC8tj7e/F2Iq', 'cliente'),
(7, 'asdas@asdsa', '$2y$10$oAaJJlcu/lK2PJIZM3SiyekTaEjgdPZYoAc8R/ReT/8K3t2MflXke', 'cliente'),
(8, 'asdas@wqeqwe', '$2y$10$dGY4NATDBkiYOj.BAMJf2eiLX1NOiOWYY7W7iI8Tgzo2hOxTJTRYS', 'cliente'),
(9, 'coloso@facebook.com', '$2y$10$/LjKE8IVJhgk60AjWg.QouzPwD8cQr57edxZVkmt8Zw47OBEcDpKa', 'cliente'),
(10, 'guarda1@gmail.com', '$2y$10$3fBTLaM.nSfRNAzAQYKnFeFRNX.5LOd8ek48eQ4ZN/p2VolpzMa/u', 'cliente'),
(11, 'guarda2@gmail.com', '$2y$10$SBSy4.78pyF..MXJyFsyCOojnWOVYDlkgOc4Z/nMGCpil6rKyXURS', 'cliente'),
(12, 'ff@gmail.com', '$2y$10$ZU/TWjMj7SCx4na2I4cgQueuVysnmZFwq.7NC5p1DAMoeUtAZPTsq', 'cliente'),
(13, 'ffr@gmail.com', '$2y$10$zqrgW/wMoA0JdWxHtVbKqOHTlKae8AMgr5F0.fxU..IF3ehtXlWwC', 'guarda'),
(14, 'guarda3@gmail.com', '$2y$10$qGkn09Kul7BfHyhv/dJnGO/i7bMeQZ1p0F.bFN7raWlkhtsBw0tBy', 'guarda'),
(15, 'cliente1@user.com', '$2y$10$ELdsxdD87Xz0nMLtveX7qunJTqaHLtTPMGagf9mZxEbA73qLyTqQy', 'cliente'),
(16, 'asda@assa', '$2y$10$3OD1ZASr99fPBmF.l/TpXe41f/SlFCvhvWS1.7PbTtXSOeYOz9W..', 'user'),
(17, 'asda@assaasda', '$2y$10$tTKIFIctoQsKpoTB45YpwuZRX/C23z0PGnDNWl78vKaTOMN0GkwfS', 'user'),
(18, 'sanchezfe@hotmail.com', '$2y$10$MFkJm/g4LLg.WbmR91.ygOurXSbN8vtAC1sq3c13Z5X2gDIMa8Raq', 'user');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apartamento`
--
ALTER TABLE `apartamento`
  ADD PRIMARY KEY (`_id_apartamento`);

--
-- Indices de la tabla `bloque`
--
ALTER TABLE `bloque`
  ADD PRIMARY KEY (`_id_bloque`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`_id_cliente`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`_id_contacto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`_id_empleados`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`_id_eventos`);

--
-- Indices de la tabla `formulario_pagos`
--
ALTER TABLE `formulario_pagos`
  ADD PRIMARY KEY (`_id_formulario_pagos`);

--
-- Indices de la tabla `formulario_pro`
--
ALTER TABLE `formulario_pro`
  ADD PRIMARY KEY (`_id_formulario_pro`);

--
-- Indices de la tabla `formulario_res`
--
ALTER TABLE `formulario_res`
  ADD PRIMARY KEY (`_id_formulario_res`);

--
-- Indices de la tabla `formulario_vis`
--
ALTER TABLE `formulario_vis`
  ADD PRIMARY KEY (`_id_formulario_vis`);

--
-- Indices de la tabla `interior`
--
ALTER TABLE `interior`
  ADD PRIMARY KEY (`_id_interior`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`_id_reserva`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`_id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apartamento`
--
ALTER TABLE `apartamento`
  MODIFY `_id_apartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `bloque`
--
ALTER TABLE `bloque`
  MODIFY `_id_bloque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `_id_cliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `_id_contacto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `_id_empleados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `_id_eventos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `formulario_pagos`
--
ALTER TABLE `formulario_pagos`
  MODIFY `_id_formulario_pagos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `formulario_pro`
--
ALTER TABLE `formulario_pro`
  MODIFY `_id_formulario_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `formulario_res`
--
ALTER TABLE `formulario_res`
  MODIFY `_id_formulario_res` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `formulario_vis`
--
ALTER TABLE `formulario_vis`
  MODIFY `_id_formulario_vis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `interior`
--
ALTER TABLE `interior`
  MODIFY `_id_interior` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `_id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `_id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
