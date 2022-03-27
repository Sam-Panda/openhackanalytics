IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tablses_to_copy]') AND type in (N'U'))
DROP TABLE [dbo].[tablses_to_copy]
GO


CREATE TABLE [dbo].[tablses_to_copy] 
(
    ID INT PRIMARY KEY IDENTITY(1,1),
    SCHEMA_NAME VARCHAR(50),
    TABLE_NAME VARCHAR(50),
    FULLOAD INT --1/0 1= yes, 0 =no
)

GO

INSERT INTO [dbo].[tablses_to_copy] 
Select 'SalesLT','Address','1'

GO

INSERT INTO [dbo].[tablses_to_copy] 
Select 'SalesLT','Customer','1'


