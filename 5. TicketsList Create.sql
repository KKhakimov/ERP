USE [Cinema]
GO

CREATE TABLE [TicketsList](
	[TicketID] int IDENTITY(1,1),
	[TicketScheduleID] int NOT NULL,
	[TicketPlace] int NOT NULL
)

ALTER TABLE [TicketsList]
ADD CONSTRAINT PK_TicketsList_TicketID PRIMARY KEY (TicketID)
GO

ALTER TABLE [TicketsList]
ADD CONSTRAINT FK_TicketsList_SchedulesList_Schedulr FOREIGN KEY (TicketScheduleID) REFERENCES SchedulesList(ScheduleID)
GO

INSERT INTO [TicketsList] ([TicketScheduleID], [TicketPlace]) VALUES
('1', '13'),
('2', '41'),
('3', '1'),
('52', '3'),
('82', '48'),
('94', '19'),
('245', '18'),
('365', '18'),
('376', '17'),
('497', '2'),
('525', '32'),
('586', '11'),
('588', '23'),
('589', '19'),
('592', '17'),
('678', '45'),
('683', '24'),
('685', '32'),
('687', '39'),
('689', '38'),
('701', '48'),
('724', '45'),
('742', '37'),
('795', '57'),
('821', '35'),
('823', '15'),
('840', '17'),
('857', '15'),
('876', '14'),
('899', '37'),
('922', '38'),
('924', '48'),
('935', '25'),
('938', '27'),
('940', '29'),
('941', '27'),
('942', '38'),
('943', '49'),
('944', '34'),
('945', '27'),
('946', '38'),
('948', '48'),
('945', '47'),
('965', '32'),
('967', '31'),
('1083', '46'),
('1084', '50'),
('1142', '30')