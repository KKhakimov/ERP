USE [Cinema]
GO

CREATE TABLE [MoviesList](
	[MovieId] int IDENTITY(1,1),
	[MovieTitle] nvarchar(50) NOT NULL,
	[MovieReleaseYear] datetime NOT NULL,
	[MovieGenreID] int NOT NULL
)

ALTER TABLE [MoviesList]
ADD CONSTRAINT PK_MoviesList_MovieID PRIMARY KEY CLUSTERED (MovieID)
GO

ALTER TABLE [MoviesList]
ADD CONSTRAINT FK_MoviesList_GenresList_Genre FOREIGN KEY (MovieGenreID) REFERENCES GenresList(GenreID)
GO

ALTER TABLE [MoviesList]
ADD CONSTRAINT DF_MoviesList_MovieTitle_Unique UNIQUE (MovieTitle)
GO

INSERT INTO [MoviesList] ([MovieTitle], [MovieReleaseYear], [MovieGenreID]) VALUES
('The Shawshank Redemption', '19941014', '1'),
('The Godfather', '19720324', '2'),
('The Godfather: Part II', '19741218', '2'),
('The Dark Knight', '20080814', '3'),
('The Lord of the Rings: The Return of te King', '20030122', '4'),
('Pulp Fiction', '19950929', '2'),
('Fight Club', '20000113', '1'),
('The Matrix', '19991014', '5'),
('Inception', '20100722', '3'),
('Seven', '19950922', '6'),
('The Silence of the Lambs', '19910214', '7'),
('Saving Private Ryan', '19981009', '1'),
('Interstellar', '20141106', '4'),
('Leon', '19980923', '1'),
('Back to the Future', '19850703', '8')