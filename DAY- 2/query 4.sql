use cdg_hyd_jfs_058;
CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    isbn CHAR(13) NOT NULL UNIQUE,
    title VARCHAR(200) NOT NULL,
    author_name VARCHAR(120) NOT NULL,
    genre VARCHAR(60) NOT NULL,
    publisher VARCHAR(120),
    publication_year SMALLINT NOT NULL,
    page_count SMALLINT NOT NULL,
    book_format VARCHAR(20) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    copies_available INT NOT NULL,
    language VARCHAR(40) NOT NULL DEFAULT use cdg_hyd_jfs_058;'English',
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CHECK (publication_year BETWEEN 1000 AND 2100),
    CHECK (page_count > 0),
    CHECK (price >= 0),
    CHECK (copies_available >= 0),
    CHECK (book_format IN ('HARDCOVER', 'PAPERBACK', 'EBOOK'))
);
SELECT * FROM books;
INSERT INTO books
(isbn, title, author_name, genre, publisher, publication_year,
 page_count, book_format, price, copies_available, language)
VALUES
('9780134685991', 'Effective Java', 'Joshua Bloch', 'Programming',
 'Addison-Wesley', 2018, 416, 'HARDCOVER', 650.00, 10, 'English');


