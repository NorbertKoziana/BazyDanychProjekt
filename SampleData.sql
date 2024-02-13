--Usuwanie przykładowych danych

DELETE FROM CourseDetails;
DBCC CHECKIDENT ('CourseDetails', RESEED, 0);

DELETE FROM Room;
DBCC CHECKIDENT ('Room', RESEED, 0);

DELETE FROM [Grade];
DBCC CHECKIDENT ('Grade', RESEED, 0);

DELETE FROM TakenCourse;

DELETE FROM Course;
DBCC CHECKIDENT ('Course', RESEED, 0);

DELETE FROM [Subject];
DBCC CHECKIDENT ('Subject', RESEED, 0);

DELETE FROM GradeValue;
DELETE FROM AcademicYear;

DELETE FROM Student;
DELETE FROM Parent;
DELETE FROM Teacher;

DELETE FROM Person;
DBCC CHECKIDENT ('Person', RESEED, 0);

--Wstawianie przykładowych danych

INSERT INTO Person(FirstName, LastName, PESEL) VALUES
--nauczyciele
('Jan', 'Kowalski', '01345678901'),
('Magda', 'Kwiatek', '02345678901'),
--rodzice
('Karolina', 'Małysz', '03345678901'),
('Patrycja', 'Rondo', '04345678901'),
--nauczyciel i rodzic jednoczesnie
('Piotrek', 'Grundwaldzki', '05345678901'),
--studenci
('Tomasz', 'Stoch', '06345678901'),
('Natalia', 'Jan', '07345678901'),
('Anna', 'Donn', '08345678901'),
('Mateusz', 'Święty', '09345678901');

INSERT INTO Parent(PersonID, Email) VALUES
(3, '3@gmail.com'),
(4, '4@gmail.com'),
(5, '5@gmail.com');


INSERT INTO Student(PersonID, ParentID, DateOfAcceptance) VALUES
(6, 3, '2021-08-31'),
(7, 3, '2021-08-31'),
(8, 4, '2022-08-31'),
(9, 5, '2022-08-31');

INSERT INTO Teacher VALUES
(1, '2021-03-23', 1100),
(2, '2018-03-23', 600),
(5, '2020-03-23', 1300);


INSERT INTO GradeValue VALUES
(2.0),
(3.0),
(3.5),
(4.0),
(4.5),
(5.0);

INSERT INTO AcademicYear VALUES
('2021/2022'),
('2022/2023');

INSERT INTO Room(Label, [Floor]) VALUES
('0053', 0),
('0056', 0),
('0059', 0),
('0089', 1);

INSERT INTO [Subject](Name, ECTS) VALUES
('Logika i teoria mnogości', 8),
('Algebra 1', 6),
('Programowanie 1', 6);

INSERT INTO Course(SubjectID, TeacherID, AcademicYear) VALUES
(1, 1,'2021/2022'),
(2, 1,'2021/2022'),
(3, 2,'2021/2022'),
(1, 5,'2022/2023'),
(2, 1,'2022/2023');


INSERT INTO CourseDetails(CourseID, StartDate, EndDate, RoomID) VALUES
--Lekcje dla kursu nr 1
(1, '2021-10-15 13:00','2021-10-15 13:45', 1),
(1, '2021-10-22 13:00','2021-10-22 13:45', 1),
(1, '2021-10-29 13:15','2021-10-29 14:00', 2),
(1, '2021-11-05 13:00','2021-11-05 13:45', 1),
(1, '2021-11-12 13:00','2021-11-12 13:45', 1),
(1, '2021-11-19 13:00','2021-11-19 13:45', 1),
--kurs nr 2
(2, '2021-10-15 10:00','2021-10-15 13:00', 1),
(2, '2021-10-22 10:00','2021-10-22 13:00', 1),
(2, '2021-10-29 10:00','2021-10-29 13:00', 1),
(2, '2021-11-05 10:00','2021-11-05 13:00', 1),
(2, '2021-11-12 10:00','2021-11-12 13:00', 1),
(2, '2021-11-19 10:00','2021-11-19 13:00', 1),
--kurs nr 3
(3, '2021-10-15 10:00','2021-10-15 13:00', 2),
(3, '2021-10-22 10:00','2021-10-22 13:00', 2),
(3, '2021-10-29 10:00','2021-10-29 13:00', 2),
(3, '2021-11-05 10:00','2021-11-05 13:00', 2),
(3, '2021-11-12 10:00','2021-11-12 13:00', 2),
(3, '2021-11-19 10:00','2021-11-19 13:00', 2),
--kurs nr 4
(4, '2022-10-15 10:00','2022-10-15 13:00', 3),
(4, '2022-10-22 10:00','2022-10-22 13:00', 4),
(4, '2022-11-12 10:00','2022-11-12 13:00', 4),
(4, '2022-11-19 10:00','2022-11-19 13:00', 4),
--kurs nr 5
(5, '2022-10-15 10:00','2022-10-15 13:00', 4),
(5, '2022-10-22 10:00','2022-10-22 13:00', 3),
(5, '2022-10-29 10:00','2022-10-29 13:00', 3),
(5, '2022-11-12 10:00','2022-11-12 13:00', 3),
(5, '2022-11-19 10:00','2022-11-19 13:00', 3);

INSERT INTO TakenCourse(CourseID, StudentID, FinalMark) VALUES
(1, 6, 5),
(2, 6, 3.5),
(3, 6, 3.5),
(4, 7, NULL),
(2, 7, 4.5),
(3, 7, 3.5),
(2, 8, 2.0),
(1, 9, 4.5),
(5, 9, NULL),
(3, 9, 3.5);


INSERT INTO Grade(StudentID, CourseID, Grade, [Description]) VALUES
(6, 1, 5, 'Sprawdzian nr 1'),
(6, 2, 5, 'Sprawdzian nr 1'),
(6, 3, 5, 'Sprawdzian nr 1'),
(6, 3, 5, 'Kartkówka');

INSERT INTO Grade(StudentID, CourseID, Grade) VALUES
(6, 1, 5),
(6, 1, 3.5),
(6, 1, 3.0),
(6, 2, 4.0),
(6, 2, 4.5),
(6, 2, 3.0),
(6, 3, 5),
(6, 3, 5),
(6, 3, 4.5),
(6, 3, 4.0),
(6, 3, 3.0),
(6, 3, 5),

(7, 4, 5),
(7, 2, 4.5),
(7, 3, 3.5),
(7, 4, 3.5),
(7, 2, 4.5),

(8, 2, 3.0),
(8, 2, 3.0),
(8, 2, 4.0),

(9, 1, 5),
(9, 1, 4.5),
(9, 3, 4.0),
(9, 3, 5),
(9, 3, 4.5);

----------------- Widoki

-- Widok nr 1 - Informacje o każdym nauczycielu, i jakie przedmioty prowadzi
GO
IF OBJECT_ID('TeachersInfo', 'V') IS NOT NULL
	DROP VIEW TeachersInfo;

GO
CREATE VIEW TeachersInfo
AS
SELECT P.PersonID, P.FirstName, P.LastName, T.Salary, T.HireDate, S.Name, C.AcademicYear
FROM Teacher T JOIN Person P ON T.PersonID = P.PersonID
JOIN Course C ON T.PersonID = C.TeacherID
JOIN [Subject] S ON C.SubjectID = S.SubjectID;
GO
--SELECT * FROM TeachersInfo;

-- Widok nr 2 - Policz ile każdy kurs ma spotkań oraz łączną długość spotkań
GO
IF OBJECT_ID('Lessons', 'V') IS NOT NULL
	DROP VIEW Lessons;

GO
CREATE VIEW Lessons
AS
	SELECT C.AcademicYear, S.Name, COUNT(*) as NumberOfMeetings, SUM(DATEDIFF(minute, CD.StartDate, CD.EndDate))/60 as [Length (Hours)]
	FROM Course C JOIN CourseDetails CD ON C.CourseID = CD.CourseID
	JOIN Subject S ON C.SubjectID = S.SubjectID
	GROUP BY C.AcademicYear, S.Name;
GO
--SELECT * FROM Lessons;

-- Widok nr 3 - Dla każdego rodzica wyświetl jego dzieci
GO
IF OBJECT_ID('ParentChildren', 'V') IS NOT NULL
	DROP VIEW ParentChildren;

GO
CREATE VIEW ParentChildren
AS
	SELECT Pinfo.FirstName [Parent FirstName], Pinfo.LastName [Parent LastName], Sinfo.FirstName [Child FirstName], Sinfo.LastName [Child LastName]
	FROM Parent P JOIN Person Pinfo ON P.PersonID = Pinfo.PersonID
	JOIN Student S ON P.PersonID = S.ParentID
	JOIN Person Sinfo ON Sinfo.PersonID = S.PersonID;
GO
--SELECT * FROM ParentChildren
-- Widok nr 4 - Dla każdej osoby kim jest (nauczycielem, studentem itp)
GO
IF OBJECT_ID('IdentifyPerson', 'V') IS NOT NULL
	DROP VIEW IdentifyPerson;

GO
CREATE VIEW IdentifyPerson
AS
	SELECT P.FirstName, P.LastName,
	CASE 
		WHEN (SELECT S.PersonID FROM Student S WHERE S.PersonID = P.PersonID) IS NOT NULL THEN 'YES'
		ELSE 'NO'
	END AS [StudentCheck],
	CASE 
		WHEN (SELECT S.PersonID FROM Teacher S WHERE S.PersonID = P.PersonID) IS NOT NULL THEN 'YES'
		ELSE 'NO'
	END AS [TeacherCheck],
	CASE 
		WHEN (SELECT S.PersonID FROM Parent S WHERE S.PersonID = P.PersonID) IS NOT NULL THEN 'YES'
		ELSE 'NO'
	END AS [ParentCheck]
	FROM Person P;
GO
--SELECT * FROM IdentifyPerson
-- Widok nr 5 - Dla każdego ucznia oblicz średnią ocen w danym kursie, na którym zapisany był uczeń
GO
IF OBJECT_ID('AverageGrades', 'V') IS NOT NULL
	DROP VIEW AverageGrades;

GO
CREATE VIEW AverageGrades
AS
	SELECT S.PersonID, P.FirstName, P.LastName, G.CourseID, CAST(AVG(G.Grade) as decimal(10,2)) as [Average]
	FROM Student S
	JOIN Person P ON S.PersonID = P.PersonID
	JOIN TakenCourse TC ON S.PersonID = TC.StudentID
	JOIN Grade G ON TC.StudentID = G.StudentID AND TC.CourseID = G.CourseID
	GROUP BY S.PersonID, P.FirstName, P.LastName, G.CourseID;
GO
--SELECT * FROM AverageGrades;
-- Procedury

-- Procedura nr 1 - Dla konkretnego ucznia wypisz jego plan lekcji w przedziale pomiędzy zadanymi datami
GO
IF OBJECT_ID('StudentSchedule', 'P') IS NOT NULL
	DROP PROCEDURE StudentSchedule;
GO
CREATE PROCEDURE StudentSchedule @StudentID int, @StartDate datetime, @EndDate datetime
AS
SET @EndDate = DATEADD(day, 1, @EndDate);--zwiekszam o jeden dzien, i teraz tu będzie jeden dzien pozniej, ale godzina 00:00:00
SELECT * FROM Student S
JOIN TakenCourse TC ON S.PersonID = TC.StudentID
JOIN Course C ON C.CourseID = TC.CourseID
JOIN CourseDetails CD ON CD.CourseID = C.CourseID
WHERE TC.FinalMark IS NULL --jeszcze nie ma oceny końcowej więc to oznacza, że kurs się jeszcze nie zakończył czyli powinien być w planie lekcji
AND S.PersonID = @StudentID
AND CD.StartDate >= @StartDate AND CD.StartDate < @EndDate;
GO

--EXEC StudentSchedule @StudentID = 7, @StartDate='2020-04-04', @EndDate = '2022-11-18';

-- Procedura nr 2 - Dla konkretnego ucznia zwraca jakie przedmioty już ma zakończone
GO
IF OBJECT_ID('StudentCompleted', 'P') IS NOT NULL
	DROP PROCEDURE StudentCompleted;
GO
CREATE PROCEDURE StudentCompleted @StudentID int
AS
SELECT S.PersonID, P.FirstName, P.LastName, C.AcademicYear, SB.Name, TC.FinalMark FROM Student S
JOIN TakenCourse TC ON S.PersonID = TC.StudentID
JOIN Course C ON C.CourseID = TC.CourseID
JOIN [Subject] SB ON C.SubjectID = SB.SubjectID
JOIN Person P ON S.PersonID = P.PersonID
WHERE TC.FinalMark IS NOT NULL
AND S.PersonID = @StudentID
GO

--EXEC StudentCompleted @StudentID = 7;

--Funkcja nr 1 - Zwraca daty z zadanego przedziału, z odstępami o interwał
IF OBJECT_ID('GenerateDatesInteval', 'IF') IS NOT NULL
	DROP FUNCTION GenerateDatesInteval
GO
CREATE FUNCTION GenerateDatesInteval (@StartDate date, @EndDate date, @Interval tinyint)
RETURNS TABLE
AS
RETURN
(
	WITH MY_CTE
	AS
	(SELECT @StartDate StartDate
	UNION ALL
	SELECT DATEADD(day, @Interval, StartDate)
	FROM MY_CTE
	WHERE DATEADD(day, @Interval, StartDate) <= @EndDate
	)
	SELECT * FROM MY_CTE
)
GO
--SELECT * FROM dbo.GenerateDatesInteval('2023-08-09','2023-08-17',7);

-- Procedura nr 3 - Dodaje jakiś przedmiot np. w każdy wtorek o 12:00; jeśli jest kolizja z salą to wtedy wyzwalacz zablokuje;
GO
IF OBJECT_ID('AddCourseLesson', 'P') IS NOT NULL
	DROP PROCEDURE AddCourseLesson;
GO
CREATE PROCEDURE AddCourseLesson @CourseID int, @DayOfTheWeek nvarchar(16), @LessonStart time, @LessonEnd time, @StartDate date, @EndDate date,
@RoomID int
AS
--Znalezienie pierwszego 'dobrego dnia'
WHILE(DATENAME(DW,@StartDate) != @DayOfTheWeek)
BEGIN
	SET @StartDate = DATEADD(day, 1, @StartDate)
END
IF @StartDate <= @EndDate
BEGIN
	INSERT INTO CourseDetails(CourseID, StartDate, EndDate, RoomID) SELECT @CourseID, CAST(F.StartDate as datetime) + CAST(@LessonStart as datetime),
	CAST(F.StartDate as datetime) + CAST(@LessonEnd as datetime), @RoomID
	FROM dbo.GenerateDatesInteval(@StartDate, @EndDate, 7) F;
END
GO

/*
SELECT * FROM CourseDetails WHERE CourseID = 5;

EXEC AddCourseLesson @CourseID = 5, @DayOfTheWeek = 'Monday', @LessonStart = '12:00:00', @LessonEnd = '13:00:00',
@StartDate='2023-04-04', @EndDate = '2023-04-27', @RoomID = 1
*/


-- Procedura nr 4 - dla podanego id studenta wypisuje informacje o nim, jego rodzicu i jego rodzeństwu
GO
IF OBJECT_ID('StudentFamily', 'P') IS NOT NULL
	DROP PROCEDURE StudentFamily;
GO
CREATE PROCEDURE StudentFamily @StudentID int
AS
	DECLARE @ParentID int;
	SET @ParentID = (SELECT S.ParentID FROM Student S WHERE S.PersonID = @StudentID);

		SELECT P.*, 'Student' as Relation FROM Student S 
		JOIN Person P ON P.PersonID = S.PersonID
		WHERE S.ParentID = @ParentID
	UNION
		SELECT P.*, 'Parent' as Relation FROM Person P
		WHERE P.PersonID = @ParentID
		ORDER BY Relation;
GO

--EXEC StudentFamily 6;

-- Procedura nr 5 - dla podanego id studenta i id kursu wypisuje oceny studenta, oraz średnią ocen w osobym polu
GO
IF OBJECT_ID('CourseGrades', 'P') IS NOT NULL
	DROP PROCEDURE CourseGrades;
GO
CREATE PROCEDURE CourseGrades @StudentID int, @CourseID int
AS
	SELECT G.*, (SELECT AG.Average FROM AverageGrades AG WHERE AG.PersonID = @StudentID AND AG.CourseID = @CourseID) AS [Average]
	FROM Grade G
	WHERE G.StudentID = @StudentID AND G.CourseID = @CourseID
GO

--EXEC CourseGrades @StudentID = 6, @CourseID = 1;

-- Wyzwalacze
-- Wyzwalacz nr 1 - Sprawdza czy student nie zaliczył już danego przedmiotu w innym roku akademickim
GO
IF OBJECT_ID('SubjectAlreadyCompleted', 'TR') IS NOT NULL
	DROP TRIGGER SubjectAlreadyCompleted;
GO
CREATE TRIGGER SubjectAlreadyCompleted
ON TakenCourse
AFTER INSERT
AS
BEGIN
	DECLARE @counter int;
	SET @counter = (--zliczam ile razy student zapisał się na przedmiot, jeśli jakikolwiek student zapisał się wiecej niż raz to rollback
	SELECT MAX([counter]) 
		FROM (
			SELECT TC.StudentID, C.SubjectID , COUNT(*) [counter]
			FROM TakenCourse TC 
			--JOIN inserted I ON TC.StudentID = I.StudentID AND TC.CourseID = I.CourseID - to nie zadziała bo może być tak, że sa różne courseid ale ten sam subject
			--czyli ten sam przedmiot ale prowadzony w różnych latach akademickich
			JOIN Course C ON TC.CourseID = C.CourseID
			WHERE TC.StudentID IN (SELECT StudentID FROM inserted WHERE StudentID IS NOT NULL)--zeby sprawdzac tylko dla studentow ktorych dotyczy zmiana
			AND (TC.FinalMark IS NULL OR TC.FinalMark != 2) --jeśli juz zaliczał, ale dostał ocene 2 to może poprawić więc jest ok
			GROUP BY TC.StudentID, C.SubjectID
		)Subquery
	)

	IF @counter > 1
		ROLLBACK
END;

/*
EXEC StudentCompleted @StudentID = 6
SELECT * FROM Course;
SELECT * FROM Subject;

INSERT INTO TakenCourse VALUES
(4, 8, NULL),
(4, 6, NULL);--tutaj nie przejdzie bo kurs 1 i kurs 4 to ten sam przedmiot a student nr 6 już zaliczył kurs 1

EXEC StudentCompleted @StudentID = 8
INSERT INTO TakenCourse VALUES
(4, 8, NULL),
(5, 8, NULL); -- to przejdzie bo student nr 8 już miał ten przedmiot ale dostał z niego ocene końcową 2 czyli poprawia ten przedmiot
*/
-- Wyzwalacz nr 2 - Sprawdza czy rodzic podał adres email jeśli nie podał nr telefonu
GO
IF OBJECT_ID('ParentAnyInfo', 'TR') IS NOT NULL
	DROP TRIGGER ParentAnyInfo;
GO
CREATE TRIGGER ParentAnyInfo
ON Parent
AFTER INSERT
AS
	IF EXISTS(
		SELECT * FROM Person PE JOIN inserted PA ON PE.PersonID = PA.PersonID	
		WHERE PE.PhoneNumber IS NULL AND PA.Email IS NULL
	)
		ROLLBACK
;

/*
SELECT * FROM Person;

INSERT INTO Parent VALUES (2, NULL); -- nie zadziała bo osoba nr 2 nie podała nr telefonu

UPDATE Person SET PhoneNumber = '123456789' WHERE PersonID = 2;

INSERT INTO Parent VALUES (2, NULL); -- teraz zadziała
*/

-- Wyzwalacz nr 3 - Sprawdza czy sala nie jest już zajęta przez inne zajęcia
GO
IF OBJECT_ID('RoomTaken', 'TR') IS NOT NULL
	DROP TRIGGER RoomTaken;
GO
CREATE TRIGGER RoomTaken
ON CourseDetails
AFTER INSERT
AS
BEGIN
	IF EXISTS(
		SELECT * FROM inserted I
		CROSS APPLY(
			SELECT * FROM CourseDetails CD
			WHERE CD.CourseDetailsID != I.CourseDetailsID--bo oczywiście kolizja z samym soba zawsze bedzie
			AND I.RoomID = CD.RoomID
			AND ( (I.StartDate > CD.StartDate AND I.StartDate < CD.EndDate) OR (I.EndDate > CD.StartDate AND I.EndDate < CD.EndDate)
				OR (I.StartDate <= CD.StartDate AND I.EndDate >= CD.EndDate)
			)
		)Subquery
	)
	BEGIN
		RAISERROR('Room already taken!', 11, 2)
		ROLLBACK
	END
END;

/*
SELECT * FROM CourseDetails;

--nie zadziała
INSERT INTO CourseDetails(CourseID, StartDate, EndDate, RoomID) VALUES
(2, '2021-10-15 13:15:00.000', '2021-10-15 13:50:00.000', 1);

--zadziała bo ta sama sala ale inna godzina
INSERT INTO CourseDetails(CourseID, StartDate, EndDate, RoomID) VALUES
(2, '2021-10-15 13:45:00.000', '2021-10-15 14:00:00.000', 1);

--zadziała bo ta sama godzina ale inna sala
INSERT INTO CourseDetails(CourseID, StartDate, EndDate, RoomID) VALUES
(2, '2021-10-15 13:15:00.000', '2021-10-15 13:50:00.000', 4);
*/


-- Wyzwalacz nr 4 - Sprawdza czy zajęcia które dodajemy dla danego kursu rzeczywiście są w odpowiednim roku akademickim
GO
IF OBJECT_ID('AcademicYearLessons', 'TR') IS NOT NULL
	DROP TRIGGER AcademicYearLessons;
GO
CREATE TRIGGER AcademicYearLessons
ON CourseDetails
AFTER INSERT
AS
BEGIN
	IF EXISTS(
		SELECT * 
		FROM inserted I
		JOIN Course C ON I.CourseID = C.CourseID
		WHERE 
		CAST(StartDate as date) NOT BETWEEN 
		CAST(LEFT(C.AcademicYear, 4) + '-09-01' as date) AND CAST(RIGHT(C.AcademicYear, 4) + '-06-30' as date)
		OR
		CAST(EndDate as date) NOT BETWEEN 
		CAST(LEFT(C.AcademicYear, 4) + '-09-01' as date) AND CAST(RIGHT(C.AcademicYear, 4) + '-06-30' as date)
	)
	BEGIN
		RAISERROR('Wrong Academic Year !', 10, 1)
		ROLLBACK
	END
END;

/*
SELECT * FROM Course C JOIN CourseDetails CD ON C.CourseID = CD.CourseID;

INSERT INTO CourseDetails(CourseID, StartDate, EndDate, RoomID) VALUES (1, '2021-08-31', '2021-08-31', 4);--niezadziała
INSERT INTO CourseDetails(CourseID, StartDate, EndDate, RoomID) VALUES (1, '2021-09-01', '2021-09-01', 4);
INSERT INTO CourseDetails(CourseID, StartDate, EndDate, RoomID) VALUES (1, '2022-06-30', '2022-06-30', 4);
INSERT INTO CourseDetails(CourseID, StartDate, EndDate, RoomID) VALUES (1, '2022-07-01', '2022-07-01', 4);--niezadziała
*/

--Wyzwalacz nr 5 - Sprawdzenie czy jeśli student dostaje ocene końcową z kursu z roku akademickiego który już się skończył to nie jest to null
GO
IF OBJECT_ID('CorrectFinalMark', 'TR') IS NOT NULL
	DROP TRIGGER CorrectFinalMark;
GO
CREATE TRIGGER CorrectFinalMark
ON TakenCourse
AFTER INSERT
AS
BEGIN
	IF EXISTS(
		SELECT * FROM inserted I
		JOIN Course C ON I.CourseID = C.CourseID
		WHERE FinalMark IS NULL 
		AND C.AcademicYear != (SELECT TOP 1 AC.AcademicYear FROM AcademicYear AC ORDER BY LEFT(AC.AcademicYear, 4) DESC)
	)
		ROLLBACK;
END;

/*
SELECT * FROM TakenCourse;
SELECT * FROM Course;

próbuje dodać studentowi kurs z poprzedniego roku akademickiego, jeśli to nie jest null to znaczy
że np. student przepisał ocene z innego kierunku więc ok, ale jeśli to null to trigger blokuje

INSERT INTO TakenCourse VALUES
(3, 8, NULL);

INSERT INTO TakenCourse VALUES
(3, 8, 4.5);
*/


--Funkcja nr 2 - Dla konkretnego ucznia wypisuje średnią ocen końcowych
IF OBJECT_ID('AverageFinalMarks', 'FN') IS NOT NULL
	DROP FUNCTION AverageFinalMarks;
GO
CREATE FUNCTION AverageFinalMarks
(@StudentID int)
RETURNS int
AS
BEGIN
	RETURN (SELECT AVG(TC.FinalMark) FROM TakenCourse TC WHERE TC.StudentID = @StudentID AND TC.FinalMark IS NOT NULL GROUP BY TC.StudentID)
END
GO
--SELECT * FROM TakenCourse;
--SELECT dbo.AverageFinalMarks(9);

--Funkcja nr 3 - Dla podanego AcademicYear wypisuje wszystkie dostępne kursy
IF OBJECT_ID('AvailableCourses', 'IF') IS NOT NULL
	DROP FUNCTION AvailableCourses;
GO
CREATE FUNCTION AvailableCourses
(@AcademicYear varchar(64))
RETURNS TABLE
AS
RETURN (
		SELECT C.AcademicYear, P.FirstName as [Lecturer's Name], P.LastName [Lecturer's Surname], S.Name FROM Course C
		JOIN Subject S ON C.SubjectID = S.SubjectID 
		JOIN Teacher T ON C.TeacherID = T.PersonID 
		JOIN Person P ON T.PersonID = P.PersonID
		WHERE C.AcademicYear = @AcademicYear
	);
GO
--SELECT * FROM dbo.AvailableCourses('2022/2023');

-- Funkcja nr 4 - Dla podanego pokoju i dnia wyświetla kiedy sala jest zajęta
IF OBJECT_ID('AvailableHours', 'TF') IS NOT NULL
	DROP FUNCTION AvailableHours;
GO
CREATE FUNCTION AvailableHours
(@RoomID int, @GivenDate date)
RETURNS @TempTable TABLE
(
	CourseID int,
	StartDate datetime,
	EndDate datetime
)
AS
BEGIN
	INSERT INTO @TempTable 
		SELECT CD.CourseID, CD.StartDate, CD.EndDate FROM CourseDetails CD 
		WHERE CD.RoomID = @RoomID AND CD.StartDate >= @GivenDate AND CD.StartDate < dateadd(day,1,@GivenDate)
	RETURN
END
GO
--SELECT * FROM CourseDetails ORDER BY StartDate;
--SELECT * FROM dbo.AvailableHours(1, '2021-10-15');

-- Funkcja nr 5 - Dla podanej kwoty wypisuje nauczycieli zarabiających tyle lub więcej
IF OBJECT_ID('TeacherSalary', 'IF') IS NOT NULL
	DROP FUNCTION TeacherSalary
GO
CREATE FUNCTION TeacherSalary
(@Salary money)
RETURNS TABLE
AS
RETURN (
	SELECT P.FirstName, P.LastName, T.HireDate, T.Salary 
	FROM Teacher T JOIN Person P ON T.PersonID = P.PersonID
	WHERE T.Salary >= @Salary
)
GO
--SELECT * FROM Teacher;
--SELECT * FROM dbo.TeacherSalary(1100);
