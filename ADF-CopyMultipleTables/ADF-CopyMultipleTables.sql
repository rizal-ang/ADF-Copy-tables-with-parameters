--------------------------------------------------------------------------------------
-- A script to create a config table that lists all source and destination information
--------------------------------------------------------------------------------------
IF OBJECT_ID('[dbo].[Config]', 'U') IS NOT NULL DROP TABLE [dbo].[Config]
GO

CREATE TABLE [dbo].[Config](
    [rowId] [int] IDENTITY(1,1) PRIMARY KEY,    
    [SourcePlatform] [varchar](100) NULL,
    [SourceLayer] [varchar](100) NULL,    
    [SourceFolder] [varchar](100) NULL,
    [SourceSchema] [varchar](100) NULL,
    [SourceItem] [varchar](100) NULL,
    [SourceColumns] [varchar](8000) NULL,
    [SinkPlatform] [varchar](100) NULL,
    [SinkLayer] [varchar](100) NULL,
    [SinkFolder] [varchar](100) NULL,
    [SinkSchema] [varchar](100) NULL,
    [SinkItem] [varchar](100) NULL
)
GO

INSERT INTO [dbo].[Config] ([SourcePlatform], [SourceLayer], [SourceFolder], [SourceSchema], [SourceItem], [SourceColumns], [SinkPlatform], [SinkLayer], [SinkFolder], [SinkSchema], [SinkItem]) 
VALUES ('ra-sqldb', NULL, NULL, 'dbo', 'Table1','rowId','adl1','raw','folder1',NULL,'Table1')
INSERT INTO [dbo].[Config] ([SourcePlatform], [SourceLayer], [SourceFolder], [SourceSchema], [SourceItem], [SourceColumns], [SinkPlatform], [SinkLayer], [SinkFolder], [SinkSchema], [SinkItem]) 
VALUES ('ra-sqldb', NULL, NULL, 'dbo', 'Table2','Value','adl1','raw','folder1',NULL,'Table2')
INSERT INTO [dbo].[Config] ([SourcePlatform], [SourceLayer], [SourceFolder], [SourceSchema], [SourceItem], [SourceColumns], [SinkPlatform], [SinkLayer], [SinkFolder], [SinkSchema], [SinkItem]) 
VALUES ('ra-sqldb', NULL, NULL, 'dbo', 'Table3','rowId,Value','adl1','raw','folder1',NULL,'Table3')

SELECT * FROM dbo.config

--------------------------------------------------------------------------------------
-- A script to create 3 source dummy tables for demo
--------------------------------------------------------------------------------------
IF OBJECT_ID('[dbo].[Table1]', 'U') IS NOT NULL DROP TABLE [dbo].[Table1]
GO

CREATE TABLE [dbo].[Table1](
    [rowId] [int] IDENTITY(1,1) PRIMARY KEY,    
    [Value] [varchar](100) NULL
)

IF OBJECT_ID('[dbo].[Table2]', 'U') IS NOT NULL DROP TABLE [dbo].[Table2]
GO

CREATE TABLE [dbo].[Table2](
    [rowId] [int] IDENTITY(1,1) PRIMARY KEY,    
    [Value] [varchar](100) NULL
)

IF OBJECT_ID('[dbo].[Table3]', 'U') IS NOT NULL DROP TABLE [dbo].[Table3]
GO

CREATE TABLE [dbo].[Table3](
    [rowId] [int] IDENTITY(1,1) PRIMARY KEY,    
    [Value] [varchar](100) NULL
)

INSERT INTO [dbo].[Table1] ([value]) VALUES ('table 1 value 1')
INSERT INTO [dbo].[Table1] ([value]) VALUES ('table 1 value 2')
INSERT INTO [dbo].[Table1] ([value]) VALUES ('table 1 value 3')
INSERT INTO [dbo].[Table2] ([value]) VALUES ('table 2 value 1')
INSERT INTO [dbo].[Table2] ([value]) VALUES ('table 2 value 2')
INSERT INTO [dbo].[Table2] ([value]) VALUES ('table 2 value 3')
INSERT INTO [dbo].[Table3] ([value]) VALUES ('table 3 value 1')
INSERT INTO [dbo].[Table3] ([value]) VALUES ('table 3 value 2')
INSERT INTO [dbo].[Table3] ([value]) VALUES ('table 3 value 3')
GO

SELECT * FROM dbo.Table1
SELECT * FROM dbo.Table2
SELECT * FROM dbo.Table3
