USE HIMS
GO  



Create View View_ServiceDetails
AS
Select ST.Name As ServiceType,SC.Name As ServiceCategory,S.Name As ServiceName,Rate,CompanyId
from dbo.Service S
Inner Join dbo.ServiceCategory SC On S.ServiceCategoryId=SC.ServiceCategoryId
Inner Join dbo.ServiceType ST On S.[ServiceTypeID]=ST.[ServiceTypeID]
Go


Create View View_Patient
AS
Select [PatientID]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,g.Name As Gender
      ,[DateOfBirth]
      ,[ContactNo1]
      ,[ContactNo2]
      ,[Email]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Pincode]
	  ,C.Name As City
	  from Patient P
Inner Join Gender g
On P.GenderID=g.GenderID
Inner Join City C
On P.CityID=C.CityID
Go


SELECT * 
FROM sys.tables
ORDER BY name


Create View View_Doctor
AS
Select DoctorID
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
	  ,Qualification
	  ,dp.Name AS Department
      ,g.Name As Gender
      ,[DateOfBirth]
      ,[ContactNo1]
      ,[ContactNo2]
      ,[Email]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Pincode]
	  ,C.Name As City
	  from Doctor d
Inner Join Gender g
On d.GenderID=g.GenderID
Inner Join City C
On d.CityID=C.CityID
Inner Join Department dp
On d.DepartmentID=dp.DepartmentID
GO



Create View View_Staff
AS
Select StaffID
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
	  ,dp.Name AS Department
      ,g.Name As Gender
      ,[DateOfBirth]
      ,[ContactNo1]
      ,[ContactNo2]
      ,[Email]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Pincode]
	  ,C.Name As City
	  from Staff s
Inner Join Gender g
On s.GenderID=g.GenderID
Inner Join City C
On s.CityID=C.CityID
Inner Join Department dp
On s.DepartmentID=dp.DepartmentID
GO




select *
from sys.views