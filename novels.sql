CREATE DATABASE novels;

USE novels;

DROP USER IF EXISTS 'reader'@'localhost';

CREATE USER 'reader'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Read3r123';

GRANT ALL ON novels.* TO 'reader' @'localhost';

CREATE TABLE novels (
  id INT auto_increment,
  title VARCHAR(255) NOT NULL,
  authorId INT,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

CREATE TABLE authors (
  id INT auto_increment,
  firstName VARCHAR(255) NOT NULL,
  lastName VARCHAR(255) NOT NULL,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

CREATE TABLE genres (
  id INT auto_increment,
  name VARCHAR(255) NOT NULL,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

CREATE TABLE novelsGenres (
  id INT auto_increment,
  novelId INT,
  genreId INT,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

ALTER TABLE novels
ADD FOREIGN KEY (authorId) REFERENCES authors(id);

ALTER TABLE novelsGenres
ADD FOREIGN KEY (novelId) REFERENCES novels(id);

ALTER TABLE novelsGenres
ADD FOREIGN KEY (genreId) REFERENCES genres(id);

INSERT INTO authors (firstName, lastName) VALUES ("Bram", "Stoker");
INSERT INTO authors (firstName, lastName) VALUES ("Oscar", "Wilde");
INSERT INTO authors (firstName, lastName) VALUES ("Alice", "Walker");
INSERT INTO authors (firstName, lastName) VALUES ("Leo", "Tolstoy");
INSERT INTO authors (firstName, lastName) VALUES ("Charles", "Dickens");
INSERT INTO authors (firstName, lastName) VALUES ("Arthur", "Miller");
INSERT INTO authors (firstName, lastName) VALUES ("Alexandre", "Dumas");
INSERT INTO authors (firstName, lastName) VALUES ("Arthur", "Conan Doyle");
INSERT INTO authors (firstName, lastName) VALUES ("Robert", "Louis Stevenson");
INSERT INTO authors (firstName, lastName) VALUES ("Fyodor", "Dostoyevsky");
INSERT INTO authors (firstName, lastName) VALUES ("Agatha", "Christie");
INSERT INTO authors (firstName, lastName) VALUES ("Ray", "Bradbury");
INSERT INTO authors (firstName, lastName) VALUES ("George", "Orwell");
INSERT INTO authors (firstName, lastName) VALUES ("H.G.", "Wells");
INSERT INTO authors (firstName, lastName) VALUES ("Chinua", "Achebe");

INSERT INTO novels (title, authorId) VALUES ("Dracula", 1);
INSERT INTO novels (title, authorId) VALUES ("The Picture of Dorian Gray", 2);
INSERT INTO novels (title, authorId) VALUES ("The Color Purple", 3);
INSERT INTO novels (title, authorId) VALUES ("War and Peace", 4);
INSERT INTO novels (title, authorId) VALUES ("A Tale of Two Cities", 5);
INSERT INTO novels (title, authorId) VALUES ("The Crucible", 6);
INSERT INTO novels (title, authorId) VALUES ("The Three Musketeers", 7);
INSERT INTO novels (title, authorId) VALUES ("The Hound of the Baskervilles", 8);
INSERT INTO novels (title, authorId) VALUES ("The Strange Case of Dr. Jekyll and Mr. Hyde", 9);
INSERT INTO novels (title, authorId) VALUES ("Crime and Punishment", 10);
INSERT INTO novels (title, authorId) VALUES ("Murder on the Orient Express", 11);
INSERT INTO novels (title, authorId) VALUES ("Fahrenheit 451", 12);
INSERT INTO novels (title, authorId) VALUES ("Animal Farm", 13);
INSERT INTO novels (title, authorId) VALUES ("The Time Machine", 14);
INSERT INTO novels (title, authorId) VALUES ("Things Fall Apart", 15);

INSERT INTO genres (name) VALUES ("Fiction");
INSERT INTO genres (name) VALUES ("Horror");
INSERT INTO genres (name) VALUES ("Fantasy");
INSERT INTO genres (name) VALUES ("Gothic");
INSERT INTO genres (name) VALUES ("Historical Fiction");
INSERT INTO genres (name) VALUES ("War");
INSERT INTO genres (name) VALUES ("Russian Literature");
INSERT INTO genres (name) VALUES ("Drama");
INSERT INTO genres (name) VALUES ("Plays");
INSERT INTO genres (name) VALUES ("Adventure");
INSERT INTO genres (name) VALUES ("French Literature");
INSERT INTO genres (name) VALUES ("Mystery");
INSERT INTO genres (name) VALUES ("Crime");
INSERT INTO genres (name) VALUES ("Thriller");
INSERT INTO genres (name) VALUES ("Science Fiction");
INSERT INTO genres (name) VALUES ("Dystopia");
INSERT INTO genres (name) VALUES ("Time Travel");
INSERT INTO genres (name) VALUES ("African Literature");

INSERT INTO novelsGenres (novelId, genreId) VALUES (1, 1);
INSERT INTO novelsGenres (novelId, genreId) VALUES (1, 2);
INSERT INTO novelsGenres (novelId, genreId) VALUES (1, 3);

INSERT INTO novelsGenres (novelId, genreId) VALUES (2, 1);
INSERT INTO novelsGenres (novelId, genreId) VALUES (2, 2);
INSERT INTO novelsGenres (novelId, genreId) VALUES (2, 4);
INSERT INTO novelsGenres (novelId, genreId) VALUES (2, 3);

INSERT INTO novelsGenres (novelId, genreId) VALUES (3, 1);
INSERT INTO novelsGenres (novelId, genreId) VALUES (3, 5);

INSERT INTO novelsGenres (novelId, genreId) VALUES (4, 1);
INSERT INTO novelsGenres (novelId, genreId) VALUES (4, 5);
INSERT INTO novelsGenres (novelId, genreId) VALUES (4, 6);
INSERT INTO novelsGenres (novelId, genreId) VALUES (4, 7);

INSERT INTO novelsGenres (novelId, genreId) VALUES (5, 1);
INSERT INTO novelsGenres (novelId, genreId) VALUES (5, 5);

INSERT INTO novelsGenres (novelId, genreId) VALUES (6, 1);
INSERT INTO novelsGenres (novelId, genreId) VALUES (6, 5);
INSERT INTO novelsGenres (novelId, genreId) VALUES (6, 8);
INSERT INTO novelsGenres (novelId, genreId) VALUES (6, 9);

INSERT INTO novelsGenres (novelId, genreId) VALUES (7, 1);
INSERT INTO novelsGenres (novelId, genreId) VALUES (7, 5);
INSERT INTO novelsGenres (novelId, genreId) VALUES (7, 10);
INSERT INTO novelsGenres (novelId, genreId) VALUES (7, 11);

INSERT INTO novelsGenres (novelId, genreId) VALUES (8, 1);
INSERT INTO novelsGenres (novelId, genreId) VALUES (8, 12);
INSERT INTO novelsGenres (novelId, genreId) VALUES (8, 13);
INSERT INTO novelsGenres (novelId, genreId) VALUES (8, 14);

INSERT INTO novelsGenres (novelId, genreId) VALUES (9, 1);
INSERT INTO novelsGenres (novelId, genreId) VALUES (9, 12);
INSERT INTO novelsGenres (novelId, genreId) VALUES (9, 15);
INSERT INTO novelsGenres (novelId, genreId) VALUES (9, 2);

INSERT INTO novelsGenres (novelId, genreId) VALUES (10, 1);
INSERT INTO novelsGenres (novelId, genreId) VALUES (10, 7);
INSERT INTO novelsGenres (novelId, genreId) VALUES (10, 12);

INSERT INTO novelsGenres (novelId, genreId) VALUES (11, 1);
INSERT INTO novelsGenres (novelId, genreId) VALUES (11, 12);

INSERT INTO novelsGenres (novelId, genreId) VALUES (12, 1);
INSERT INTO novelsGenres (novelId, genreId) VALUES (12, 15);
INSERT INTO novelsGenres (novelId, genreId) VALUES (12, 16);

INSERT INTO novelsGenres (novelId, genreId) VALUES (13, 1);
INSERT INTO novelsGenres (novelId, genreId) VALUES (13, 15);
INSERT INTO novelsGenres (novelId, genreId) VALUES (13, 16);

INSERT INTO novelsGenres (novelId, genreId) VALUES (14, 1);
INSERT INTO novelsGenres (novelId, genreId) VALUES (14, 15);
INSERT INTO novelsGenres (novelId, genreId) VALUES (14, 17);

INSERT INTO novelsGenres (novelId, genreId) VALUES (15, 1);
INSERT INTO novelsGenres (novelId, genreId) VALUES (15, 5);
INSERT INTO novelsGenres (novelId, genreId) VALUES (15, 18);
