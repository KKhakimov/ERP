USE [Cinema]
GO

CREATE TABLE [RoomsList](
	[RoomID] int IDENTITY(1,1),
	[RoomSeatsCount] int NOT NULL
)

ALTER TABLE [RoomsList]
ADD CONSTRAINT PK_RoomsList_RoomID PRIMARY KEY CLUSTERED (RoomID)
GO

INSERT INTO [RoomsList] ([RoomSeatsCount]) VALUES
('370'),
('370'),
('370'),
('50'),
('50'),
('50'),
('50'),
('50'),
('240'),
('240'),
('120'),
('120')