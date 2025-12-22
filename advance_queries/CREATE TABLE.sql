CREATE TABLE job_applied (
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR(100)    
);

INSERT INTO job_applied (job_id, application_sent_date, custom_resume, resume_file_name, cover_letter_sent, cover_letter_file_name, status) 
VALUES
(1, '2024-05-01', TRUE, 'resume_software_engineer.pdf', TRUE, 'cover_letter_software_engineer.pdf', 'Under Review'),
(2, '2024-05-03', FALSE, 'generic_resume.pdf', FALSE, NULL, 'Applied'),
(3, '2024-05-05', TRUE, 'resume_data_scientist.pdf', TRUE, 'cover_letter_data_scientist.pdf', 'Interview Scheduled');

ALTER TABLE job_applied
ADD contact VARCHAR(50);

UPDATE job_applied
SET contact = 'John Doe'
WHERE job_id = 1;

UPDATE job_applied
SET contact = 'Jane Smith'
WHERE job_id = 2;

UPDATE job_applied
SET contact = 'Alice Johnson'
WHERE job_id = 3;

SELECT * FROM job_applied;
