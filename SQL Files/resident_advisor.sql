CREATE TABLE resident_advisor(
	id INT PRIMARY KEY NOT NULL,
	hall_id INT NOT NULL,
	floor_num INT,
	hc_id INT
);


ALTER TABLE resident_advisor
ADD CONSTRAINT fk_student_id
FOREIGN KEY (id) REFERENCES student(id)
ON DELETE CASCADE;

ALTER TABLE resident_advisor
ADD CONSTRAINT fk_hall_id_ra
FOREIGN KEY (hall_id) REFERENCES residence_hall(id)
ON DELETE RESTRICT;  -- Restrict deleting a residence hall that still has RAs assigned to it

ALTER TABLE resident_advisor
ADD CONSTRAINT fk_hall_coordinator
FOREIGN KEY (hc_id) REFERENCES hall_coordinator(id)
ON DELETE SET NULL;