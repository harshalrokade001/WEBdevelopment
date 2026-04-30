-- ================================================
-- STUDENT REGISTRATION SYSTEM - DATABASE SETUP
-- ================================================
-- 
-- This SQL script creates the database and tables
-- needed for the Student Registration System.
-- 
-- Run this script in MySQL/MariaDB to initialize
-- the database.
-- ================================================

-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS student_registration;

-- Use the database
USE student_registration;

-- Drop table if it exists (for fresh setup)
DROP TABLE IF EXISTS students;

-- Create students table
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique student identifier',
    firstName VARCHAR(50) NOT NULL COMMENT 'Student first name',
    lastName VARCHAR(50) NOT NULL COMMENT 'Student last name',
    email VARCHAR(100) NOT NULL UNIQUE COMMENT 'Student email address (must be unique)',
    phone VARCHAR(20) NOT NULL COMMENT 'Student phone number',
    dateOfBirth DATE NOT NULL COMMENT 'Student date of birth',
    gender ENUM('Male', 'Female', 'Other') NOT NULL COMMENT 'Student gender',
    course VARCHAR(100) NOT NULL COMMENT 'Course enrolled',
    address TEXT NOT NULL COMMENT 'Student street address',
    city VARCHAR(50) NOT NULL COMMENT 'City of residence',
    state VARCHAR(50) NOT NULL COMMENT 'State of residence',
    zipCode VARCHAR(10) NOT NULL COMMENT 'Postal zip code',
    parentName VARCHAR(100) NOT NULL COMMENT 'Parent or guardian name',
    parentPhone VARCHAR(20) NOT NULL COMMENT 'Parent or guardian phone number',
    registrationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Date and time of registration',
    
    -- Create indexes for better query performance
    INDEX idx_email (email),
    INDEX idx_registrationDate (registrationDate),
    INDEX idx_course (course)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table to store student registration data';

-- ================================================
-- SAMPLE DATA (Optional)
-- ================================================
-- 
-- Uncomment the following INSERT statements to add
-- sample data for testing purposes.
-- ================================================

-- INSERT INTO students (firstName, lastName, email, phone, dateOfBirth, gender, course, address, city, state, zipCode, parentName, parentPhone)
-- VALUES 
-- ('John', 'Smith', 'john.smith@email.com', '5551234567', '2006-03-15', 'Male', 'Computer Science', '123 Main Street', 'New York', 'NY', '10001', 'Michael Smith', '5559876543'),
-- ('Emily', 'Johnson', 'emily.johnson@email.com', '5552345678', '2007-07-22', 'Female', 'Information Technology', '456 Oak Avenue', 'Los Angeles', 'CA', '90001', 'Sarah Johnson', '5558765432'),
-- ('Michael', 'Williams', 'michael.williams@email.com', '5553456789', '2006-11-30', 'Male', 'Engineering', '789 Pine Road', 'Chicago', 'IL', '60601', 'David Williams', '5557654321'),
-- ('Jessica', 'Brown', 'jessica.brown@email.com', '5554567890', '2007-01-10', 'Female', 'Business Administration', '321 Elm Street', 'Houston', 'TX', '77001', 'Linda Brown', '5556543210'),
-- ('Christopher', 'Davis', 'chris.davis@email.com', '5555678901', '2006-05-25', 'Male', 'Liberal Arts', '654 Maple Drive', 'Phoenix', 'AZ', '85001', 'Robert Davis', '5555432109');

-- ================================================
-- VERIFICATION QUERY
-- ================================================
-- 
-- Run this query to verify the table was created:
-- SELECT * FROM students;
-- ================================================
