CREATE TABLE hall_coordinator (
	id INT PRIMARY KEY AUTO_INCREMENT,
	pawprint VARCHAR(6) UNIQUE,
	first_name VARCHAR(20) NOT NULL,
	middle_init CHAR(1),
	last_name VARCHAR(20) NOT NULL,
	pref_name VARCHAR(20) NOT NULL,
	email VARCHAR(17) NOT NULL UNIQUE,
	phone VARCHAR(12) NOT NULL UNIQUE,
	-- fk
	hall_id INT
);

ALTER TABLE hall_coordinator
ADD CONSTRAINT fk_hall_id
FOREIGN KEY (hall_id) REFERENCES residence_hall(id)
ON DELETE SET NULL;