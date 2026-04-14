SQL Student Management System – Detailed Documentation
 1. Project Overview

The Student Management System is a relational database project developed using SQL to store, manage, and analyze student information efficiently.

This project demonstrates how structured data can be organized into tables and manipulated using SQL queries to extract meaningful insights.

The system focuses on:

Managing student personal records
Classifying students based on performance
Categorizing students by academic level
Performing data analysis using SQL queries
 2. Objectives of the Project

The main objectives of this project are:

To understand database design and structure
To practice Data Definition Language (DDL) commands such as CREATE, ALTER, and DROP
To apply Data Manipulation Language (DML) commands like INSERT, UPDATE, and DELETE
To use Data Query Language (DQL) (SELECT) for retrieving data
To implement conditional logic using CASE WHEN
To organize and interpret student data effectively
Database Structure

The database contains the following main table:

students
Column Name	Data Type	Description
student_id	INT (PK)	Unique student identifier
first_name	VARCHAR	Student's first name
last_name	VARCHAR	Student's last name
gender	CHAR(1)	Gender (M/F)
class	VARCHAR	Student's class (e.g., Form 1)
city	VARCHAR	City of residence
