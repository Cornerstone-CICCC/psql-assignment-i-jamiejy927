CREATE TABLE assistance_requests (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
    instructor_id INTEGER,
    assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
    created_at VARCHAR(255),
    started_at VARCHAR(255),
    completed_at VARCHAR(255),
    student_feedback TEXT,
    instructor_feedback TEXT
);