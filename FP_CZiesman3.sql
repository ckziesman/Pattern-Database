/*	Name:		Cassandra Ziesman
	Class:		CIS276DB
	Section:	16677
	Assignment:	Final Step 3
*/
-- INSERTING RECORDS INTO TABLES 7-19-2021

USE CAS2033209
GO 
-- INSERTING RECORDS INTO SIZE TABLE 
INSERT INTO PatternSize 
	VALUES
		('c 1/2', 19, 19, NULL),
		('c 1', 20, 19.5, NULL),
		('c 2', 21, 20, NULL),
		('c 3', 22, 20.5, NULL),
		('c 4', 23, 21, NULL),
		('w 6', 30.5, 23, 32.5),
		('w 8', 31.5, 24, 33.5),
		('w 10', 32.5, 25, 34.5),
		('w 12', 34, 26.5, 36),
		('w 14', 36, 28, 38),
		('w 16', 38, 30, 40),
		('w 18', 40, 32, 42),
		('w 20', 42, 34, 44),
		('w 22', 44, 37, 46),
		('w 24', 46, 40, 48),
		('m 34', 34, 28, 35),
		('m 36', 36, 30, 37),
		('m 38', 38, 32, 39),
		('m 40', 40, 34, 41),
		('m 42', 42, 36, 43),
		('m 44', 44, 39, 45),
		('m 46', 46, 42, 47),
		('m 48', 48, 44, 49),
		('m 50', 50, 46, 51),
		('m 52', 52, 48, 53),
		('XS', 32, 37, 34),
		('S', 36, 30, 37),
		('M', 40, 34, 41),
		('L', 44, 39, 45),
		('XL', 48, 44, 49),
		('XXL', 52, 48, 53);

-- INSERTING RECORDS INTO BODY SHAPE TABLE

INSERT INTO BodyShape
	VALUES 
		('Children'),
		('Costume'),
		('Women'),
		('Men'),
		('Unisex'),
		('Accessories');

-- INSERT RECORDS INTO DESIGNER TABLE
INSERT INTO Designer
	VALUES 
		('Tracy Reese', 'https://hopeforflowers.com/', NULL),
		('Disney Princess', 'http://disney.com/', NULL),
		('Nancy Farris-Thee', 'https://www.facebook.com/historicclothingspecialist.nancyfarristhee/', NULL),
		('Vogue Wardrobe', NULL, 'In House Brand'),
		('Yaya Han', 'https://www.yayahan.com/', 'Cosplayer'),
		('Learn to Sew', NULL, 'In House Brand'),
		('Donna Karan', 'https://www.donnakaran.com/', NULL),
		('Cynthia Rowley', 'https://cynthiarowley.com/', NULL),
		('Vintage Vogue', NULL, 'In House Brand'),
		('Guy Laroche', 'http://www.guylaroche.com/', NULL),
		('Mimi G Style', 'https://mimigstyle.com/', 'Sewing Blogger'),
		('Angela Clayton', 'https://angelacostumery.com/', 'Sewing Blogger'),
		('No Designer', NULL, NULL);

-- INSERT RECORDS INTO COMPANY
INSERT INTO Company
	VALUES 
		('Simplicity', '1927-01-01', 'https://www.simplicity.com/', 1),
		('McCalls', '1870-01-01', 'https://somethingdelightful.com/mccalls/', 1),
		('Butterick', '1863-01-01', 'https://somethingdelightful.com/butterick/', 1),
		('Vogue Patterns', '1899-01-01', 'https://somethingdelightful.com/vogue-patterns/', 1),
		('Cut/Sew', '2016-01-01', 'http://cutsew.co', 1),
		('Kwik Sew', '1967-01-01', 'https://somethingdelightful.com/kwik-sew/', 1),
		('New Look', '1932-01-01', 'https://www.simplicity.com/', 1);

-- INSERT RECORDS INTO PATTERNTYPE

INSERT INTO PatternType
	VALUES
		('Shirt', NULL),
		('Jeans', NULL),
		('Skirt', NULL),
		('Bag', NULL),
		('Dress Shirt', NULL),
		('Hoodie', NULL),
		('Blouse', NULL),
		('Shorts', NULL),
		('Pajamas', NULL),
		('Swimsuit', NULL),
		('Sweatshirt', NULL),
		('Jacket', NULL),
		('Coat', NULL),
		('Pants', NULL),
		('Vest', NULL),
		('Dress', NULL),
		('Hat', NULL),
		('Suit', NULL);