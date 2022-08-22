CREATE TABLE [s1].[Notes] (
    [id]         INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID] INT            NOT NULL,
    [NoteText]   NVARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([CustomerID]) REFERENCES [s1].[Customers] ([id])
);

