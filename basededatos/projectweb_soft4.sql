CREATE TABLE citas (
idcita INT NOT NULL AUTO_INCREMENT,
idpaciente VARCHAR (30) NOT NULL,
fecha DATE DEFAULT(CURDATE()), 
fechaconsulta VARCHAR(30),
idespecialidad INT NOT NULL,
idmedico VARCHAR(30) NOT NULL,
observacion VARCHAR(60),
idusuario INT NOT NULL, PRIMARY KEY (idcita));
 
CREATE TABLE login (cedula VARCHAR(20) NOT NULL, 
PASSWORD VARCHAR(20), PRIMARY KEY (cedula));
 
CREATE TABLE usuarios_especialidades (id INT NOT NULL AUTO_INCREMENT,
idespecialidad INT DEFAULT 0,
idusuario INT DEFAULT 0, PRIMARY KEY(id));
 
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
