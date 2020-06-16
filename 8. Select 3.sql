SELECT m.MovieTitle, COUNT(s.ScheduleID) AS PeopleCount
FROM SchedulesList s
INNER JOIN MoviesList m ON m.MovieID = s.ScheduleFilmID
INNER JOIN TicketsList t ON t.TicketScheduleID = s.ScheduleID
GROUP BY m.MovieTitle