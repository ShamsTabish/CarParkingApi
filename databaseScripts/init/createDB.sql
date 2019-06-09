use parking;

create TABLE IF NOT EXISTS parking_area_info(
    parking_area_id VARCHAR(50) PRIMARY KEY,
    parking_name VARCHAR(30),
    details VARCHAR(150),
    city varchar(30)
);

create TABLE  IF NOT EXISTS parking_slots_geo_location(
    slot_number INT ,
    parking_area_id VARCHAR(50) REFERENCES parking_area_info(parking_area_id),
    start_latitude FLOAT(10,6)  NOT NULL,
    end_latitude FLOAT(10,6)  NOT NULL,
    start_longitude FLOAT(10,6)  NOT NULL,
    end_longitude FLOAT(10,6)  NOT NULL,
    ground_level INT(3)
);

create TABLE  IF NOT EXISTS  users(
    phoneNumber CHAR(13) PRIMARY KEY NOT NULL,
    email_id varchar(150) NOT NULL,
    first_name varchar(20) NOT NULL,
    last_name varchar(20),
    address varchar(30),
    city varchar(30)
);

create TABLE  IF NOT EXISTS reservations(
    time_stamp TIMESTAMP,
    slot_id INT REFERENCES parking_slots(slot_id),
    phoneNumber CHAR(13)  REFERENCES users(phoneNumber),
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL
);
