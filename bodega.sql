-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-01-2022 a las 00:23:18
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

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
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add bodega', 7, 'add_bodega'),
(26, 'Can change bodega', 7, 'change_bodega'),
(27, 'Can delete bodega', 7, 'delete_bodega'),
(28, 'Can view bodega', 7, 'view_bodega'),
(29, 'Can add categoria', 8, 'add_categoria'),
(30, 'Can change categoria', 8, 'change_categoria'),
(31, 'Can delete categoria', 8, 'delete_categoria'),
(32, 'Can view categoria', 8, 'view_categoria'),
(33, 'Can add producto', 9, 'add_producto'),
(34, 'Can change producto', 9, 'change_producto'),
(35, 'Can delete producto', 9, 'delete_producto'),
(36, 'Can view producto', 9, 'view_producto'),
(37, 'Can add proveedor', 10, 'add_proveedor'),
(38, 'Can change proveedor', 10, 'change_proveedor'),
(39, 'Can delete proveedor', 10, 'delete_proveedor'),
(40, 'Can view proveedor', 10, 'view_proveedor'),
(41, 'Can add usuario', 11, 'add_usuario'),
(42, 'Can change usuario', 11, 'change_usuario'),
(43, 'Can delete usuario', 11, 'delete_usuario'),
(44, 'Can view usuario', 11, 'view_usuario'),
(45, 'Can add retiro', 12, 'add_retiro'),
(46, 'Can change retiro', 12, 'change_retiro'),
(47, 'Can delete retiro', 12, 'delete_retiro'),
(48, 'Can view retiro', 12, 'view_retiro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controlbodega_bodega`
--

CREATE TABLE `controlbodega_bodega` (
  `id` bigint(20) NOT NULL,
  `nombreBodega` varchar(100) NOT NULL,
  `direccionBodega` varchar(200) NOT NULL,
  `telefonoBodega` varchar(200) NOT NULL,
  `encargadoBodega` varchar(50) NOT NULL,
  `creadoBodega` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controlbodega_categoria`
--

CREATE TABLE `controlbodega_categoria` (
  `id` bigint(20) NOT NULL,
  `nombreCategoria` varchar(50) NOT NULL,
  `creadoCategoria` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controlbodega_producto`
--

CREATE TABLE `controlbodega_producto` (
  `id` bigint(20) NOT NULL,
  `nombreProducto` varchar(150) NOT NULL,
  `nombreColor` varchar(20) NOT NULL,
  `nombreMedidas` varchar(40) NOT NULL,
  `nombreMarca` varchar(20) DEFAULT NULL,
  `nombreModelo` varchar(20) NOT NULL,
  `nombreSerial` varchar(20) NOT NULL,
  `stockProducto` int(11) NOT NULL,
  `precioProducto` int(11) NOT NULL,
  `fechaCompra` date NOT NULL,
  `creadoProducto` datetime(6) NOT NULL,
  `nombreBodega_id` bigint(20) DEFAULT NULL,
  `nombreCategoria_id` bigint(20) DEFAULT NULL,
  `proveedor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controlbodega_proveedor`
--

CREATE TABLE `controlbodega_proveedor` (
  `id` bigint(20) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `direccion` varchar(120) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controlbodega_retiro`
--

CREATE TABLE `controlbodega_retiro` (
  `id` bigint(20) NOT NULL,
  `stockRetiro` int(11) NOT NULL,
  `creadoRetiro` datetime(6) NOT NULL,
  `nombreProducto_id` bigint(20) DEFAULT NULL,
  `nombreUsuario_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controlbodega_usuario`
--

CREATE TABLE `controlbodega_usuario` (
  `id` bigint(20) NOT NULL,
  `nombreUsuario` varchar(50) NOT NULL,
  `cargoUsuario` varchar(20) NOT NULL,
  `creadoUsuario` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'controlBodega', 'bodega'),
(8, 'controlBodega', 'categoria'),
(9, 'controlBodega', 'producto'),
(10, 'controlBodega', 'proveedor'),
(12, 'controlBodega', 'retiro'),
(11, 'controlBodega', 'usuario'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-01-23 23:16:47.009161'),
(2, 'auth', '0001_initial', '2022-01-23 23:16:47.137837'),
(3, 'admin', '0001_initial', '2022-01-23 23:16:47.167051'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-01-23 23:16:47.173092'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-01-23 23:16:47.178079'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-01-23 23:16:47.199030'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-01-23 23:16:47.212993'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-01-23 23:16:47.221969'),
(9, 'auth', '0004_alter_user_username_opts', '2022-01-23 23:16:47.226956'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-01-23 23:16:47.239887'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-01-23 23:16:47.240885'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-01-23 23:16:47.246868'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-01-23 23:16:47.254578'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-01-23 23:16:47.263554'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-01-23 23:16:47.271533'),
(16, 'auth', '0011_update_proxy_permissions', '2022-01-23 23:16:47.277689'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-01-23 23:16:47.285230'),
(18, 'controlBodega', '0001_initial', '2022-01-23 23:16:47.375774'),
(19, 'sessions', '0001_initial', '2022-01-23 23:16:47.385747');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `controlbodega_bodega`
--
ALTER TABLE `controlbodega_bodega`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `controlbodega_categoria`
--
ALTER TABLE `controlbodega_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `controlbodega_producto`
--
ALTER TABLE `controlbodega_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `controlBodega_produc_proveedor_id_155c7d44_fk_controlBo` (`proveedor_id`),
  ADD KEY `controlBodega_produc_nombreBodega_id_c34b6198_fk_controlBo` (`nombreBodega_id`),
  ADD KEY `controlBodega_produc_nombreCategoria_id_d5d47d51_fk_controlBo` (`nombreCategoria_id`);

--
-- Indices de la tabla `controlbodega_proveedor`
--
ALTER TABLE `controlbodega_proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `controlbodega_retiro`
--
ALTER TABLE `controlbodega_retiro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `controlBodega_retiro_nombreProducto_id_f631b0f4_fk_controlBo` (`nombreProducto_id`),
  ADD KEY `controlBodega_retiro_nombreUsuario_id_cc5ff2e3_fk_controlBo` (`nombreUsuario_id`);

--
-- Indices de la tabla `controlbodega_usuario`
--
ALTER TABLE `controlbodega_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `controlbodega_bodega`
--
ALTER TABLE `controlbodega_bodega`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `controlbodega_categoria`
--
ALTER TABLE `controlbodega_categoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `controlbodega_producto`
--
ALTER TABLE `controlbodega_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `controlbodega_proveedor`
--
ALTER TABLE `controlbodega_proveedor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `controlbodega_retiro`
--
ALTER TABLE `controlbodega_retiro`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `controlbodega_usuario`
--
ALTER TABLE `controlbodega_usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `controlbodega_producto`
--
ALTER TABLE `controlbodega_producto`
  ADD CONSTRAINT `controlBodega_produc_nombreBodega_id_c34b6198_fk_controlBo` FOREIGN KEY (`nombreBodega_id`) REFERENCES `controlbodega_bodega` (`id`),
  ADD CONSTRAINT `controlBodega_produc_nombreCategoria_id_d5d47d51_fk_controlBo` FOREIGN KEY (`nombreCategoria_id`) REFERENCES `controlbodega_categoria` (`id`),
  ADD CONSTRAINT `controlBodega_produc_proveedor_id_155c7d44_fk_controlBo` FOREIGN KEY (`proveedor_id`) REFERENCES `controlbodega_proveedor` (`id`);

--
-- Filtros para la tabla `controlbodega_retiro`
--
ALTER TABLE `controlbodega_retiro`
  ADD CONSTRAINT `controlBodega_retiro_nombreProducto_id_f631b0f4_fk_controlBo` FOREIGN KEY (`nombreProducto_id`) REFERENCES `controlbodega_producto` (`id`),
  ADD CONSTRAINT `controlBodega_retiro_nombreUsuario_id_cc5ff2e3_fk_controlBo` FOREIGN KEY (`nombreUsuario_id`) REFERENCES `controlbodega_usuario` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
