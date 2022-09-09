/*	Name:		Cassandra Ziesman
	Class:		CIS276DB
	Section:	16677
	Assignment:	Final Step 9
*/

-- Create Function Script for Designer Look Up with CTE 7-19-2021
USE CAS2033209
GO

CREATE FUNCTION fnDesigner
	(@DesignerID int = 13)
	RETURNS table
RETURN 
	WITH avgDesignPatterns AS (
		SELECT DesignerID, COUNT(PatternID) AS PatternAmount
		FROM Patterns
		GROUP BY DesignerID)
	(SELECT Designer.DesignerID,
		DesignerName, 
		DesignWebsite,
		DesignNotes,
		avgDesignPatterns.PatternAmount
	FROM Designer
	JOIN avgDesignPatterns ON avgDesignPatterns.DesignerID = Designer.DesignerID
	WHERE NOT Designer.DesignerID = @DesignerID)