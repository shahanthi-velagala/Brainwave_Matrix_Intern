-- Create Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    email VARCHAR(100)
);

-- Create Books Table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(200),
    author VARCHAR(100),
    isbn VARCHAR(20),
    available_copies INT,
    total_copies INT
);

-- Create IssueRecords Table
CREATE TABLE IssueRecords (
    issue_id INT PRIMARY KEY,
    student_id INT,
    book_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Insert sample students
INSERT INTO Students (student_id, name, department, email) VALUES
(1, 'Alice Johnson', 'Computer Science', 'alice@example.com'),
(2, 'Bob Smith', 'Mechanical Engineering', 'bob@example.com'),
(3, 'Charlie Brown', 'Electrical Engineering', 'charlie@example.com');

-- Insert sample books
INSERT INTO Books (book_id, title, author, isbn, available_copies, total_copies) VALUES
(101, 'Introduction to Algorithms', 'Thomas H. Cormen', '9780262033848', 3, 5),
(102, 'Clean Code', 'Robert C. Martin', '9780132350884', 1, 3),
(103, 'Database System Concepts', 'Abraham Silberschatz', '9780078022159', 2, 4);

-- Insert sample issue records
INSERT INTO IssueRecords (issue_id, student_id, book_id, issue_date, return_date) VALUES
(1001, 1, 101, '2025-05-20', '2025-06-03'),
(1002, 2, 102, '2025-06-01', NULL),
(1003, 3, 103, '2025-06-02', NULL);