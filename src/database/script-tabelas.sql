-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para workbench - local - desenvolvimento */
CREATE DATABASE Lost_music;

USE Lost_music;

	CREATE TABLE usuario (
		id INT PRIMARY KEY AUTO_INCREMENT,
		usuario VARCHAR(50),
		email VARCHAR(50),
		senha VARCHAR(50),
		bandaFavorita VARCHAR(45),
		dtCadastro datetime
	);

	CREATE TABLE sugestao (
		id INT PRIMARY KEY AUTO_INCREMENT,
		url VARCHAR(100),
		banda VARCHAR(150),
		musica VARCHAR(150),
		estilo VARCHAR(150),
		fk_usuario INT,
		FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
	); 

