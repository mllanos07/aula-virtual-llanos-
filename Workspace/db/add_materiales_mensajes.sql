-- Tabla para materiales didácticos subidos por el profesor
CREATE TABLE IF NOT EXISTS Materiales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Cod_materia VARCHAR(25) NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    descripcion TEXT,
    archivo VARCHAR(255), -- nombre del archivo subido (opcional)
    enlace VARCHAR(255),  -- enlace externo (opcional)
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Cod_materia) REFERENCES Clases(Cod_materia)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tabla para mensajes de la clase (chat/foro)
CREATE TABLE IF NOT EXISTS Mensajes_clase (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Cod_materia VARCHAR(25) NOT NULL,
    autor_dni INT NOT NULL,
    autor_tipo ENUM('alumno','profesor') NOT NULL,
    mensaje TEXT NOT NULL,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Cod_materia) REFERENCES Clases(Cod_materia)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
