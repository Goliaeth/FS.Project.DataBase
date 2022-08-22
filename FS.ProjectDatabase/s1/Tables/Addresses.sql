﻿CREATE TABLE [s1].[Addresses] (
    [id]           INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]   INT            NOT NULL,
    [AddressLine]  NVARCHAR (100) NOT NULL,
    [AddressLine2] NVARCHAR (100) NULL,
    [AddressType]  NVARCHAR (20)  NOT NULL,
    [City]         NVARCHAR (50)  NOT NULL,
    [PostalCode]   NVARCHAR (6)   NOT NULL,
    [State]        NVARCHAR (20)  NOT NULL,
    [Country]      NVARCHAR (20)  NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CHECK ([AddressType]='Billing' OR [AddressType]='Shipping'),
    CHECK ([Country]='Canada' OR [Country]='United States'),
    FOREIGN KEY ([CustomerID]) REFERENCES [s1].[Customers] ([id])
);

