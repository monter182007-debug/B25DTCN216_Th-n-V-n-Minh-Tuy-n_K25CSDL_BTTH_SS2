-- Khoi tao database
create database libary_management;
use libary_management;

-- Tao bang book
create table books(
	bookId char(5) primary key,-- Ma sach khoa chinh
    bookName varchar(200) not null, -- Ten sach ko de trong
    quantityBook int check(quantityBook >=0),-- So luong phai lon hon 0 
    rental_price decimal(10,2) default 5000 -- Gia thue lay chinh xac va neu ko nhap mac dinh la 5000
); 

-- Them cot vao bang books
alter table books
add entry_date datetime default current_timestamp; 

-- Tao bang borrow_books
create table borrow_book(
	id int  auto_increment primary key, -- Id tu tang va la khoa chinh
    bookId char(5),
    borrow_date date default (current_date),
    foreign key(bookId) references books(bookId)
);

-- xem thong tin
select * from books; 
select *from borrow_book;
