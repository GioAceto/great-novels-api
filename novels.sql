CREATE DATABASE novels;

USE novels;

DROP USER IF EXISTS 'reader'@'localhost';

CREATE USER 'reader'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Read3r123';

GRANT ALL ON novels.* TO 'reader' @'localhost';

CREATE TABLE books (
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

CREATE TABLE booksGenres (
  id INT auto_increment,
  bookId INT,
  genreId INT,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

ALTER TABLE books
ADD FOREIGN KEY (authorId) REFERENCES authors(id);

ALTER TABLE booksGenres
ADD FOREIGN KEY (bookId) REFERENCES books(id);

ALTER TABLE booksGenres
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

INSERT INTO books (title, authorId) VALUES ("Dracula", 1);
INSERT INTO books (title, authorId) VALUES ("The Picture of Dorian Gray", 2);
INSERT INTO books (title, authorId) VALUES ("The Color Purple", 3);
INSERT INTO books (title, authorId) VALUES ("War and Peace", 4);
INSERT INTO books (title, authorId) VALUES ("A Tale of Two Cities", 5);
INSERT INTO books (title, authorId) VALUES ("The Crucible", 6);
INSERT INTO books (title, authorId) VALUES ("The Three Musketeers", 7);
INSERT INTO books (title, authorId) VALUES ("The Hound of the Baskervilles", 8);
INSERT INTO books (title, authorId) VALUES ("The Strange Case of Dr. Jekyll and Mr. Hyde", 9);
INSERT INTO books (title, authorId) VALUES ("Crime and Punishment", 10);
INSERT INTO books (title, authorId) VALUES ("Murder on the Orient Express", 11);
INSERT INTO books (title, authorId) VALUES ("Fahrenheit 451", 12);
INSERT INTO books (title, authorId) VALUES ("Animal Farm", 13);
INSERT INTO books (title, authorId) VALUES ("The Time Machine", 14);
INSERT INTO books (title, authorId) VALUES ("Things Fall Apart", 15);

INSERT INTO genres (name) VALUES ("Fiction, Horror, Fantasy");
INSERT INTO genres (name) VALUES ("Fiction, Horror, Gothic, Fantasy");
INSERT INTO genres (name) VALUES ("Fiction, Historical Fiction");
INSERT INTO genres (name) VALUES ("Fiction, Historical Fiction, War, Russian Literature");
INSERT INTO genres (name) VALUES ("Fiction, Historical Fiction, Drama, Plays");
INSERT INTO genres (name) VALUES ("Fiction, Historical Fiction, Adventure, French Literature");
INSERT INTO genres (name) VALUES ("Fiction, Mystery, Crime, Thriller");
INSERT INTO genres (name) VALUES ("Fiction, Mystery, Science Fiction, Horror");
INSERT INTO genres (name) VALUES ("Fiction, Russian Literature, Mystery");
INSERT INTO genres (name) VALUES ("Fiction, Mystery");
INSERT INTO genres (name) VALUES ("Fiction, Science Fiction, Dystopia");
INSERT INTO genres (name) VALUES ("Fiction, Science Fiction, Time Travel");
INSERT INTO genres (name) VALUES ("Fiction, Historical Fiction, African Literature");

INSERT INTO booksGenres (bookId, genreId) VALUES (1, 1);
INSERT INTO booksGenres (bookId, genreId) VALUES (2, 2);
INSERT INTO booksGenres (bookId, genreId) VALUES (3, 3);
INSERT INTO booksGenres (bookId, genreId) VALUES (4, 4);
INSERT INTO booksGenres (bookId, genreId) VALUES (5, 3);
INSERT INTO booksGenres (bookId, genreId) VALUES (6, 5);
INSERT INTO booksGenres (bookId, genreId) VALUES (7, 6);
INSERT INTO booksGenres (bookId, genreId) VALUES (8, 7);
INSERT INTO booksGenres (bookId, genreId) VALUES (9, 8);
INSERT INTO booksGenres (bookId, genreId) VALUES (10, 9);
INSERT INTO booksGenres (bookId, genreId) VALUES (11, 10);
INSERT INTO booksGenres (bookId, genreId) VALUES (12, 11);
INSERT INTO booksGenres (bookId, genreId) VALUES (13, 11);
INSERT INTO booksGenres (bookId, genreId) VALUES (14, 12);
INSERT INTO booksGenres (bookId, genreId) VALUES (15, 13);
