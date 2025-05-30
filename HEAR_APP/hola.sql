CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `nombre`, `usuario`, `pass`) VALUES
(1, 'Javier Paredes', 'admin', 'admin');

CREATE TABLE `tbl_campus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_campus`
--

INSERT INTO `tbl_campus` (`id`, `name`, `state`) VALUES
(1, 'Campus Ate', 'activo'),
(2, 'Campus Chepen', 'activo'),
(3, 'Campus Chiclayo', 'activo'),
(4, 'Campus Chimbote', 'activo'),
(5, 'Campus San Juan de Lurigancho', 'activo'),
(6, 'Campus Los Olivos', 'activo'),
(7, 'Campus Piura', 'activo'),
(8, 'Campus Tarapoto', 'activo'),
(9, 'Campus Trujillo', 'activo'),
(10, 'Campus Callao', 'activo'),
(11, 'Campus Huaraz', 'activo'),
(12, 'Campus Moyobamba', 'activo'),
(13, 'bbbbb', 'activo');


CREATE TABLE `tbl_class` (
  `id` int(11) NOT NULL,
  `name_class` varchar(255) DEFAULT NULL,
  `name_curso` varchar(255) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `recorded_content` longtext NOT NULL,
  `resumen` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_class`
--

INSERT INTO `tbl_class` (`id`, `name_class`, `name_curso`, `teacher_id`, `start_date`, `end_date`, `status`, `created_at`, `text`, `recorded_content`, `resumen`) VALUES
(2, 'Grafos', 'Sistemas Inteligentes', 9, '2024-05-15 22:09:23', '2024-05-24 22:09:23', 'activa', '2024-05-30 22:09:23', 'En primera instancia debemos entender que es un grafo. Un grafo es una composición de un conjunto de objetos conocidos como nodos que se relacionan con otros nodos a En primera instancia debemos entender que es un grafo. Un grafo es una composición de un conjunto de objetos conocidos como nodos que se relacionan con otros nodos a través de un conjunto de conexiones conocidas como aristas. Los grafos permiten estudiar las relaciones que existen entre unidades que interactúan con otras. Podemos representar diversas situaciones o elementos con grafos. Estos son extraordinariamente útiles en situaciones complejas, es por esto, que es común conseguir la implementación de análisis de grafos en estudios de ciencias exactas, ciencias sociales y en aplicaciones informáticas. Veamos a continuación los tipos de grafos que podemos implementar. Conceptos importantes y tipos de grafos Existen definiciones que debemos conocer a profundidad, para entender las amplias posibilidades que nos brindan los grafos para estudiar relaciones entre diferentes tipos de información. En primer lugar debemos conocer es la composición exacta de un grafo y algunos conceptos asociados. Un grafo en su totalidad es un par ordenado compuesto por vértices (v) y aristas (e); donde en la gran mayoría de los casos los vértices son de cuantificación finita. El número de vértices que componen al grafo, son las que conocemos como orden. Existe también el concepto de grado que se corresponde al número de arcos al que pertenecen de forma externa y en cuanto a las aristas también conseguimos el concepto de bucle que no es más que una arista relacionada de diversas formas con el mismo nodo. Teniendo claros estos conceptos, podemos empezar a profundizar en las definiciones de tipos de grafos. Existen diversos tipos de grafos, analizaremos en esta oportunidad los esquemas de grafos más conocidos como son los grafos dirigidos, no dirigidos y etiquetados.', 'En primera instancia debemos entender que es un grafo. Un grafo es una composición de un conjunto de objetos conocidos como nodos que se relacionan con otros nodos a En primera instancia debemos entender que es un grafo. Un grafo es una composición de un conjunto de objetos conocidos como nodos que se relacionan con otros nodos a través de un conjunto de conexiones conocidas como aristas. Los grafos permiten estudiar las relaciones que existen entre unidades que interactúan con otras. Podemos representar diversas situaciones o elementos con grafos. Estos son extraordinariamente útiles en situaciones complejas, es por esto, que es común conseguir la implementación de análisis de grafos en estudios de ciencias exactas, ciencias sociales y en aplicaciones informáticas. Veamos a continuación los tipos de grafos que podemos implementar. Conceptos importantes y tipos de grafos Existen definiciones que debemos conocer a profundidad, para entender las amplias posibilidades que nos brindan los grafos para estudiar relaciones entre diferentes tipos de información. En primer lugar debemos conocer es la composición exacta de un grafo y algunos conceptos asociados. Un grafo en su totalidad es un par ordenado compuesto por vértices (v) y aristas (e); donde en la gran mayoría de los casos los vértices son de cuantificación finita. El número de vértices que componen al grafo, son las que conocemos como orden. Existe también el concepto de grado que se corresponde al número de arcos al que pertenecen de forma externa y en cuanto a las aristas también conseguimos el concepto de bucle que no es más que una arista relacionada de diversas formas con el mismo nodo. Teniendo claros estos conceptos, podemos empezar a profundizar en las definiciones de tipos de grafos. Existen diversos tipos de grafos, analizaremos en esta oportunidad los esquemas de grafos más conocidos como son los grafos dirigidos, no dirigidos y etiquetados.', 'En primera instancia debemos entender que es un grafo. Veamos a continuación los tipos de grafos que podemos implementar. Conceptos importantes y tipos de grafos Existen definiciones que debemos conocer a profundidad, para entender las amplias posibilidades que nos brindan los grafos para estudiar relaciones entre diferentes tipos de información. En primer lugar debemos conocer es la composición exacta de un grafo y algunos conceptos asociados. Un grafo en su totalidad es un par ordenado compuesto por vértices (v) y aristas (e); donde en la gran mayoría de los casos los vértices son de cuantificación finita.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_class_students`
--

CREATE TABLE `tbl_class_students` (
  `id` int(11) NOT NULL,
  `students_d` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_class_students`
--

INSERT INTO `tbl_class_students` (`id`, `students_d`, `class_id`) VALUES
(2, 10, 2);


CREATE TABLE `tbl_cursos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_cursos`
--

INSERT INTO `tbl_cursos` (`id`, `nombre`, `estado`) VALUES
(4, 'Matematicas', 'activo'),
(5, 'Lenguaje de Programacion', 'activo');



CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `name`) VALUES
(1, 'DOCENTE'),
(2, 'ESTUDIANTE');


CREATE TABLE `tbl_temas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_temas`
--

INSERT INTO `tbl_temas` (`id`, `nombre`, `curso_id`) VALUES
(15, 'Actividades Integradoras 1', 4),
(16, 'Actividades Integradoras 2', 4),
(17, 'Python', 5),
(18, 'JavaScript', 5),
(19, 'Php', 5);


CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `civil_status` varchar(50) DEFAULT NULL,
  `institutional_mail` varchar(255) DEFAULT NULL,
  `personal_mail` varchar(255) DEFAULT NULL,
  `campus_id` int(11) DEFAULT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `code`, `gender`, `civil_status`, `institutional_mail`, `personal_mail`, `campus_id`, `rol_id`, `phone`, `password`, `state`) VALUES
(9, 'Ana Lopez', '7002483033', 'Femenino', 'SOLTERO', 'alopez@ucvvirtual.edu.pe', 'ana.lopez@gmail.com', 1, 1, '+519745897162', 'password1', 'activo'),
(10, 'Carlos Ramos', '7002483034', 'Masculino', 'CASADO', 'cramos@ucvvirtual.edu.pe', 'carlos.ramos@gmail.com', 2, 2, '+519745897163', 'password2', 'activo'),
(11, 'Diana Morales', '7002483035', 'Femenino', 'SOLTERO', 'dmorales@ucvvirtual.edu.pe', 'diana.morales@gmail.com', 3, 1, '+519745897164', 'password3', 'activo'),
(12, 'Eduardo Perez', '7002483036', 'Masculino', 'DIVORCIADO', 'eperez@ucvvirtual.edu.pe', 'eduardo.perez@gmail.com', 4, 2, '+519745897165', 'password4', 'activo'),
(13, 'Fabiola Torres', '7002483037', 'Femenino', 'CASADO', 'ftorres@ucvvirtual.edu.pe', 'fabiola.torres@gmail.com', 5, 1, '+519745897166', 'password5', 'activo'),
(14, 'Gabriel Sanchez', '7002483038', 'Masculino', 'SOLTERO', 'gsanchez@ucvvirtual.edu.pe', 'gabriel.sanchez@gmail.com', 6, 2, '+519745897167', 'password6', 'activo'),
(15, 'Hilda Gutierrez', '7002483039', 'Femenino', 'VIUDO', 'hgutierrez@ucvvirtual.edu.pe', 'hilda.gutierrez@gmail.com', 7, 1, '+519745897168', 'password7', 'activo'),
(16, 'Ignacio Vargas', '7002483040', 'Masculino', 'SOLTERO', 'ivargas@ucvvirtual.edu.pe', 'ignacio.vargas@gmail.com', 8, 2, '+519745897169', 'password8', 'activo'),
(17, 'Juana Rios', '7002483041', 'Femenino', 'CASADO', 'jrios@ucvvirtual.edu.pe', 'juana.rios@gmail.com', 9, 1, '+519745897170', 'password9', 'activo'),
(18, 'Kevin Huaman', '7002483042', 'Masculino', 'SOLTERO', 'khuaman@ucvvirtual.edu.pe', 'kevin.huaman@gmail.com', 10, 2, '+519745897171', 'password10', 'activo'),
(19, 'Laura Medina', '7002483043', 'Femenino', 'DIVORCIADO', 'lmedina@ucvvirtual.edu.pe', 'laura.medina@gmail.com', 11, 1, '+519745897172', 'password11', 'activo'),
(20, 'Miguel Salas', '7002483044', 'Masculino', 'CASADO', 'msalas@ucvvirtual.edu.pe', 'miguel.salas@gmail.com', 12, 2, '+519745897173', 'password12', 'activo'),
(21, 'Natalia Pacheco', '7002483045', 'Femenino', 'SOLTERO', 'npacheco@ucvvirtual.edu.pe', 'natalia.pacheco@gmail.com', 1, 1, '+519745897174', 'password13', 'activo'),
(22, 'Oscar Mendez', '7002483046', 'Masculino', 'SOLTERO', 'omendez@ucvvirtual.edu.pe', 'oscar.mendez@gmail.com', 2, 2, '+519745897175', 'password14', 'activo'),
(23, 'Patricia Quispe', '7002483047', 'Femenino', 'CASADO', 'pquispe@ucvvirtual.edu.pe', 'patricia.quispe@gmail.com', 3, 1, '+519745897176', 'password15', 'activo'),
(24, 'Rafael Castro', '7002483048', 'Masculino', 'DIVORCIADO', 'rcastro@ucvvirtual.edu.pe', 'rafael.castro@gmail.com', 4, 2, '+519745897177', 'password16', 'activo'),
(25, 'Silvia Herrera', '7002483049', 'Femenino', 'SOLTERO', 'sherrera@ucvvirtual.edu.pe', 'silvia.herrera@gmail.com', 5, 1, '+519745897178', 'password17', 'activo'),
(26, 'Tomas Nunez', '7002483050', 'Masculino', 'CASADO', 'tnunez@ucvvirtual.edu.pe', 'tomas.nunez@gmail.com', 6, 2, '+519745897179', 'password18', 'activo'),
(27, 'Ursula Perez', '7002483051', 'Femenino', 'VIUDO', 'uperez@ucvvirtual.edu.pe', 'ursula.perez@gmail.com', 7, 1, '+519745897180', 'password19', 'activo'),
(28, 'Victor Ruiz', '7002483052', 'Masculino', 'SOLTERO', 'vruiz@ucvvirtual.edu.pe', 'victor.ruiz@gmail.com', 8, 2, '+519745897181', 'password20', 'activo');


ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tbl_campus`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `tbl_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_class_teacher` (`teacher_id`);

ALTER TABLE `tbl_class_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_class_id` (`class_id`),
  ADD KEY `fk_class_students` (`students_d`);


ALTER TABLE `tbl_cursos`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tbl_temas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_temas_cursos` (`curso_id`);


ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_campus` (`campus_id`),
  ADD KEY `fk_user_role` (`rol_id`);


ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `tbl_campus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


ALTER TABLE `tbl_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_class_students`
--
ALTER TABLE `tbl_class_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;


ALTER TABLE `tbl_cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_temas`
--
ALTER TABLE `tbl_temas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;


ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--

ALTER TABLE `tbl_class`
  ADD CONSTRAINT `fk_class_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_user` (`id`);


ALTER TABLE `tbl_class_students`
  ADD CONSTRAINT `fk_class_id` FOREIGN KEY (`class_id`) REFERENCES `tbl_class` (`id`),
  ADD CONSTRAINT `fk_class_students` FOREIGN KEY (`students_d`) REFERENCES `tbl_user` (`id`);


ALTER TABLE `tbl_temas`
  ADD CONSTRAINT `fk_temas_cursos` FOREIGN KEY (`curso_id`) REFERENCES `tbl_cursos` (`id`);


ALTER TABLE `tbl_user`
  ADD CONSTRAINT `fk_user_campus` FOREIGN KEY (`campus_id`) REFERENCES `tbl_campus` (`id`),
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`rol_id`) REFERENCES `tbl_role` (`id`);
COMMIT;

