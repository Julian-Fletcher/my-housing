INSERT INTO residence_hall(name, address, rooms, floors)
VALUES
('Quartz',		'1634 Wallaby Ln', 	10,	2), -- <- Singles
('Gypsum', 		'2145 Ballow Dr', 	3, 	1), -- <- Suites
('Labradorite', '3345 Blyth Cir', 	5, 	3), -- <- Doubles
('Barite', 		'1997 Colby Bvld', 	5, 	1)  -- <- Doubles

INSERT INTO hall_coordinator(pawprint, first_name, middle_init, last_name, pref_name, email, phone, hall_id)
VALUES
('Harry', 'M', 'Smith', 'Harry', 'hl2pw', 'hl2pw@college.edu', '123-456-7890', 1),
('Joshua', 'L', 'Jones', 'Josh', 'jjl2p', 'jjl2p@college.edu', '123-546-8974', 2),
('John', 'P', 'Brown', 'Jack', 'jb8dk', 'jd8dk@college.edu', '123-457-5435', 3),
('Alice' 'B' 'Johnson', 'Alice', 'aj2bk', 'aj2bk@college.edu', '123-684-4515', 4)

INSERT INTO student(pawprint, first_name, middle_init, last_name, pref_name, email, phone, ra_id)
VALUES
('js3px', 'John', 'A', 'Smith', 'Johnny', 'js3px@college.edu', '123-456-7890', 1),
('mb7kl', 'Mary', 'B', 'Brown', 'Mary', 'mb7kl@college.edu', '987-654-3210', 2),
('tj2nf', 'Tom', 'C', 'Johnson', 'Tommy', 'tj2nf@college.edu', '555-123-4567', 3),
('rl5qp', 'Rachel', 'D', 'Lee', 'Rach', 'rl5qp@college.edu', '888-777-6666', 4),
('kc8vy', 'Kevin', 'E', 'Clark', 'Kev', 'kc8vy@college.edu', '111-222-3333', 5),
('as4wn', 'Alice', 'F', 'Stewart', 'Ali', 'as4wn@college.edu', '444-555-6666', 6),
('mk9dh', 'Michael', 'G', 'King', 'Mike', 'mk9dh@college.edu', '777-888-9999', 7),
-- 								^^^^ RAS ^^^^
('ls6pr', 'Laura', 'H', 'Scott', 'Laurie', 'ls6pr@college.edu', '222-333-4444', ),
('bn3xv', 'Brian', 'I', 'Nelson', 'Bri', 'bn3xv@college.edu', '333-444-5555', ),
('cg7yz', 'Cindy', 'J', 'Garcia', 'Cindy', 'cg7yz@college.edu', '444-555-6667', ),
('jw1mp', 'Jack', 'K', 'White', 'Jackie', 'jw1mp@college.edu', '555-666-7777', ),
('kt2ln', 'Kate', 'L', 'Thomas', 'Katie', 'kt2ln@college.edu', '666-777-8888', ),
('dp9wr', 'David', 'M', 'Perez', 'Dave', 'dp9wr@college.edu', '777-888-9990', ),
('hr5ny', 'Holly', 'N', 'Reed', 'Holly', 'hr5ny@college.edu', '888-999-1112', ),
('sg8bx', 'Steve', 'O', 'Green', 'Steve', 'sg8bx@college.edu', '999-111-2223', ),
('em4kz', 'Emma', 'P', 'Moore', 'Em', 'em4kz@college.edu', '111-333-5557', ),
('lp6jt', 'Luke', 'Q', 'Parker', 'Luke', 'lp6jt@college.edu', '222-444-6667', ),
('cd7vr', 'Chris', 'R', 'Davis', 'Chris', 'cd7vr@college.edu', '333-555-7778', ),
('af3lw', 'Ashley', 'S', 'Foster', 'Ash', 'af3lw@college.edu', '444-666-8888', ),
('bg5xt', 'Ben', 'T', 'Gordon', 'Benji', 'bg5xt@college.edu', '555-777-9999', ),
('hm9py', 'Hannah', 'U', 'Mitchell', 'Han', 'hm9py@college.edu', '666-888-1111', ),
('wk4zn', 'William', 'V', 'Kelly', 'Will', 'wk4zn@college.edu', '777-999-2222', ),
('rd8ky', 'Rebecca', 'W', 'Daniels', 'Becca', 'rd8ky@college.edu', '888-111-3333', );


INSERT INTO resident_advisor(id, hall_id, floor_num, hc_id)
VALUES
-- Hall 1
(1, 1, 1, 1),
(2, 1, 2, 1),
-- Hall 2
(3, 2, 1, 2),
-- Hall 3
(4, 3, 1, 3),
(4, 3, 2, 3),
(5, 3, 3, 3),
-- Hall 4
(6, 4, 1, 4)

-- Room Type
INSERT INTO room_type(rtype_name, beds, suite)
VALUES
('Single', 1,),
('Double', 2,),
('Suite', 4, TRUE)

-- Room
INSERT INTO room(free_beds, hall_id, room_type)
VALUES
-- Quartz Singles
(1, 1, 1),
(1, 1, 1),
(1, 1, 1),
(1, 1, 1),
(1, 1, 1),
(1, 1, 1),
(1, 1, 1),
(1, 1, 1),
(1, 1, 1),
(1, 1, 1),
-- Gypsum Suites
(4, 2, 3),
(4, 2, 3),
(4, 2, 3),
-- Labradorite Doubles
(2, 3, 2),
(2, 3, 2),
(2, 3, 2),
(2, 3, 2),
(2, 3, 2),
-- Barite Doubles
(2, 4, 2),
(2, 4, 2),
(2, 4, 2),
(2, 4, 2),
(2, 4, 2)

-- Reservation need 21
INSERT INTO room_booking (free_beds, hall_id, room_type, room_num)
VALUES
