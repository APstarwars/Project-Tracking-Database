/* SQL file to insert sample data into the database for demoing */

USE mvonblan_cs355fl20;

/* Created by Emily Ashley */
INSERT INTO Customers (customerName, contactName, contactTitle, contactPhoneNum, salesperson, projectManager)
VALUES
	('Sprint Copy Center', 'any contact', 'purchasing', '707-823-3900', 'sls1', 'pm1'),
	('Common Sense Business Solutions', 'some contact', 'manager', '707-528-2151', 'sls2', 'pm2'),
	('Sonoma Design Apparel & Promotions', 'another contact', 'facilities', '707-578-4739', 'sls3', 'pm3'),
	('Applied Signs', 'good contact', 'purchasing', '707-202-4569', 'sls3', 'pm3'),
	('ChromaGraphics', 'fav contact', 'manager', '707-528-2644', 'sls2', 'pm2'),
	('Clone Digital Print & Copy', 'one contact', 'facilities', '707-527-6565', 'sls1', 'pm1'),
	('E.R. Sawyer Jewelers', 'helpful contact', 'purchasing', '707-963-0239', 'sls2', 'pm2'),
	('GW2 Printing', 'my contact', 'manager', '707-528-2503', 'sls1', 'pm1'),
	('Barlow Printing', 'any contact', 'facilities', '707-664-9773', 'sls3', 'pm3'),
	('Sonoma-USA', 'some contact', 'purchasing', NULL, 'sls2', 'pm2'),
	('TekTailor, Inc', 'another contact', 'manager', NULL, 'sls3', 'pm3'),
	('Sonoma County Economic Development Board', 'good contact', 'facilities', '707-565-7170', 'sls1', 'pm1'),
	('GreenLynx Woodworks', 'fav contact', 'purchasing', '707-787-5969', 'sls1', 'pm1'),
	('MISSION Engineering Inc', 'one contact', 'manager', '866-333-1828', 'sls2', 'pm2'),
	('E.R. Sawyer Jewelers St Helena', 'helpful contact', 'facilities', '707-963-0239', 'sls3', 'pm3');

INSERT INTO Locations (customer, address1, address2, city, state, zip)
VALUES
	(1, '175 N Main Street', NULL, 'Sebastopol', 'CA', '95472'),
	(2, '2208 Northpoint Parkway', NULL, 'Santa Rosa', 'CA', '95407'),
	(3, '3510 Airway Dr', NULL, 'Santa Rosa', 'CA', '95403'),
	(4, '1700 Piner Rd #C', NULL, 'Santa Rosa', 'CA', '95403'),
	(5, '440 Tesconi Circle', NULL, 'Santa Rosa', 'CA', '95401'),
	(6, '618 5th St.', NULL, 'Santa Rosa', 'CA', '95404'),
	(7, '638 Fourth Street', NULL, 'Santa Rosa', 'CA', '95404'),
	(8, '1350 Central Ave Ste 1', NULL, 'Santa Rosa', 'CA', '95401'),
	(9, '481 Aaron St', NULL, 'Cotati', 'CA', '94931'),
	(10, '3253 Santa Rosa Ave.', NULL, 'Santa Rosa', 'CA', '95407'),
	(11, '3253 Santa Rosa Ave', NULL, 'Santa Rosa', 'CA', '95407'),
	(12, '141 Stony Circle Suite 110', NULL, 'Santa Rosa', 'CA', '95401'),
	(13, '3260 Santa Rosa Ave', NULL, 'Santa Rosa', 'CA', '95407'),
	(14, '1736 Corporate Circle', NULL, 'Petaluma', 'CA', '94954'),
	(15, '1343 Main St', NULL, 'St Helena', 'CA', '94574');

/* Created by Becca Solomon */	
INSERT INTO Projects (projectName, customer, location, status, orderManager, projectDesigner, targetInstallDate, orderingInstructions)
VALUES
	('waiting room chairs', 1, 1, 'in progress', 'om1', 'pm1', '2020-10-20', 'request to ship with previous order'),
    	('desks', 2, 2, 'completed', 'om2', 'pm2', '2020-11-20', 'brushed steel finish for bases'),
    	('keyboard trays', 3, 3, 'in progress', 'om3', 'pm3', '2020-12-15', 'spiff to sales'),
    	('mail slot organizer', 4, 4, 'in progress', 'om3', 'pm3', '2020-12-20', 'bill freight to customer at actual'),
    	('file cabinet', 5, 5, 'completed', 'om1', 'pm1', '2020-01-17', 'match color to last order'),
    	('8 workstations', 6, 6, 'completed', 'om2', 'pm2', '2021-01-30', 'specials have longer lead time, split out, request to have all delivered together'),
    	('stools', 7, 7, 'in progress', 'om2', 'pm2', '2021-02-04', 'schedule delivery with customer directly'),
    	('drafting tables, stools', 8, 8, 'completed', 'om3', 'pm3', '2020-08-12', 'verify stool height compatible with tables'),
    	('reception desk', 9, 9, 'completed', 'om1', 'pm1', '2020-08-23', 'special order wood stain "chocolate sapele" on oak for front and natural on maple for surface'),
    	('chair', 10, 10, 'in progress', 'om1', 'pm1', '2021-03-07', 'special order "true black" finish'),
    	('chair', 11, 11, 'in progress', 'om2', 'pm2', '2021-03-21', 'contact customer to arrange delivery'),
    	('reconfigure cubicles', 12, 12, 'completed', 'om3', 'pm3', '2020-09-25', 'write in "20 bright white" for finished end color selection'),
    	('work tables', 13, 13, 'in progress', 'om3', 'pm1', '2021-06-14', 'special size, see diagram in packet'),
    	('11 workstations', 14, 14, 'completed', 'om1', 'pm2', '2020-09-25', 'chair ships direct to customer, tag for Bob'),
    	('stool', 15, 15, 'completed', 'om2', 'pm3', '2020-09-20', 'match to customer standards before ordering');
    
INSERT INTO Installations (project, installationLead, installationDate, installationInstructions)
VALUES 
	(1, 'iL1', '2020-11-11', 'use back entrance'),
	(2, 'iL2', '2020-11-28', 'call one hour before installation'),
	(3, 'iL3', '2020-12-30', 'install half in room 204 and half in 205'),
	(3, 'iL3', '2021-1-14', 'install backordered keyboard trays'),
	(4, 'iL3', '2020-12-30', 'use back entrance'),
	(5, 'iL4', '2021-02-11', 'elevator requires key card, call reception on floor 8 to have someone let you up'),
	(6, 'iL1', '2021-02-15', 'use back entrance'),
	(6, 'iL1', '2021-02-28', '2nd trip to install backordered product'),
	(7, 'iL7', '2021-02-28', 'call one hour before installation'),
	(8, 'iL3', '2020-08-15', 'use back entrance'),
	(9, 'iL2', '2020-08-25', 'install half on floor 2 and half on floor 3'),
	(10, 'iL7', '2021-02-28', 'use back entrance'),
	(11, 'iL7', '2021-02-28', 'elevator requires key card, call reception on floor 6 to have someone let you up'),
	(12, 'iL1', '2021-07-16', 'call one hour before installation'),
	(13, 'iL2', '2021-07-19', 'install half in office 7 and half in office 12'),
	(14, 'iL3', '2021-08-02', 'use back entrance'),
	(15, 'iL4', '2021-08-12', 'call one hour before installation');

INSERT INTO Orders (project, vendor, contractNumber, vendorOrderNumber, arrivalDate)
VALUES
	(1, 'v1', 'cn1', 'von1', '2020-11-11'),
	(2, 'v2', 'cn2', 'von2', '2020-11-28'),
	(2, 'v1', 'cn1', 'von16', '2020-11-25'),
	(3, 'v3', 'cn3', 'von3', '2020-12-20'),
	(4, 'v4', 'cn4', 'von4', '2020-12-30'),
	(5, 'v5', 'cn5', 'von5', '2021-02-11'),
	(6, 'v1', 'cn1', 'von17', '2021-02-15'),
	(6, 'v2', 'cn2', 'von18', '2021-02-02'),
	(6, 'v3', 'cn3', 'von19', '2021-02-10'),
	(7, 'v7', 'cn7', 'von7', '2021-02-28'),
	(8, 'v8', 'cn8', 'von8', '2020-08-15'),
	(9, 'v9', 'cn9', 'von9', '2020-08-25'),
	(10, 'v1', 'cn9', 'von10', '2021-02-28'),
	(11, 'v1', 'cn9', 'von11', '2021-02-28'),
	(12, 'v3', 'cn3', 'von12', '2021-07-16'),
	(13, 'v4', 'cn4', 'von13', '2021-07-19'),
	(14, 'v1', 'cn7', 'von20', '2021-08-02'),
	(14, 'v2', 'cn2', 'von21', '2021-07-31'),
	(14, 'v3', 'cn3', 'von22', '2021-07-09'),
	(15, 'v1', 'cn1', 'von15', '2021-08-12');
