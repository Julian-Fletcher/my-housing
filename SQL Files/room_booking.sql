CREATE TABLE room_booking(
	id INT PRIMARY KEY AUTO_INCREMENT,
	floor_num INT NOT NULL,
	room_num INT NOT NULL,
	bed CHAR(1) NOT NULL,
	status ENUM('ACTIVE', 'FUTURE', 'PAST') NOT NULL,
	term ENUM ('FALL', 'SPRING', 'SUMMER') NOT NULL,
	year YEAR NOT NULL,
	-- Foreign Keys
	room_id INT,
	student_id INT,
	hall_id INT
);

ALTER TABLE room_booking
ADD CONSTRAINT fk_room_id
FOREIGN KEY (room_id) REFERENCES room(id)
ON DELETE SET NULL; -- Will need application logic to prevent deletion of active rooms

ALTER TABLE room_booking
ADD CONSTRAINT fk_student_id
FOREIGN KEY (student_id) REFERENCES student(id)
ON DELETE CASCADE; -- Delete reservations for a student if they're deleted

ALTER TABLE room_booking
ADD CONSTRAINT fk_hall_name
FOREIGN KEY (hall_id) REFERENCES residence_hall(id)
ON DELETE SET NULL; -- Application logic needed 
