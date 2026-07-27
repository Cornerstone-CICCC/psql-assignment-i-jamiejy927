CREATE TABLE assignments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    content TEXT,
    duration INTEGER,
    day INTEGER,
    chapter INTEGER
);