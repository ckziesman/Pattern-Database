/*	Name:		Cassandra Ziesman
	Class:		CIS276DB
	Section:	16677
	Assignment:	Final Step 14
*/

-- Create Role and Add Member 7-19-2021

USE CAS2033209
GO 
CREATE SERVER ROLE patternMaintenance;
GRANT INSERT, UPDATE, SELECT 
ON PatternSize
TO patternMaintenance
GRANT INSERT, UPDATE, SELECT 
ON Patterns
TO patternMaintenance
GRANT INSERT, UPDATE, SELECT 
ON Company
TO patternMaintenance
GRANT INSERT, UPDATE, SELECT 
ON Designer
TO patternMaintenance
GRANT INSERT, UPDATE, SELECT 
ON PatternType
TO patternMaintenance
GRANT INSERT, UPDATE, SELECT 
ON PatternyBody
TO patternMaintenance;
ALTER SERVER ROLE patternMaintenance ADD MEMBER patternMaster;
