CREATE TABLE [dbo].[Staff] (
    [Staff_number]   NVARCHAR(50)           NOT NULL,
    [Password]       NVARCHAR (50) NOT NULL,
    [Name]           NVARCHAR (50) NOT NULL,
    [Surname]        NVARCHAR (50) NOT NULL,
    [homeAddress]    NVARCHAR (50) NOT NULL,
    [contact_number] NCHAR (10)    NOT NULL,
    PRIMARY KEY CLUSTERED ([Staff_number] ASC)
);