# School Database Project

## Project Description
The School Database project is a database designed for school to manage information about students, parents, teachers, subjects and grades.
- Description.pdf - description of database
- SampleData.sql - commands that insert dummy data and create views, procedures, triggers,  functions
- School.bak - file to import database
- SchoolDatabase.sql - sql commands that create database and its contents (in case School.bak failed)

## Technologies Used
- Programming Language: T-SQL
- Database Managment System: MSSQL

## System Requirements
To run the application, you need to have installed:
- Microsoft SQL Server

## Installation and Running
### First option
1. Download School.bak file.
2. Open Microsoft SQL Server Mangagement Studio and connect to your server.
3. Right click on Databases -> Restore Database -> Source: Device -> Choose School.bak.
### Second option
1. Download SchoolDatabase.sql file.
2. Open Microsoft SQL Server Mangagement Studio and connect to your server.
3. Execute SchoolDatabase.sql file.
4. If you need dummy data then download and execute SampleData.sql file  (make sure to execute it on School Database; if you encounter errors, then execute it once again and errors should disappear).

