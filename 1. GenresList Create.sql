USE [Cinema]
GO

CREATE TABLE [GenresList](
	[GenreId] int IDENTITY(1,1),
	[GenreName] nvarchar(15) NOT NULL
)

ALTER TABLE [GenresList]
ADD CONSTRAINT PK_GenresList_GenreID PRIMARY KEY CLUSTERED (GenreID)
GO

ALTER TABLE [GenresList]
ADD CONSTRAINT DF_GenresList_GenreName_Unique UNIQUE (GenreName)
GO

INSERT INTO [GenresList] ([GenreName]) VALUES
('Drama'),
('Crime'),
('Action'),
('Adventure'),
('Sci-Fi'),
('Mystery'),
('Thriller'),
('Comedy')