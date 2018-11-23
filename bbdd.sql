-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-11-2018 a las 14:35:48
-- Versión del servidor: 5.7.23
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bbdd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avion`
--

DROP TABLE IF EXISTS `avion`;
CREATE TABLE IF NOT EXISTS `avion` (
  `cod_avion` int(50) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `capacidad` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `capacidad_estanque` varchar(50) NOT NULL,
  `cod_empleado` int(50) NOT NULL,
  PRIMARY KEY (`cod_avion`)
) ENGINE=MyISAM AUTO_INCREMENT=321655 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `avion`
--

INSERT INTO `avion` (`cod_avion`, `descripcion`, `marca`, `capacidad`, `modelo`, `capacidad_estanque`, `cod_empleado`) VALUES
(321654, 'descr', 'yamaho', '200', 'yamaho', '200', 111),
(1, 'avion comercial o avion de linea', '1', '321011', 'Bombardier CRJ200', '321011', 101),
(2, 'avion comercial o avion de linea', '2', '246360', 'Tu-204', '246360', 131),
(3, 'avion comercial o avion de linea', '3', '295538', 'Tu-204', '295538', 21),
(4, 'avion comercial o avion de linea', '1', '270581', 'Tu-204', '270581', 119),
(5, 'avion comercial o avion de linea', '2', '240311', 'Bombardier CRJ200', '240311', 23),
(6, 'avion comercial o avion de linea', '2', '257659', 'Boeing 747', '257659', 4),
(7, 'avion comercial o avion de linea', '1', '305078', 'Boeing 747', '305078', 73),
(8, 'avion comercial o avion de linea', '1', '230384', 'Airbus A320', '230384', 78),
(9, 'avion comercial o avion de linea', '3', '248070', 'Bombardier CRJ200', '248070', 61),
(10, 'avion comercial o avion de linea', '1', '221576', 'Boeing 747', '221576', 9),
(11, 'avion comercial o avion de linea', '1', '339479', 'Boeing 747', '339479', 50),
(12, 'avion comercial o avion de linea', '2', '338671', 'Ilyushin Il-96', '338671', 133),
(13, 'avion comercial o avion de linea', '2', '237837', 'Tu-204', '237837', 9),
(14, 'avion comercial o avion de linea', '2', '342885', 'Bombardier CRJ200', '342885', 153),
(15, 'avion comercial o avion de linea', '3', '270683', 'Airbus A320', '270683', 167),
(16, 'avion comercial o avion de linea', '2', '269398', 'Boeing 747', '269398', 123),
(17, 'avion comercial o avion de linea', '2', '344853', 'Airbus A320', '344853', 91),
(18, 'avion comercial o avion de linea', '2', '333385', 'Bombardier CRJ200', '333385', 167),
(19, 'avion comercial o avion de linea', '2', '215010', 'Airbus A320', '215010', 27),
(20, 'avion comercial o avion de linea', '1', '218063', 'Bombardier CRJ200', '218063', 166);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega`
--

DROP TABLE IF EXISTS `bodega`;
CREATE TABLE IF NOT EXISTS `bodega` (
  `cod_bodega` int(50) NOT NULL,
  `Cod_comuna` varchar(50) NOT NULL,
  `cantidad_aviones` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
CREATE TABLE IF NOT EXISTS `ciudad` (
  `cod_ciudad` int(50) NOT NULL AUTO_INCREMENT,
  `cod_pais` int(50) NOT NULL,
  `nombre_ciudad` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_ciudad`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`cod_ciudad`, `cod_pais`, `nombre_ciudad`) VALUES
(1, 1, 'Santiago de Chile'),
(2, 1, 'Concepcion'),
(3, 1, 'Valdivia'),
(4, 1, 'La Serena'),
(5, 1, 'Temuco'),
(6, 2, 'Buenos aires'),
(7, 2, 'Rosario'),
(8, 3, 'Lima'),
(9, 3, 'Arequipa'),
(10, 4, 'La paz'),
(11, 4, 'Cochamba'),
(12, 5, 'Uruzgan'),
(13, 5, 'Herat'),
(14, 6, 'Santo domingo'),
(15, 6, 'Santiago de los caballeros'),
(16, 5, 'kandahar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

DROP TABLE IF EXISTS `comuna`;
CREATE TABLE IF NOT EXISTS `comuna` (
  `cod_comuna` int(50) NOT NULL AUTO_INCREMENT,
  `cod_provincia` int(50) NOT NULL,
  `nombre_comuna` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_comuna`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comuna`
--

INSERT INTO `comuna` (`cod_comuna`, `cod_provincia`, `nombre_comuna`) VALUES
(1, 1, 'Ñuñoa'),
(2, 1, 'La cisterna'),
(3, 1, 'Lo Barnechea'),
(4, 1, 'Recoleta'),
(5, 1, 'Recoleta'),
(6, 1, 'Lo prado'),
(7, 1, 'Cerrillos'),
(8, 1, 'Quilicura'),
(9, 1, 'Pudahuel'),
(10, 1, 'Puente Alto'),
(11, 1, 'La Reina'),
(12, 7, 'Buenos Aires'),
(13, 8, 'Lima'),
(14, 9, 'La paz'),
(15, 10, 'kandahar'),
(16, 11, 'Santiago de los caballeros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

DROP TABLE IF EXISTS `empleados`;
CREATE TABLE IF NOT EXISTS `empleados` (
  `rut_emp` varchar(50) NOT NULL,
  `profesion` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `cod_empleado` int(50) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cod_empleado`)
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`rut_emp`, `profesion`, `nombre`, `apellido`, `cod_empleado`) VALUES
('183586246', 'Auxiliar de Tierra', 'Timoteo', 'Martin', 1),
('183586247', 'Auxiliar de Tierra', 'Heliodoro', 'Torres', 2),
('183586248', 'administrativo', 'Simon', 'Lozano', 3),
('183586249', 'Piloto Tecnico', 'Celso', 'Bravo', 4),
('183586250', 'Azafata', 'Amber', 'GonzAlez', 5),
('183586251', 'Despachador de Vuelo', 'Alonso', 'Crespo', 6),
('183586252', 'Auxiliar de Tierra', 'Claudia', 'Santos', 7),
('183586253', 'administrativo', 'Claudio', 'Pastor', 8),
('183586254', 'Piloto Tecnico', 'Gertrudis', 'Vega', 9),
('183586255', 'Azafata', 'Tracy', 'Iglesias', 10),
('183586256', 'Auxiliar de Tierra', 'Justino', 'Montoro', 11),
('183586257', 'Despachador de Vuelo', 'Porfirio', 'Benitez', 12),
('183586258', 'Piloto Tecnico', 'Alejandra', 'Velasco', 13),
('183586259', 'Despachador de Vuelo', 'Bernardo', 'Ortiz', 14),
('183586260', 'Auxiliar de Tierra', 'Pancracio', 'Ramos', 15),
('183586261', 'administrativo', 'Ignacio', 'Santiago', 16),
('183586262', 'administrativo', 'Aurelia', 'FernAndez', 17),
('183586263', 'administrativo', 'Conrado', 'RomAn', 18),
('183586264', 'Despachador de Vuelo', 'Sonia', 'Cruz', 19),
('183586265', 'Azafata', 'Sheena', 'Ruiz', 20),
('183586266', 'Piloto Tecnico', 'Siro', 'Diez', 21),
('183586267', 'Azafata', 'Kristi', 'GOmez', 22),
('183586268', 'Piloto Tecnico', 'Arnaldo', 'Rubio', 23),
('183586269', 'administrativo', 'Octavio', 'Benitez', 24),
('183586270', 'Azafata', 'Donny', 'Guerrero', 25),
('183586271', 'administrativo', 'Ruperto', 'JimEnez', 26),
('183586272', 'Piloto Tecnico', 'Almudena', 'Sanz', 27),
('183586273', 'Piloto Tecnico', 'Priscila', 'Ortega', 28),
('183586274', 'administrativo', 'Cristian', 'Campos', 29),
('183586275', 'Azafata', 'Emilie', 'Carrasco', 30),
('183586276', 'Auxiliar de Tierra', 'Segismundo', 'Guerrero', 31),
('183586277', 'Auxiliar de Tierra', 'Gregorio', 'LeOn', 32),
('183586278', 'Azafata', 'Libby', 'Lorenzo', 33),
('183586279', 'Auxiliar de Tierra', 'Vidal', 'Ramirez', 34),
('183586280', 'administrativo', 'Cirino', 'Garcia', 35),
('183586281', 'Piloto Tecnico', 'Gabriel', 'Ortiz', 36),
('183586282', 'Azafata', 'Zettie', 'Pastor', 37),
('183586283', 'Despachador de Vuelo', 'Onesimo', 'PErez', 38),
('183586284', 'Despachador de Vuelo', 'Miqueas', 'Nieto', 39),
('183586285', 'Despachador de Vuelo', 'Blas', 'JimEnez', 40),
('183586286', 'administrativo', 'Mohamed', 'Santos', 41),
('183586287', 'Piloto Tecnico', 'Cosme', 'SAez', 42),
('183586288', 'Azafata', 'Kim', 'Castillo', 43),
('183586289', 'administrativo', 'Acacio', 'PErez', 44),
('183586290', 'Despachador de Vuelo', 'Lourdes', 'Romero', 45),
('183586291', 'administrativo', 'Guido', 'Gil', 46),
('183586292', 'administrativo', 'Ciro', 'Herrero', 47),
('183586293', 'Despachador de Vuelo', 'Angel', 'GOmez', 48),
('183586294', 'administrativo', 'Amaro', 'Gallardo', 49),
('183586295', 'Piloto Tecnico', 'Jesus', 'GonzAlez', 50),
('183586296', 'Despachador de Vuelo', 'Montserrat', 'Delgado', 51),
('183586297', 'Azafata', 'Marlene', 'Martin', 52),
('183586298', 'Azafata', 'Lucy', 'Diaz', 53),
('183586299', 'Auxiliar de Tierra', 'Miriam', 'FernAndez', 54),
('183586300', 'Piloto Tecnico', 'Jonathan', 'Montoro', 55),
('183586301', 'Azafata', 'Shaleen', 'FernAndez', 56),
('183586302', 'administrativo', 'Ana', 'Molina', 57),
('183586303', 'Azafata', 'Anthea', 'Velasco', 58),
('183586304', 'Despachador de Vuelo', 'Tito', 'Cambil', 59),
('183586305', 'Despachador de Vuelo', 'Ester', 'IbAnez', 60),
('183586306', 'Piloto Tecnico', 'Aaron', 'Prieto', 61),
('183586307', 'Azafata', 'Cristie', 'Gallego', 62),
('183586308', 'Piloto Tecnico', 'Esther', 'Moya', 63),
('183586309', 'Azafata', 'Carmen', 'Navarro', 64),
('183586310', 'Despachador de Vuelo', 'Oseas', 'Blesa', 65),
('183586311', 'Azafata', 'Kim', 'Gil', 66),
('183586312', 'administrativo', 'Salvador', 'Ortiz', 67),
('183586313', 'Piloto Tecnico', 'Jaime', 'Esteban', 68),
('183586314', 'administrativo', 'Victoria', 'MEndez', 69),
('183586315', 'administrativo', 'Sixto', 'Ortega', 70),
('183586316', 'Azafata', 'Sharon', 'Guerrero', 71),
('183586317', 'Azafata', 'Kerry-Anne', 'Ramos', 72),
('183586318', 'Piloto Tecnico', 'Romualdo', 'Cano', 73),
('183586319', 'administrativo', 'Albina', 'CortEs', 74),
('183586320', 'Azafata', 'Tamara', 'FernAndez', 75),
('183586321', 'Auxiliar de Tierra', 'Sandra', 'Vicente', 76),
('183586322', 'Azafata', 'Philipppa', 'Moya', 77),
('183586323', 'Piloto Tecnico', 'Carmen', 'Herrera', 78),
('183586324', 'Despachador de Vuelo', 'Julia', 'JimEnez', 79),
('183586325', 'Despachador de Vuelo', 'Borja', 'MArquez', 80),
('183586326', 'administrativo', 'Mateo', 'Nieto', 81),
('183586327', 'Despachador de Vuelo', 'Julian', 'Esteban', 82),
('183586328', 'Despachador de Vuelo', 'Julio', 'Hidalgo', 83),
('183586329', 'Despachador de Vuelo', 'Esteban', 'Montero', 84),
('183586330', 'Despachador de Vuelo', 'Roberto', 'Diaz', 85),
('183586331', 'Azafata', 'Suzel', 'Molina', 86),
('183586332', 'Azafata', 'Andrea', 'Blesa', 87),
('183586333', 'Despachador de Vuelo', 'Adela', 'Guerrero', 88),
('183586334', 'administrativo', 'Gloria', 'Dominguez', 89),
('183586335', 'Azafata', 'Donovan', 'Santiago', 90),
('183586336', 'Piloto Tecnico', 'Rosario', 'Hidalgo', 91),
('183586337', 'administrativo', 'Pedro', 'Velasco', 92),
('183586338', 'administrativo', 'Claudia', 'Cruz', 93),
('183586339', 'administrativo', 'Purificacion', 'Blanco', 94),
('183586340', 'Auxiliar de Tierra', 'Arcadio', 'Ruiz', 95),
('183586341', 'Auxiliar de Tierra', 'Severino', 'Dominguez', 96),
('183586342', 'Azafata', 'Bernice', 'Castillo', 97),
('183586343', 'administrativo', 'Emiliano', 'Santiago', 98),
('183586344', 'Azafata', 'Derek', 'Ramirez', 99),
('183586345', 'Auxiliar de Tierra', 'Isaias', 'Ortega', 100),
('183586346', 'Piloto Tecnico', 'Matilde', 'Marin', 101),
('183586347', 'administrativo', 'Odon', 'Ramirez', 102),
('183586348', 'Auxiliar de Tierra', 'Petronila', 'Cambil', 103),
('183586349', 'Piloto Tecnico', 'Cleofas', 'GOmez', 104),
('183586350', 'Piloto Tecnico', 'Mateo', 'Carrasco', 105),
('183586351', 'Despachador de Vuelo', 'Julio', 'Flores', 106),
('183586352', 'Azafata', 'Leilany', 'Cruz', 107),
('183586353', 'Azafata', 'Claire', 'Aguilar', 108),
('183586354', 'Auxiliar de Tierra', 'Eugenio', 'Ramos', 109),
('183586355', 'Auxiliar de Tierra', 'Arcadio', 'LOpez', 110),
('183586356', 'administrativo', 'Sofia', 'Munoz', 111),
('183586357', 'administrativo', 'Honorio', 'Vidal', 112),
('183586358', 'Azafata', 'Tabatha', 'Soto', 113),
('183586359', 'Azafata', 'Antonette', 'Crespo', 114),
('183586360', 'Auxiliar de Tierra', 'German', 'NUnez', 115),
('183586361', 'Azafata', 'Malorie', 'PErez', 116),
('183586362', 'Auxiliar de Tierra', 'Venancio', 'DurAn', 117),
('183586363', 'Azafata', 'Shona', 'Cabrera', 118),
('183586364', 'Piloto Tecnico', 'Marina', 'Lorenzo', 119),
('183586365', 'administrativo', 'Abelardo', 'Guerrero', 120),
('183586366', 'Auxiliar de Tierra', 'Matilde', 'Alonso', 121),
('183586367', 'administrativo', 'Tito', 'Herrero', 122),
('183586368', 'Piloto Tecnico', 'Esperanza', 'Vicente', 123),
('183586369', 'Auxiliar de Tierra', 'Alfonso', 'Parra', 124),
('183586370', 'Azafata', 'Kelsey', 'Castro', 125),
('183586371', 'administrativo', 'Carolina', 'HernAndez', 126),
('183586372', 'Auxiliar de Tierra', 'Poncio', 'Guerrero', 127),
('183586373', 'Auxiliar de Tierra', 'Mauricio', 'Rey', 128),
('183586374', 'Azafata', 'Pauline', 'VAzquez', 129),
('183586375', 'Despachador de Vuelo', 'Aranzazu', 'Alonso', 130),
('183586376', 'Piloto Tecnico', 'Angeles', 'RomAn', 131),
('183586377', 'Auxiliar de Tierra', 'Antero', 'NUnez', 132),
('183586378', 'Piloto Tecnico', 'Benigno', 'SAez', 133),
('183586379', 'Auxiliar de Tierra', 'Lorenzo', 'MEndez', 134),
('183586380', 'Piloto Tecnico', 'Aureliano', 'Cabrera', 135),
('183586381', 'administrativo', 'Honorio', 'PErez', 136),
('183586382', 'Piloto Tecnico', 'Margarita', 'Santana', 137),
('183586383', 'Azafata', 'Melinda', 'Moreno', 138),
('183586384', 'Azafata', 'Alberte', 'NUnez', 139),
('183586385', 'administrativo', 'Amadeo', 'Ramos', 140),
('183586386', 'Azafata', 'Sylvia', 'HernAndez', 141),
('183586387', 'administrativo', 'Cirilo', 'Velasco', 142),
('183586388', 'Despachador de Vuelo', 'Concepcion', 'GutiErrez', 143),
('183586389', 'administrativo', 'Homero', 'Campos', 144),
('183586390', 'Auxiliar de Tierra', 'Cristobal', 'Ortega', 145),
('183586391', 'Auxiliar de Tierra', 'Benito', 'Morales', 146),
('183586392', 'administrativo', 'Salome', 'Santana', 147),
('183586393', 'administrativo', 'Esther', 'Arias', 148),
('183586394', 'administrativo', 'Bernarda', 'Vargas', 149),
('183586395', 'administrativo', 'Nemesio', 'Parra', 150),
('183586396', 'Auxiliar de Tierra', 'Aurora', 'Blanco', 151),
('183586397', 'Piloto Tecnico', 'Oscar', 'Fuentes', 152),
('183586398', 'Piloto Tecnico', 'Arcadio', 'Crespo', 153),
('183586399', 'Auxiliar de Tierra', 'Isidro', 'PErez', 154),
('183586400', 'Azafata', 'Rachael', 'Esteban', 155),
('183586401', 'administrativo', 'Feliciano', 'Delgado', 156),
('183586402', 'administrativo', 'Bruno', 'Prieto', 157),
('183586403', 'administrativo', 'Beltran', 'Lozano', 158),
('183586404', 'Despachador de Vuelo', 'Adon', 'Serrano', 159),
('183586405', 'administrativo', 'Patricia', 'Velasco', 160),
('183586406', 'Piloto Tecnico', 'Julian', 'Rubio', 161),
('183586407', 'Azafata', 'Colette', 'JimEnez', 162),
('183586408', 'Auxiliar de Tierra', 'Absalon', 'Serrano', 163),
('183586409', 'administrativo', 'Lucas', 'Soler', 164),
('183586410', 'Azafata', 'Mia', 'Ramos', 165),
('183586411', 'Piloto Tecnico', 'Baltasar', 'Pascual', 166),
('183586412', 'Piloto Tecnico', 'Oscar', 'Ramirez', 167),
('183586413', 'Piloto Tecnico', 'Jacobo', 'Campos', 168);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_vuelo`
--

DROP TABLE IF EXISTS `estado_vuelo`;
CREATE TABLE IF NOT EXISTS `estado_vuelo` (
  `estado_vuelo` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

DROP TABLE IF EXISTS `marca`;
CREATE TABLE IF NOT EXISTS `marca` (
  `id_marca` int(50) NOT NULL AUTO_INCREMENT,
  `nombre_marca` varchar(50) NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `nombre_marca`) VALUES
(1, 'Delta'),
(2, 'British Airways'),
(3, 'US Airways');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

DROP TABLE IF EXISTS `pais`;
CREATE TABLE IF NOT EXISTS `pais` (
  `cod_pais` int(50) NOT NULL AUTO_INCREMENT,
  `nombre_pais` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_pais`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`cod_pais`, `nombre_pais`) VALUES
(1, 'Chile'),
(2, 'Argentina'),
(3, 'Peru'),
(4, 'Bolivia'),
(5, 'Afganistan'),
(6, 'Republica dominicana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajes`
--

DROP TABLE IF EXISTS `pasajes`;
CREATE TABLE IF NOT EXISTS `pasajes` (
  `cod_pasaje` int(50) NOT NULL AUTO_INCREMENT,
  `rut_pasajero` varchar(50) NOT NULL,
  `cod_vuelo` int(50) NOT NULL,
  `numero_asiento` varchar(50) NOT NULL,
  `tipo_pasaje` varchar(50) NOT NULL,
  `hora_salida` varchar(50) NOT NULL,
  `hora_llegada` varchar(50) NOT NULL,
  `precio` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_pasaje`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE IF NOT EXISTS `personas` (
  `rut` varchar(255) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `cod_comuna` int(50) NOT NULL,
  PRIMARY KEY (`rut`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`rut`, `nombre`, `mail`, `telefono`, `cod_comuna`) VALUES
('183586246', 'Celia', 'CeliaIbAnez@gmail.com', '956321478', 12),
('183586247', 'Grace', 'GraceCruz@gmail.com', '956321479', 8),
('183586248', 'Caitlin', 'CaitlinLOpez@gmail.com', '956321480', 1),
('183586249', 'Anthea', 'AntheaGutiErrez@gmail.com', '956321481', 5),
('183586250', 'Sandy', 'SandyFernAndez@gmail.com', '956321482', 10),
('183586251', 'Mary', 'MaryHerrero@gmail.com', '956321483', 4),
('183586252', 'Jeremias', 'JeremiasDurAn@gmail.com', '956321484', 3),
('183586253', 'Nadine', 'NadineMarin@gmail.com', '956321485', 7),
('183586254', 'Celia', 'CeliaRubio@gmail.com', '956321486', 3),
('183586255', 'Isabel', 'IsabelSantos@gmail.com', '956321487', 16),
('183586256', 'Carena', 'CarenaArias@gmail.com', '956321488', 14),
('183586257', 'Susie', 'SusieCastro@gmail.com', '956321489', 10),
('183586258', 'Clara', 'ClaraOrtega@gmail.com', '956321490', 6),
('183586259', 'Rebeca', 'RebecaVega@gmail.com', '956321491', 1),
('183586260', 'Daciano', 'DacianoNieto@gmail.com', '956321492', 16),
('183586261', 'Emilio', 'EmilioGallardo@gmail.com', '956321493', 1),
('183586262', 'Magdalena', 'MagdalenaHerrera@gmail.com', '956321494', 2),
('183586263', 'Leandro', 'LeandroMontoro@gmail.com', '956321495', 14),
('183586264', 'Albina', 'AlbinaMarin@gmail.com', '956321496', 14),
('183586265', 'Ireneo', 'IreneoGutiErrez@gmail.com', '956321497', 12),
('183586266', 'Wendy', 'WendyCortEs@gmail.com', '956321498', 5),
('183586267', 'Nicodemo', 'NicodemoPastor@gmail.com', '956321499', 2),
('183586268', 'Abel', 'AbelDurAn@gmail.com', '956321500', 5),
('183586269', 'Francisca', 'FranciscaJimEnez@gmail.com', '956321501', 11),
('183586270', 'Ayleen', 'AyleenNieto@gmail.com', '956321502', 9),
('183586271', 'Alba', 'AlbaFlores@gmail.com', '956321503', 11),
('183586272', 'Dan', 'DanBlesa@gmail.com', '956321504', 7),
('183586273', 'Britanny', 'BritannyJimEnez@gmail.com', '956321505', 6),
('183586274', 'Maximiliano', 'MaximilianoRey@gmail.com', '956321506', 13),
('183586275', 'Damaso', 'DamasoBlesa@gmail.com', '956321507', 5),
('183586276', 'Maria', 'MariaAlonso@gmail.com', '956321508', 5),
('183586277', 'Norberto', 'NorbertoMArquez@gmail.com', '956321509', 14),
('183586278', 'Casimiro', 'CasimiroLozano@gmail.com', '956321510', 2),
('183586279', 'Bridget', 'BridgetSantos@gmail.com', '956321511', 7),
('183586280', 'Mathis', 'MathisBravo@gmail.com', '956321512', 1),
('183586281', 'Shirley', 'ShirleyMoya@gmail.com', '956321513', 7),
('183586282', 'Maureen', 'MaureenMArquez@gmail.com', '956321514', 3),
('183586283', 'Natasha', 'NatashaRamirez@gmail.com', '956321515', 8),
('183586284', 'Irene', 'IreneCastillo@gmail.com', '956321516', 1),
('183586285', 'Manuela', 'ManuelaMontoro@gmail.com', '956321517', 12),
('183586286', 'Natalina', 'NatalinaSantiago@gmail.com', '956321518', 5),
('183586287', 'Baldomero', 'BaldomeroOrtega@gmail.com', '956321519', 8),
('183586288', 'Lysange', 'LysangeVega@gmail.com', '956321520', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

DROP TABLE IF EXISTS `provincia`;
CREATE TABLE IF NOT EXISTS `provincia` (
  `cod_provincia` int(50) NOT NULL AUTO_INCREMENT,
  `cod_ciudad` int(50) NOT NULL,
  `nombre_provincia` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_provincia`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`cod_provincia`, `cod_ciudad`, `nombre_provincia`) VALUES
(1, 1, 'Provincia de Santiago'),
(2, 1, 'Chacabuco'),
(3, 1, 'cordillera'),
(4, 1, 'maipo'),
(5, 1, 'Melipilla'),
(6, 1, 'Talagante'),
(7, 2, 'Buenos Aires'),
(8, 8, 'Lima'),
(9, 10, 'La paz'),
(10, 17, 'kandahar'),
(11, 6, 'Santiago de los caballeros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajan`
--

DROP TABLE IF EXISTS `viajan`;
CREATE TABLE IF NOT EXISTS `viajan` (
  `rut_persona` varchar(50) NOT NULL,
  `cod_pasaje` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

DROP TABLE IF EXISTS `vuelos`;
CREATE TABLE IF NOT EXISTS `vuelos` (
  `cod_vuelo` int(50) NOT NULL AUTO_INCREMENT,
  `cod_comuna` int(50) NOT NULL,
  `origen` varchar(50) NOT NULL,
  `estado_vuelo` varchar(50) NOT NULL,
  `cod_avion` int(50) NOT NULL,
  PRIMARY KEY (`cod_vuelo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
