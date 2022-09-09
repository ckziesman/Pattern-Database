/*	Name:		Cassandra Ziesman
	Class:		CIS276DB
	Section:	16677
	Assignment:	Final Step 6
*/

-- Create Views Script 7-19-2021
USE CAS2033209
GO

CREATE VIEW vwPatternOverview
AS 
SELECT	COUNT(PatternID) AS TotalPattern,
		(SELECT COUNT(PatternID) FROM Patterns WHERE CompanyID = 1) AS TotalSimplicity,
		(SELECT COUNT(PatternID) FROM Patterns WHERE CompanyID = 2) AS TotalMccalls,
		(SELECT COUNT(PatternID) FROM Patterns WHERE CompanyID = 3) AS TotalButterick,
		(SELECT COUNT(PatternID) FROM Patterns WHERE CompanyID = 4) AS TotalVogue,
		(SELECT COUNT(PatternID) FROM Patterns WHERE CompanyID = 5) AS TotalCutSew,
		(SELECT COUNT(PatternID) FROM Patterns WHERE CompanyID = 6) AS TotalKwikSew,
		(SELECT COUNT(PatternID) FROM Patterns WHERE CompanyID = 7) AS TotalNewLook
FROM dbo.Patterns 