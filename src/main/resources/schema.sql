CREATE TABLE Users (
    user_id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    PRIMARY KEY (user_id)
);

CREATE TABLE Price (
    price_id INT NOT NULL AUTO_INCREMENT,
    price VARCHAR(250),
    PRIMARY KEY (price_id)
);

CREATE TABLE Movies (
    movie_id INT NOT NULL AUTO_INCREMENT,
    movie_title VARCHAR(250),
    movie_rating VARCHAR(20),
    movie_length INT,
    price_id INT, 
    PRIMARY KEY (movie_id),
    FOREIGN KEY (price_id) REFERENCES Price (price_id) -- Removed ON DELETE CASCADE
);

CREATE TABLE Rooms (
    room_id INT NOT NULL AUTO_INCREMENT,
    capacity INT,
    PRIMARY KEY (room_id)
);

CREATE TABLE Schedule (
    schedule_id INT NOT NULL AUTO_INCREMENT,
    start_time VARCHAR(250),
    end_time VARCHAR(250),
    date DATE,
    movie_id INT,
    room_id INT,
    PRIMARY KEY (schedule_id),
    FOREIGN KEY (movie_id) REFERENCES Movies (movie_id), -- Removed ON DELETE CASCADE
    FOREIGN KEY (room_id) REFERENCES Rooms (room_id) -- Removed ON DELETE CASCADE
);
