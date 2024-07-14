INSERT INTO Alumnos (apellido, nombre, fecha_nac, direccion, telefono, email) VALUES
('Perez', 'Juan', '1996-06-10', 'Calle Falsa 123', '123456789', 'juan.perez@example.com'),
('Gonzalez', 'Maria', '1999-03-20', 'Avenida Siempre Viva 742', '987654321', 'maria.gonzalez@example.co'),
('Lopez', 'Carlos', '1990-11-21', 'Calle Principal 456', '456123789', 'carlos.lopez@example.com'),
('Martinez', 'Ana', '1991-11-23', 'Calle Secundaria 789', '789123456', 'ana.martinez@example.com'),
('Fernandez', 'Lucia', '1995-05-04', 'Calle Tercera 321', '321654987', 'lucia.fernandez@example.c'),
('Sanchez', 'Diego', '2001-12-25', 'Calle Cuarta 654', '654987321', 'diego.sanchez@example.com')
('Jerez', 'Agustin', '1997-04-30', 'Padre Roque 182', '123456789', 'agus.jerez@mail.com');


INSERT INTO Cursos (nombre, nivel_habilidad, tipo_instrumento) VALUES
('Guitarra Principiante', 'Principiante', 'Guitarra'),
('Guitarra Intermedio', 'Intermedio', 'Guitarra'),
('Guitarra Avanzado', 'Avanzado', 'Guitarra'),
('Piano Principiante', 'Principiante', 'Piano'),
('Piano Intermedio', 'Intermedio', 'Piano'),
('Piano Avanzado', 'Avanzado', 'Piano'),
('Violín Principiante', 'Principiante', 'Violín'),
('Violín Intermedio', 'Intermedio', 'Violín'),
('Violín Avanzado', 'Avanzado', 'Violín');


INSERT INTO Inscripciones (fecha_insc, abono_insc, id_alumno, id_curso) VALUES
('2024-01-05', TRUE, 1, 1),
('2024-01-10', FALSE, 2, 2),
('2024-02-15', TRUE, 3, 3),
('2024-03-20', FALSE, 4, 4),
('2024-04-25', TRUE, 5, 5),
('2024-05-30', FALSE, 6, 6),
('2024-01-15', TRUE, 1, 2),
('2024-02-10', TRUE, 2, 3),
('2024-03-05', FALSE, 3, 1),
('2024-04-01', TRUE, 4, 6),
('2024-05-05', FALSE, 5, 4),
('2024-06-01', TRUE, 6, 9),
('2024-01-20', FALSE, 1, 5),
('2024-02-25', TRUE, 2, 7),
('2024-03-30', FALSE, 3, 8)
('2024-07-14', TRUE, 7, 1);