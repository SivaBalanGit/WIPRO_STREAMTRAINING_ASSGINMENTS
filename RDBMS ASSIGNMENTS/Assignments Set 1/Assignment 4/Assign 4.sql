create database Library;
show databases;

use library;

CREATE TABLE Authors (
  author_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL
);

INSERT INTO Authors (first_name, last_name, author_dob)
VALUES ('J.R.R.', 'Tolkien','12-09-2000'),
       ('Agatha', 'Christie','20-05-1998'),
       ('George R.R.', 'Martin','04-03-2002'),
       ('Stephen', 'King','17-01-1999'),
       ('Harper', 'Lee','22-05-2001');
       
select * from Authors;

alter table Authors add author_dob varchar(10);
desc Authors;

drop table Authors;