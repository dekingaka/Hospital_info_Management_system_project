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