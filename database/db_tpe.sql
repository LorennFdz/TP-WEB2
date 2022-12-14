-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2022 a las 06:04:00
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tpe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `category` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id_category`, `category`) VALUES
(1, 'Celulares'),
(2, 'Computadora'),
(3, 'Accesorios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `brand` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `brand`, `model`, `description`, `id_category`) VALUES
(1, 'Apple', 'Iphone 13 Pro Max', 'Pantalla: Super Retina XDR con ProMotion, OLED de 6.7 pulgadas (diagonal) sin marco.\r\nResolución de 2778 x 1284 pixeles a 458 ppi.\r\nCámara: Sistema de cámaras Pro de 12 MP: teleobjetivo, gran angular y ultra gran angular.\r\n~Teleobjetivo: apertura de ƒ/2.8.\r\n~Gran angular: apertura de ƒ/1.5.\r\n~Ultra gran angular: apertura de ƒ/1.8 y ángulo de visión de 120°.\r\nCapacidad: 128 GB, 256 GB, 512 GB, 1 TB.\r\nTamaño y peso:\r\n~ Ancho: 78.1 mm.\r\n~ Alto: 160.8 mm.\r\n~ Grosor: 7.65 mm.\r\n~ Peso: 238 g.', 1),
(2, 'Xiaomi', 'Redmi Note 8 Pro', 'Cámara trasera de 64 MP y cuatro cámaras con IA.\r\nCámara frontal de 20 MP.\r\nProcesador gaming profesional Helio G90T.\r\nSistema operativo. MIUI 10.\r\nAlmacenamiento y RAM. 6 GB + 128 GB.\r\nTodo pantalla de 6,53” y notch de gota.\r\nCarga y batería de 4500 mAh', 1),
(3, 'Samsung', 'Galaxy S21', 'Pantalla: Dynamic AMOLED 2X de 6,2\" Ratio 20:9 FHD+ a 2.400 x 1.080 Refresco a 120Hz Gorilla Glass Victus HDR10+.\r\nProcesador: Exynos 2100 a 2,9GHz GPU Mali G78 MP14.\r\nAlmacenamiento: 8GB/128GB ~ 8GB/256GB.\r\nCámaras traseras:\r\n~ Principal: 12 megapíxeles f/1.8.\r\n~ Angular: 12 megapíxeles f/2.2.\r\n~ Zoom: 64 megapíxeles f/2.0 1.1X.\r\nCámara frontal:\r\n~ 10 megapíxeles f/2.2.\r\nBatería:\r\n~ 4.000 mAh.\r\n~ Carga rápida de 25W.\r\n~ Carga inalámbrica de 15W.\r\nDimensiones y peso:\r\n~ 151,7 x 71,2 x 7,9 milímetros.\r\n~ 171 gramos.', 1),
(4, 'Apple', 'MacBook Pro 13\"', 'Pantalla: 13.3 pulgadas (diagonal) retroiluminada por LED con tecnología IPS; resolución nativa de 2560 x 1600 a 227 pixeles por pulgada compatible con millones de colores.\r\nBatería y energía: ~ Hasta 20 horas de reproducción de video en la app Apple TV.\r\n~ Hasta 17 horas de navegación web inalámbrica.\r\n~ Batería de polímero de litio de 58.2 Wh.\r\nMemoria: 8 GB, configurable con 16 GB o 24 GB.\r\nAlmacenamiento: 256 GB. SSD de 256 GB, configurable con 512 GB, 1 TB o 2 TB.\r\nTeclado y trackpad: Magic Keyboard retroiluminado con: ~ 65 (EE.UU.) o 66 (ISO) teclas, incluidas 4 teclas de flecha en forma de “T” invertida.\r\n~ Touch Bar.\r\n~ Touch ID.\r\n~ Sensor de luz ambiental.', 2),
(5, 'Asus', 'Vivobook', 'Procesador: Intel Core i5.\r\nModelo: Intel i5 11300H.\r\nCaracterísticas: Intel Core i5 11300H (2.0 Ghz – 4.5 Ghz, 8Mb Caché, 4 Núcleos, 8 Subprocesos).\r\nMemoria Ram: 8 Gb.\r\nTipo de disco: SSD 256 Gb.\r\nPantalla: 14\".\r\nResolución pantalla: Oled, WQXGA (2880 x 1800p).\r\nTeclado Americano con teclado numérico – Retroiluminado.', 2),
(6, 'Lenovo', 'IdeaPad 5i', 'Procesador: Intel Core de 10ma generación.\r\nPantalla: 15.6” FHD táctil opcional con bordes estrechos para una visualización grandiosa.\r\nTapa de privacidad en la cámara web y lector de huellas digitales opcional.\r\nAltavoces Dolby Audio orientados al usuario.\r\nIncluye 1 puerto USB-C & soporta Rapid Charge.\r\nAlgunos puertos y características pueden ser opcionales.', 2),
(7, 'Funda', 'Apple Silicone Case', 'Protege de golpes, marcas y rayones. Ultra fina. Brinda protección sin perder la estética ni aumentar el volumen del celular.\r\nCalce perfecto y exterior antideslizante. Sensación única al contacto con la mano.\r\nInterior de microfibra suave con acceso a todos los puertos y funciones del equipo con la funda colocada.\r\nAdaptable a:\r\n~ Iphone 13 Pro Max.\r\n~ Iphone 13.\r\n~ Iphone 11 Pro Max.\r\n~ Iphone 11.\r\n~ Iphone 8 Plus.\r\n~ Iphone 8.\r\n', 3),
(8, 'Cargadores', 'Apple - Xiaomi - Samsung', 'Apple: Adaptador de corriente USB-C de 20 W.\r\nFrecuencia: Entre 50 y 60 Hz, fase única.\r\nTensión de línea: De 100 a 240 V CA.\r\nVoltaje de salida/corriente: 9 V CC/2,2 A.\r\nPotencia de salida mínima: 20 W.\r\nPuerto de salida: USB-C.\r\n\r\nXiaomi: Cargador de carga rápida 65W.\r\nSalida: 1x USB-C.\r\nCompatible con Iphones.\r\nPotencia de entrada: 100-240V, 50/60 Hz, 1.7A.\r\nPotencia de salida: 5V/3A, 9V/3A, 12V/3A, 15V/3A, 20V/3.25A.\r\nPotencia máxima de 65W.\r\n\r\nSamsung: Carga súper rápida de hasta 25 W con dispositivos compatibles.\r\nCarga rápida: conéctalo a cualquier toma de pared estándar a través del adaptador de CA incluido. El cargador súper rápido ofrece hasta 3 amperios para dar a tu teléfono energía a una velocidad mucho más rápida que tu cargador estándar de 1 A o 700 mA.\r\nFlexibilidad: se incluye un cable USB-C a USB-C desmontable en la caja, por lo que puedes cargar tu teléfono desde cualquier otra fuente de alimentación USB-C como tu computadora o una batería portátil. Utiliza el cable ', 3),
(9, 'Auriculares', 'AirPods - Xiaomi - Samsung', 'AirPods:\r\nDos micrófonos con tecnología beamforming.\r\nDos sensores ópticos.\r\nAcelerómetro con detección de movimiento.\r\nAcelerómetro con detección de voz.\r\n\r\nXiaomi:\r\nModelo: 3T Pro.\r\nFunciones: 3 modos de reducción de ruido ANC.\r\nConectores: USB tipo C.\r\nAlcance: Hasta 10 M.\r\nDuración de la batería: Hasta 24 horas (con estuche de carga), Hasta 6 horas (auricular).\r\n\r\nSamsung:\r\nCancelación activa de ruido: reduce el ruido no deseado con Galaxy Buds2 Pro.\r\nCalidad de sonido de alta fidelidad.\r\nAudio mejorado de 360 grados.\r\nTecnología de voz HD.', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '$2a$12$MvfvEx3WNZ8KV8cY7LVAKO.w6n0Mxb776aBm4Ldw81M5i50eKn/0W');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_category` (`id_category`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
