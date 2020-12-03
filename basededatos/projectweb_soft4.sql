CREATE DATABASE projectweb_soft4;
CREATE TABLE citas (
idcita INT NOT NULL AUTO_INCREMENT,
idpaciente VARCHAR (30) NOT NULL,
fecha DATE DEFAULT(CURDATE()), 
fechaconsulta VARCHAR(30),
idespecialidad INT NOT NULL,
idmedico VARCHAR(30) NOT NULL,
observacion VARCHAR(60),
idusuario INT NOT NULL, PRIMARY KEY (idcita));

INSERT INTO `citas` (`idcita`, `idpaciente`, `fechaconsulta`, `idespecialidad`, `idmedico`, `observacion`, `idusuario`) VALUES
(1, '45', '23/10/2020', 23, '4-567-333', 'adfadsfasdadsfads', 1);

SELECT * FROM citas;
 
CREATE TABLE login (cedula VARCHAR(20) NOT NULL, 
PASSWORD VARCHAR(20), PRIMARY KEY (cedula));

 
CREATE TABLE usuarios_especialidades (id INT NOT NULL AUTO_INCREMENT,
idespecialidad INT DEFAULT 0,
idusuario INT DEFAULT 0, PRIMARY KEY(id));

INSERT INTO `usuarios_especialidades` (`id`, `idespecialidad`, `idusuario`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 5, 5),
(123, 34223, 3231);

SELECT * FROM usuarios_especialidades;
 
CREATE TABLE consulta_signos_vitales (id INT NOT NULL AUTO_INCREMENT,
idconsulta INT DEFAULT 0, 
idsigno_vital INT DEFAULT 0,
valor VARCHAR(25), PRIMARY KEY (id));
 
CREATE TABLE consulta_sintomas(id INT NOT NULL AUTO_INCREMENT, 
idconsulta INT DEFAULT 0,
idsintoma INT DEFAULT 0, 
observacion VARCHAR(40), PRIMARY KEY(id));
 
CREATE TABLE consulta (idconsulta INT NOT NULL AUTO_INCREMENT, 
paciente VARCHAR(50) NOT NULL, 
fecha DATE DEFAULT(curdate()), 
medico VARCHAR(45) NOT NULL,
observacion VARCHAR(60), PRIMARY KEY (idconsulta));
 
CREATE TABLE recetas (id INT NOT NULL auto_increment, 
descripcion VARCHAR (50) NOT NULL, PRIMARY KEY(id));

CREATE TABLE pacientes (id INT NOT NULL auto_increment,
cedula VARCHAR(20) NOT NULL,
nombre VARCHAR(30) NOT NULL,
apellido VARCHAR(25) NOT NULL,
direccion VARCHAR(50),
email VARCHAR(70),
PASSWORD VARCHAR(25),
celular VARCHAR(25), PRIMARY KEY(id));

CREATE TABLE tipousuario (id INT NOT NULL auto_increment,
descripcion VARCHAR(40) NOT NULL, PRIMARY KEY(id));

CREATE TABLE especialidades (id INT NOT NULL auto_increment,
descripcion VARCHAR(50) NOT NULL, PRIMARY KEY(id));

CREATE TABLE usuarios (id INT NOT NULL auto_increment,
cedula VARCHAR(20) NOT NULL,
nombre VARCHAR(25) NOT NULL,
apellido VARCHAR(25) NOT NULL,
direccion VARCHAR(60),
email VARCHAR(50),
PASSWORD VARCHAR(25),
celular VARCHAR(25),
idtipousuario INT DEFAULT 0,
idestado INT DEFAULT 0, PRIMARY KEY(id));

CREATE TABLE consulta_recetas (id INT NOT NULL auto_increment,
idconsulta INT DEFAULT 0,
idrecetas INT DEFAULT 0,
otro VARCHAR(50), PRIMARY KEY(id));

CREATE TABLE consulta_diagnostico (id INT NOT NULL auto_increment,
idconsulta INT DEFAULT 0,
iddiagnostico INT DEFAULT 0,
observacion VARCHAR(50), primary key(id));

CREATE TABLE signos_vitales (id INT NOT NULL auto_increment,
descripcion VARCHAR(50) NOT NULL, PRIMARY KEY(id));

CREATE TABLE consulta_laboratorios (id INT NOT NULL auto_increment,
idconsulta INT DEFAULT 0,
idreceta INT DEFAULT 0,
otro VARCHAR(50), PRIMARY KEY(id));

CREATE TABLE laboratorios (id INT NOT NULL auto_increment,
descripcion VARCHAR(50) NOT NULL, PRIMARY KEY(id));

CREATE TABLE sintomas (id INT NOT NULL auto_increment,
descripcion VARCHAR(50) NOT NULL, PRIMARY KEY(id));

CREATE TABLE estados (id INT NOT NULL auto_increment,
descripcion VARCHAR(50) NOT NULL,
entidad INT DEFAULT 0, PRIMARY KEY(id));

CREATE TABLE diagnosticos (id INT NOT NULL auto_increment,
descripcion VARCHAR(50) NOT NULL, PRIMARY KEY(id));

CREATE USER PROYECTO IDENTIFIED BY "ADMIN";
GRANT ALL PRIVILEGES ON *.* TO 'PROYECTO'@'%';

INSERT INTO `consulta` (`idconsulta`, `paciente`, `medico`, `observacion`) VALUES
(1, '45', 'Alberto', '---------');

SELECT * FROM consulta;

INSERT INTO `consulta_diagnostico` (`id`, `idconsulta`, `iddiagnostico`, `observacion`) VALUES
(1, 1, 3, 'adfadfa'),
(2, 1, 2, 'adfadsf');

SELECT * FROM consulta_diagnostico;

INSERT INTO `consulta_laboratorios` (`id`, `idconsulta`, `idreceta`, `otro`) VALUES
(1, 1, 1, 'adfadf');

SELECT * FROM consulta_laboratorios;

INSERT INTO `consulta_recetas` (`id`, `idconsulta`, `idrecetas`, `otro`) VALUES
(1, 1, 1, 'Dos Cada 4 horas por 5 dias'),
(2, 1, 4, 'aafds');

SELECT * FROM consulta_recetas;

INSERT INTO `consulta_signos_vitales` (`id`, `idconsulta`, `idsigno_vital`, `valor`) VALUES
(1, 1, 1, '36.5'),
(2, 1, 2, '100/120'),
(3, 1, 4, '160'),
(4, 2, 2, '100/120');

SELECT * FROM consulta_signos_vitales;

INSERT INTO `consulta_sintomas` (`id`, `idconsulta`, `idsintoma`, `observacion`) VALUES
(1, 1, 2, 'Focalizado parte Frontal'),
(2, 3, 2, 'Intermintente'),
(3, 1, 5, 'Dolor Abdominal');

SELECT * FROM consulta_sintomas;

INSERT INTO `diagnosticos` (`id`, `descripcion`) VALUES
(1, 'COVID'),
(2, 'Gripe'),
(3, 'Migraña');

SELECT * FROM diagnosticos;

INSERT INTO `especialidades` (`id`, `descripcion`) VALUES
(1, 'Cardiologia'),
(2, 'Gastroenterología'),
(3, 'Administrador'),
(4, 'Secretaria');

SELECT * FROM especialidades;

INSERT INTO `estados` (`id`, `descripcion`, `entidad`) VALUES
(1, 'Activo', 1),
(2, 'Eliminado', 1),
(3, 'Suspendido', 1),
(4, 'Vacaciones', 1),
(5, 'Activo', 2);

SELECT * FROM estados;

INSERT INTO `laboratorios` (`id`, `descripcion`) VALUES
(1, 'Glicemia'),
(2, 'Colesterol');

SELECT * FROM laboratorios;

INSERT INTO `login` (`cedula`, `PASSWORD`) VALUES
('4-80', '1234');

SELECT * FROM login;

INSERT INTO `pacientes` (`id`, `cedula`, `nombre`, `apellido`, `direccion`, `email`, `celular`) VALUES
(1, '45', 'Jose', 'k', 'David', 'Jose.K@utp.ac.pa', '8787');

SELECT * FROM pacientes;

INSERT INTO `recetas` (`id`, `descripcion`) VALUES
(1, 'Paracetamol'),
(2, 'Dolonurobion'),
(3, 'Aspirina');

SELECT * FROM recetas;

INSERT INTO `signos_vitales` (`id`, `descripcion`) VALUES
(1, 'Temperatura'),
(2, 'Presion Arterial'),
(3, 'Oxigeno'),
(4, 'Peso'),
(5, 'Talla');

SELECT * FROM signos_vitales;

INSERT INTO `sintomas` (`id`, `descripcion`) VALUES
(1, 'Dolor de Cabeza'),
(2, 'Dolor Muscular'),
(3, 'Fiebre'),
(4, 'Dificultad para Respirar'),
(5, 'No Registrado');

SELECT * FROM sintomas;

INSERT INTO `tipousuario` (`id`, `descripcion`) VALUES
(1, 'Enfermero(a)'),
(2, 'Medico'),
(3, 'Administrativo');

SELECT * FROM tipousuario;

INSERT INTO `usuarios` (`id`, `cedula`, `nombre`, `apellido`, `direccion`, `email`, `PASSWORD`, `celular`, `idtipousuario`, `idestado`) VALUES
(13454, '44\"343', 'jose', 'vega', 'pedregal', 'jose@correo', '34342', '31232', 2, 1);

SELECT * FROM usuarios;
SELECT * FROM citas;