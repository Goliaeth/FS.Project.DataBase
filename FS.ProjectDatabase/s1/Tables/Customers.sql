CREATE TABLE [s1].[Customers] (
    [id]                   INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]            NVARCHAR (50) NULL,
    [LastName]             NVARCHAR (50) NOT NULL,
    [PhoneNumber]          NVARCHAR (15) NULL,
    [Email]                NVARCHAR (50) NOT NULL,
    [TotalPurchasesAmount] MONEY         NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CHECK ([Email] like '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%' AND NOT [Email] like '%["<>'']%')
);

