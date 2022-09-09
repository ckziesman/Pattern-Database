/*	Name:		Cassandra Ziesman
	Class:		CIS276DB
	Section:	16677
	Assignment:	Final Step 7
*/

-- Create View Script 7-19-2021
USE CAS2033209
GO

-- Creates PatternInfo View

CREATE VIEW vwPatternInfo
AS 
SELECT DISTINCT	Patterns.PatternID,
			PatternLabelNo,
			CompanyName AS Company,
			DesignerName AS Designer,
			BodyCategory AS Category,
			(SELECT Size FROM PatternSize WHERE SizeID = (SELECT MIN(SizeID) FROM PatternBody WHERE Patterns.PatternID = PatternBody.PatternID)) AS MinSize,
			(SELECT Size FROM PatternSize WHERE SizeID = (SELECT MAX(SizeID) FROM PatternBody WHERE Patterns.PatternID = PatternBody.PatternID)) AS MaxSize,
			CASE
				WHEN SewnBefore = 0 THEN 'No'
				WHEN SewnBefore = 1 THEN 'Yes'
			END AS HasSewn
FROM dbo.Patterns JOIN Company on Patterns.CompanyID = Company.CompanyID
	JOIN Designer ON Patterns.DesignerID = Designer.DesignerID
	JOIN PatternBody ON Patterns.PatternID = PatternBody.PatternID
	JOIN BodyShape ON PatternBody.BodyID = BodyShape.BodyID;