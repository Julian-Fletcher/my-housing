CREATE TABLE room (
	id INT PRIMARY KEY AUTO_INCREMENT,
	free_beds INT NOT NULL,
		CONSTRAINT conf_free_bed CHECK (free_beds > 0),
	hall_id INT,
	room_type INT NOT NULL,
	room_num INT NOT NULL,
	FOREIGN KEY (room_type) REFERENCES room_type(id),
	FOREIGN KEY (hall_id) REFERENCES residence_hall(id)
);

ALTER TABLE room
ADD CONSTRAINT fk_hall_id_rm
FOREIGN KEY (hall_id) REFERENCES residence_hall(id)
ON DELETE CASCADE; -- If the hall is deleted the rooms should also be deleted

ALTER TABLE room
ADD CONSTRAINT fk_room_type
FOREIGN KEY (room_type) REFERENCES room_type(id)
ON DELETE CASCADE;