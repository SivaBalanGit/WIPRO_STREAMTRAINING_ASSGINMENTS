create database Library;
show databases;

use library;

CREATE TABLE Authors (
  author_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL
);

alter table Authors add author_dob varchar(10);
desc Authors;

INSERT INTO Authors (first_name, last_name, author_dob)
VALUES ('J.R.R.', 'Tolkien','12-09-2000'),
       ('Agatha', 'Christie','20-05-1998'),
       ('George R.R.', 'Martin','04-03-2002'),
       ('Stephen', 'King','17-01-1999'),
       ('Harper', 'Lee','22-05-2001');
       
select * from Authors;


CREATE TABLE Books (
  book_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  isbn VARCHAR(20) UNIQUE,
  publication_year INT CHECK (publication_year >= 1000)
 
);

alter table Books modify column isbn varchar(50);

desc Books;

INSERT INTO Books (title, isbn, publication_year)
VALUES ('The Lord of the Rings', '978-0261102694', 1954),
       ('And Then There Were None', '978-0007146679', 1939),
       ('A Song of Ice and Fire', '978-0552148513', 1996),
       ('It', '978-0385172743', 1986),
       ('To Kill a Mockingbird', '978-0446310727', 1960);
       
select * from Books;


ALTER TABLE Books
ADD CONSTRAINT fk_books_author FOREIGN KEY (author_id) REFERENCES Authors(author_id);

CREATE TABLE Members (
  member_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  address VARCHAR(255),
  email VARCHAR(255) UNIQUE
);

desc Members;

INSERT INTO Members (first_name, last_name, email)
VALUES ('John', 'Doe', 'john.doe@example.com'),
       ('Jane', 'Smith', 'jane.smith@example.com'),
       ('Michael', 'Brown', 'michael.brown@example.com'),
       ('Alice', 'Johnson', 'alice.johnson@example.com'),
       ('David', 'Williams', 'david.williams@example.com');


select * from Members;
 
 -- Create index
 
CREATE INDEX idx_title ON Books(title);

-- Drop Index

DROP INDEX idx_title ON Books;