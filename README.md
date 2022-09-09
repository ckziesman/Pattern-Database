# Pattern-Database

## Purpose

This database is used for the purpose of storing and managing information for sewing patterns.

## Design

To create this database, information was gathered from analyzing sewing patterns which have a label, a company, sizes, date published, type of pattern, and other information on it. This was created into 6 tables with one junction table.  Each sewing pattern has 1 label, 1 designer, 1 company, 1 published date, 1 type. 

In addition a bit data type was created for having sewn before. The designer and company created for their own table to include information about each. Such as names and websites. Notes for the designer in case they were known for something were added. Company has data established and a bit datatype for if it’s still in business. The pattern is for what the purpose of the pattern is for. Such as is it a shirt or a skirt. A notes section was added to include better descriptions. The junction table PatternBody was created for the many to many relationship as pattern can be for more than one person such as a pattern for women and a child. Same with pattern sizes as a pattern will include multiple sizes. The size table includes the size classifications and the standardized measures to references on such as chest, waist, and hip that correlate to the size. 

The functions and stored procedures are basic in that it’s more of a lookup system which is what it’s majorly will be used for. However, there is a stored procedure for adding new companies such as independent sewing patterns with validation to check if the company is added in. 

#Description of Files

- FP_CZiesman1.sql	Creates the Database
- FP_CZiesman2.sql	Creates Tables: BodyShape, PatternSize, Designer, Company, PatternType, Patterns, and Junction Table for Patterns, Sizes, and Body Information
- FP_CZiesman3.sql	Insert records into PatternSize, BodyShape, Designer, Company, PatternType Tables
- FP_CZiesman4.sql	Insert records into Patterns Tables
- FP_CZiesman5.sql	Inserts records into Junction Table PatternBody Table
- FP_CZiesman6.sql	Creates Summary View vwPatternOverview of Total Number of Patterns
- FP_CZiesman7.sql	Creates View vwPatternInfo showing information about each pattern
- FP_CZiesman8.sql	Creates Stored Procedure spPatternLook for looking up Patterns by Label
- FP_CZiesman9.sql	Creates fnDesigner for Designer Look Up with CTE Requirement
- FP_CZiesman10.sql	Creates Stored Procedure spAddCompany with custom error message validation
- FP_CZiesman11.sql	Test script for FP_CZiesman10.sql
- FP_CZiesman12.sql	Creates Login ‘patternMaster’
- FP_CZiesman13.sql	Creates User ‘patternMaster’ for Login
- FP_CZiesman14.sql	Creates Role ‘patternMaintenance’ and adds ‘patternMaster’
- FP_CZiesman15.png	Screenshot of attached database in Management Studio
- FP_CZiesman16.png	Screenshot of database diagram in Management Studio
- FP_CZiesman17.xlsx	Excel spreadsheet of database design

## How to Use

To create and run the database from start. Start at FP_CZiesman1.sql. Go down the list of files and stop before FPCZiesman15.png.
The order of executing each file is listed below. 

1. FP_CZiesman1.sql
2. FP_CZiesman2.sql
3. FP_CZiesman3.sql
4. FP_CZiesman4.sql
5. FP_CZiesman5.sql
6. FP_CZiesman6.sql
7. FP_CZiesman7.sql
8. FP_CZiesman8.sql
9. FP_CZiesman9.sql
10. FP_CZiesman10.sql
11. FP_CZiesman11.sql
12. FP_CZiesman12.sql
13. FP_CZiesman13.sql
14. FP_CZiesman14.sql 

Each SQL file is broken up into 14 files and labeled with the step number as well to keep track which step goes with which file.  
