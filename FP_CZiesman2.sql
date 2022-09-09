/*	Name:		Cassandra Ziesman
	Class:		CIS276DB
	Section:	16677
	Assignment:	Final Step 2
*/

-- CREATE TABLE WITH COLUMNS 7-19-2021
USE CAS2033209
GO

-- Creates Table to define what the type of pattern is for IE: children's pattern or costume
CREATE TABLE BodyShape
	(BodyID			INT				PRIMARY KEY IDENTITY,
	BodyCategory	VARCHAR(25)		NOT NULL)

-- Creates Table for Pattern Sizes
CREATE TABLE PatternSize 
	(SizeID			INT				PRIMARY KEY IDENTITY,
	Size			VARCHAR(5)		NOT NULL,
	ChestWidth		INT				NULL,
	WaistWidth		INT				NULL,
	Hip				INT				NULL)

-- Creates Table for Designer Information
CREATE TABLE Designer 
	(DesignerID		INT				PRIMARY KEY IDENTITY,
	DesignerName	VARCHAR(50)		NOT NULL,
	DesignWebsite	VARCHAR(75)		NULL,
	DesignNotes		VARCHAR(200)	NULL);

-- Creates Table for Pattern Company Information
CREATE TABLE Company
	(CompanyID		INT				PRIMARY KEY IDENTITY,
	CompanyName		VARCHAR(50)		NOT NULL,
	DateEstablished DATE			NOT NULL,
	Website			VARCHAR(75)		NULL,
	InBusiness		BIT				NOT NULL);

-- Creates Table for Pattern Type
CREATE TABLE PatternType
	(TypeID			INT				PRIMARY KEY IDENTITY,
	PatternType		VARCHAR(25)		NOT NULL,
	Notes			VARCHAR(200)	NULL)

-- Creates Table for Pattern Information
CREATE TABLE Patterns 
	(PatternID		INT				PRIMARY KEY IDENTITY,
	PatternLabelNo	VARCHAR(6)		NOT NULL,
	CompanyID		INT				REFERENCES Company (CompanyID),
	DesignerID		INT				REFERENCES Designer (DesignerID),
	TypeID			INT				REFERENCES PatternType (TypeID),
	SewnBefore		BIT				NOT NULL,
	Published		DATE			NULL
	);

-- Creates Junction Table for Patterns, Sizes, and Body Information
CREATE TABLE PatternBody
	(PatternID		INT				REFERENCES Patterns (PatternID),
	BodyID			INT				REFERENCES BodyShape (BodyID),
	SizeID			INT				REFERENCES PatternSize (SizeID));
