CREATE TABLE socios(
	id_socio INT PRIMARY KEY,
	nombres varchar(50) NOT NULL,
	apellidos varchar(50) NOT NULL,
	edad INT NOT NULL, 
	fecha_registro varchar(10) NOT NULL,
	activo boolean NOT NULL
);

INSERT INTO socios VALUES(1, 'Carlos', 'López', 26, '2026-01-15', true);
INSERT INTO socios VALUES(2, 'Ana', 'Pérez', 16, '2026-02-10', true);
INSERT INTO socios VALUES(3, 'Juan', 'Jarrin', 20, '2026-02-20', false);
INSERT INTO socios VALUES(4, 'Maria', 'Chavez', 19, '2026-03.13', false);
INSERT INTO socios VALUES(5, 'Jones', 'Herrera', 23, '2026-04-01', true);

SELECT * FROM socios;

SELECT nombres, apellidos, edad FROM socios WHERE activo = true AND edad > 18;

SELECT * FROM socios WHERE fecha_registro > '2026-02-01';

SELECT * FROM socios ORDER BY edad DESC;

ALTER TABLE socios
ADD COLUMN email varchar(100);

UPDATE socios SET email = 'J.herrera@gmail.com' WHERE id_socio = 5;