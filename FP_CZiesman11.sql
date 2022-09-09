/*	Name:		Cassandra Ziesman
	Class:		CIS276DB
	Section:	16677
	Assignment:	Final Step 11
*/

-- Custom Error Test Script 7-19-2021
USE CAS2033209
GO 
BEGIN TRY 
	EXEC spAddCompany
			'Simplicity', '1943-01-10', 'http://sample.com', 0;
END TRY
BEGIN CATCH
	PRINT 'An error occured.'
	PRINT 'Message: ' + ERROR_MESSAGE()
END CATCH;