CREATE DATABASE Lost_music;

USE Lost_music;
select *from usuario;
select *from sugestao;

	CREATE TABLE usuario (
		id INT PRIMARY KEY AUTO_INCREMENT,
		usuario VARCHAR(50),
		email VARCHAR(50),
		senha VARCHAR(50),
        bandaFavorita varchar(45),
        instrumento varchar(45),
        nivel varchar(45),
		dtCadastro datetime not null default current_timestamp
	);

	CREATE TABLE sugestao (
		id INT PRIMARY KEY 
        AUTO_INCREMENT,
		url VARCHAR(100),
		banda VARCHAR(150),
		musica VARCHAR(150),
		estilo VARCHAR(150),
		fk_usuario INT,
		FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
	); 
    INSERT INTO sugestao VALUES
    (null,'om','Megadeth','ty','thrash_Metal','1'),
    (null,'om','Megadeth','ty','Heavy_Metal','1'),
    (null,'om','Megadeth','ty','Black_metal','1'),
    (null,'om','Megadeth','ty','Nu_metal','1'),
    (null,'om','Megadeth','ty','Power_metal','1'),
    (null,'om','Megadeth','ty','Death_metal','1'),
    (null,'om','Megadeth','ty','outro','1');
    drop database lost_music;


select * from usuario join sugestao on usuario.id=fk_usuario where usuario.id=1;
  SELECT * FROM usuario JOIN sugestao on usuario.id=fk_usuario WHERE usuario.id=1;
