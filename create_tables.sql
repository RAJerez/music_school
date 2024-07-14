CREATE TABLE Alumnos (
    id_alumno INT AUTO_INCREMENT PRIMARY KEY,
    apellido VARCHAR(35),
    nombre VARCHAR(35),
    fecha_nac DATE,
    direccion VARCHAR(35),
    telefono VARCHAR(15),
    email VARCHAR(25)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(35),
    nivel_habilidad VARCHAR(15),
    tipo_instrumento VARCHAR(35)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Inscripciones (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    fecha_insc DATE,
    abono_insc BOOLEAN,
    id_alumno INT,
    id_curso INT,
    FOREIGN KEY (id_alumno) REFERENCES Alumnos(id_alumno),
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;