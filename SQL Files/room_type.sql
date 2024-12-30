CREATE TABLE room_type (
	id INT PRIMARY KEY AUTO_INCREMENT,
	rtype_name ENUM('Single', 'Double', 'Suite') NOT NULL,
	beds INT NOT NULL,
	suite BOOLEAN DEFAULT FALSE
);