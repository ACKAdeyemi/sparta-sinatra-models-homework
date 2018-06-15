DROP TABLE IF EXISTS room;

CREATE TABLE room (
  -- HOTEL ROOMS hash keys : id, room_num(int), floor (int), occupied(YES/NO bool or option - occupied and vacant), occupant_name, last_cleaned (date)
  -- use Mockaroo to get mock data
  id SERIAL PRIMARY KEY,
  room_number INT,
	floor_number INT,
	occupied VARCHAR(50),
	occupant_name VARCHAR(50),
	last_cleaned DATE
);

INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (4, 10, false, 'Not Currently Occupied', '13/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (1, 4, true, 'Richardo Rapi', '13/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (1, 1, true, 'Melodie Dash', '12/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (1, 7, true, 'Kathy Denington', '10/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (10, 6, false, 'Not Currently Occupied', '12/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (10, 1, false, 'Not Currently Occupied', '10/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (3, 3, true, 'Way Whetton', '12/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (3, 1, true, 'Nonna O''Fallon', '12/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (4, 5, true, 'Benjy Christer', '10/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (6, 5, true, 'Ozzie Braney', '10/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (10, 4, false, 'Not Currently Occupied', '13/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (1, 6, false, 'Not Currently Occupied', '12/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (1, 7, false, 'Not Currently Occupied', '13/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (5, 6, true, 'Megen Mc Harg', '13/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (9, 4, false, 'Not Currently Occupied', '12/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (7, 2, false, 'Not Currently Occupied', '13/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (6, 8, true, 'Wenona Klimmek', '10/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (6, 9, true, 'Claus Gaitung', '10/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (1, 6, false, 'Not Currently Occupied', '12/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (2, 9, false, 'Not Currently Occupied', '12/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (8, 2, true, 'Bobine Halm', '11/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (3, 8, false, 'Not Currently Occupied', '10/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (4, 5, false, 'Not Currently Occupied', '10/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (2, 8, false, 'Not Currently Occupied', '11/06/2018');
INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES (9, 2, true, 'Crista MacDearmaid', '12/06/2018');
