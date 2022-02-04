DROP DATABASE IF EXISTS shop;
CREATE DATABASE shop;

CREATE TABLE categories (
    category_id int NOT NULL AUTO_INCREMENT,
    category_name varchar(70) NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE books (
    book_id int NOT NULL AUTO_INCREMENT,
    title varchar(70) NOT NULL,
    author varchar(70) DEFAULT NULL,
    price double NOT NULL,
    category_id int NOT NULL,
    PRIMARY KEY (book_id),
    KEY book_id_key (book_id),
    CONSTRAINT category_id FOREIGN KEY (category_id) REFERENCES 
    categories (category_id)
);

        

CREATE TABLE orders (
    order_id bigint NOT NULL AUTO_INCREMENT,
    delivery_name varchar(70) NOT NULL,
    delivery_address varchar(70) NOT NULL,
    cc_name varchar(70) NOT NULL,
    cc_number varchar(32) NOT NULL,
    cc_expiry varchar(20) NOT NULL,
    PRIMARY KEY (order_id)
);

CREATE TABLE order_details (
    id bigint NOT NULL AUTO_INCREMENT,
    book_id int NOT NULL,
    title varchar(70) NOT NULL,
    author varchar(70) DEFAULT NULL,
    quantity int NOT NULL,
    price double NOT NULL,
    order_id bigint NOT NULL,
    PRIMARY KEY (id),
    KEY order_details_id_key (id),
    CONSTRAINT book_id FOREIGN KEY (book_id) REFERENCES books (book_id),
    CONSTRAINT order_id FOREIGN KEY (order_id) REFERENCES orders (order_id)
);




INSERT INTO categories(category_id, category_name) VALUES
(1, 'Web Development');
INSERT INTO categories(category_id, category_name) VALUES
(2, 'Science Fiction');
INSERT INTO categories(category_id, category_name) VALUES
(3, 'Historical Mysteries');

INSERT INTO books(book_id, title, author, price, category_id) VALUES
(1, 'MYSQL 8 Query Performance Tuning', 'Jesper Wisborg Krogh', 34.31, 1);
INSERT INTO books(book_id, title, author, price, category_id) VALUES
(2, 'JavaScript Next', 'Raju Gandhi', 36.70, 1);
INSERT INTO books(book_id, title, author, price, category_id) VALUES
(3, 'The Complete Robot', 'Isaac Asimov', 12.13, 2);
INSERT INTO books(book_id, title, author, price, category_id) VALUES
(4, 'Foundation and Earth', 'Isaac Asimov', 11.07, 2);
INSERT INTO books(book_id, title, author, price, category_id) VALUES
(5, 'The Da Vinci Code', 'Dan Brown', 7.99, 3);
INSERT INTO books(book_id, title, author, price, category_id) VALUES
(6, 'A Column of Fire', 'Ken Follett', 6.99, 3);



