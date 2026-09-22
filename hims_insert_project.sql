
USE HIMS; 
GO

SET NOCOUNT ON
Print 'Master Data Insert'
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('Self',1,1)
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('Company',1,1)
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('Staff',1,1)
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('StaffDependent',1,1)
GO

Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Cardiology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Gynaecology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Medicine',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Nephrology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Ophthalmology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Orthopedic',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Paediatrics',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Physiotherapy',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Neurology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Surgery',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Dental',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('ENT',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Administration',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Reception',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Billing',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Store',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Account',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Maintainance',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Bio-Medical',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Computer(IT)',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Pathology',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Radiology',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Nursing',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Pharmacy',0,1,1)
GO


Insert Into Gender(Name,AddedBy,UpdatedBy) Values ('Male',1,1)
Insert Into Gender(Name,AddedBy,UpdatedBy) Values ('Female',1,1)
GO


Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Star Health',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Medicaid',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('NIDC',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Attamahs Healthcare',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('De-kings Healthcare',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('The oriental Insurance company',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Care Health Insurance',1,1)
GO

Insert Into Nationality(Name,AddedBy,UpdatedBy) Values ('Nigerian',1,1)
GO

SELECT *
FROM Nationality

DELETE FROM Nationality
WHERE Name = 'Indian';

UPDATE Nationality
SET NationalityID = 1
WHERE NationalityID = 2;

Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Self',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Spouse',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Child',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Friend',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Father',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Mother',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Son',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Brother',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Sister',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Daughter',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Sister In Law',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Brother In Law',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Grand Father',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Grand Mother',1,1)
GO


Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Cardiology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Gynaecology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Medicine',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Nephrology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Ophthalmology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Orthopedic',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Paediatrics',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Physiotherapy',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Neurology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Surgery',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Dental',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('ENT',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Pathology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Radiology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Nursing',1,1)
GO


Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 1',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 2',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 3',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 4',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 5',1,1)
GO


Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('General Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Male Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Female Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('pediatric ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Special Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Semi Special ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Geneal Ward II',1,1,1)
GO

Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 1',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 2',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 3',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 4',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 5',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 6',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 7',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 8',6,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 9',6,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 10',6,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 11',7,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 12',7,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 13',7,1,1)
GO