/*	Name:		Cassandra Ziesman
	Class:		CIS276DB
	Section:	16677
	Assignment:	Final Step 10
*/

-- Creates Add Company Proc with Validation 7-19-2021

USE CAS2033209
GO
CREATE PROC spAddCompany
      @CompanyName varchar(50),
      @DateEstablished date,
      @Website varchar(75),
      @InBusiness bit
AS
IF EXISTS (SELECT CompanyName FROM Company WHERE CompanyName = @CompanyName)
	BEGIN 
		RAISERROR ('Company already exists.', 11, 1)
	END
ELSE 
	BEGIN 
		INSERT Company
			VALUES (@CompanyName, @DateEstablished, @Website, @InBusiness)
	END 


