/*	Name:		Cassandra Ziesman
	Class:		CIS276DB
	Section:	16677
	Assignment:	Final Step 8
*/

-- Create Stored Procedure Script 7-19-2021
USE CAS2033209
GO

CREATE PROC spPatternLook
	@PatternNo varchar(5)
AS 
	SELECT *
	FROM vwPatternInfo 
	WHERE PatternLabelNo = @PatternNo;