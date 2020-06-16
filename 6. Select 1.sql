SELECT s.ScheduleDate, m.MovieTitle, s.ScheduleRoomID, s.SchedulePrice
FROM SchedulesList s
INNER JOIN MoviesList m ON m.MovieID = s.ScheduleFilmID
WHERE ScheduleDate between '20200509 00:00:00' AND '20200509 23:59:59'