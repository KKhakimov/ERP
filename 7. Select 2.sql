SELECT MIN(s.ScheduleDate) AS NearestDate, m.MovieTitle
FROM SchedulesList s
INNER JOIN MoviesList m ON m.MovieID = s.ScheduleFilmID
WHERE m.MovieTitle = 'The Dark Knight' AND s.ScheduleDate >= SYSDATETIME()
GROUP BY m.MovieTitle