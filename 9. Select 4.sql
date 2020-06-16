SELECT SUM(s.SchedulePrice) AS TotalPrice
FROM SchedulesList s
INNER JOIN TicketsList t ON t.TicketScheduleID = s.ScheduleID
WHERE s.ScheduleDate BETWEEN '20200501' AND '20200531'