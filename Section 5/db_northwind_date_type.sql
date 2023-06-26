create table books
(book_id int, title varchar(100), author varchar(50), pages int, year_printed int, percent_finished numeric(5,2), adults_only bool);

insert into books
values
(1,'Frnakenstein','Mary Shelly', 289, 2007, 100,'n');

insert into books
values
(2,'Tales of Terror and Madness','Edgar Allan Poe', 188, 2001, 45.33,'y');

select * from books