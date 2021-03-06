CREATE DATABASE IF NOT EXISTS `locar`;

CREATE TABLE IF NOT EXISTS `user` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`username` VARCHAR(45) NOT NULL,
	`password` VARCHAR(45) NOT NULL,
	`cpf` VARCHAR(45),
	`address` VARCHAR(45),
	`birthday` DATE,
	`permission` ENUM("ADMIN", "USER") NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE (`username`, `cpf`)
);

CREATE TABLE IF NOT EXISTS `vehicle` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`people` INT NOT NULL,
	`velocity` FLOAT NOT NULL,
	`power` INT NOT NULL,
	`plate` VARCHAR(45) NOT NULL,
	`model` VARCHAR(45) NOT NULL,
	`producer` VARCHAR(45) NOT NULL,
	`year` YEAR NOT NULL,
	`value_day` DOUBLE UNSIGNED NOT NULL,
	`available` TINYINT NOT NULL,
	PRIMARY KEY (`id`),
  	UNIQUE (`plate`)
);

CREATE TABLE IF NOT EXISTS `rent` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`pickup` DATE NOT NULL,
	`dropoff` DATE NOT NULL,
	`total` DOUBLE UNSIGNED NOT NULL,
	`user_id` INT NOT NULL,
	`vehicle_id` INT NOT NULL,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`user_id`) REFERENCES user(`id`),
	FOREIGN KEY (`vehicle_id`) REFERENCES vehicle(`id`)
);

CREATE TABLE IF NOT EXISTS `maintenance` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`type` ENUM("PREVENTIVA", "CORRETIVA") NULL,
	`km` INT NULL,
	`date` DATE NULL,
	`description` VARCHAR(100) NULL,
	`vehicle_id` INT NOT NULL,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`vehicle_id`) REFERENCES vehicle(`id`)
);

        INSERT INTO user (username, password, permission)
	VALUES (admin, 0000, ADMIN);
	

	INSERT INTO user (username, password, permission)
	VALUES (‘user’, 0000, ‘USER’);
	

	INSERT INTO vehicle (people, velocity, power, plate, model, producer, year, value_day, available)
	VALUES (2, 250, 374, ‘JKC-1410’, ‘I8’,’ BMW’, 2020, 60.00, 1);
	

	INSERT INTO vehicle (people, velocity, power, plate, model, producer, year, value_day, available)
	VALUES (2, 330, 610, ‘JQQ-5809’,’ R8’, ‘Audi’, 2021, 90.00, 1);
	

	INSERT INTO vehicle (people, velocity, power, plate, model, producer, year, value_day, available)
	VALUES (5, 190, 170, ‘JCK-8823’, ‘ASX’, ‘Mitsubishi’ , 2021, 50.00, 1);
	

	INSERT INTO vehicle (people, velocity, power, plate, model, producer, year, value_day, available)
	VALUES (5, 190, 170, ‘JJV-4733’,’ IX35’, ‘Hyundai’ , 2021, 70.00, 1);
	

	INSERT INTO vehicle (people, velocity, power, plate, model, producer, year, value_day, available)
	VALUES (5, 175, 170, ‘CPP-4425’,’ Toro’, ‘Fiat’ , 2020, 60.00, 1);
	

	INSERT INTO vehicle (people, velocity, power, plate, model, producer, year, value_day, available)
	VALUES (5, 250, 466, ‘CGG-4973’, ‘Mustang’, ‘Ford’ , 2020, 80.00, 1);
	

	INSERT INTO rent (totalValue, pickupDate, dropoffDate,  user ,  vehicle)
	VALUES (250, 2020-03-18, 2020-03-25, ‘Camila de Lima’,  ‘BMW’);
		
	INSERT INTO rent (totalValue, pickupDate, dropoffDate,  user ,  vehicle)
	VALUES (500, 2020-03-18, 2020-03-25, ‘Fernando Silva’, ‘ Jetta’);
	

	INSERT INTO rent (totalValue, pickupDate, dropoffDate,  user ,  vehicle)
	VALUES (300, 2020-03-16, 2020-03-21, ‘Paulo Roberto’,  ‘Mustang’);
		
	INSERT INTO rent (totalValue, pickupDate, dropoffDate,  user ,  vehicle)
	VALUES (600, 2020-04-07, 2020-04-14, ‘Fernando Silva’,  ‘Toro’);
	
	INSERT INTO rent (totalValue, pickupDate, dropoffDate,  user ,  vehicle)
	VALUES (100, 2020-05-14, 2020-05-16,’ Roberto Bezerra’, ‘ IX35’);
		
	INSERT INTO rent (totalValue, pickupDate, dropoffDate,  user ,  vehicle)
	VALUES (270, 2020-05-15, 2020-05-20,’ Pamela Fernandes’,  ‘ASX’);
	
	INSERT INTO rent (totalValue, pickupDate, dropoffDate,  user ,  vehicle)
	VALUES (250, 2020-06-03, 2020-06-07, ‘Geraldo Alberto’,  ‘R8’);
		
	INSERT INTO User (username, password, cpf, adress, birthday, permission)
	VALUES (‘FernandoSilva’, 15425**, 45821497324, ‘3 Vere Street W1G DH’, 1978-05-18,’ User’);
	
	INSERT INTO User (username, password, cpf, adress, birthday, permission)
	VALUES (‘PauloRoberto’,548556**, 449985151511, ‘3 Vere Street ‘, 1997-10-10, ‘User’);
	
	
	INSERT INTO User (username, password, cpf, adress, birthday, permission)
	VALUES (‘RobertoBezerra’, 454885**, 515489484844, ‘3 Vere Street’ , 1986-02-20,’ User’);
	
	
	INSERT INTO User (username, password, cpf, adress, birthday, permission)
	VALUES (‘PamelaFernandes’, 54844**, 54845644848,’ 3 Vere Street Woodrow’, 1984-12-4, ‘User’);
	
	
	INSERT INTO User (username, password, cpf, adress, birthday, permission)
	VALUES (‘GeraldoAlberto’, 548556**, 449985151511, ‘4 Vere Street’ , 1956-06-03, User);
	
	
	INSERT INTO User (username, password, cpf, adress, birthday, permission)
	VALUES (‘WilliamRoberto’, 44848**, 8858484848, ‘3 Vere Street’ , 1991-04-04,’ Admin’);






