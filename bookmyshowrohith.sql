USE BookMyShow;
GO


create table CustomerTable
(
  CID int primary key,
  CName varchar(30),
  Mobile varchar(30),
  Email varchar(50),
  City varchar(30)
)

insert into CustomerTable values(101,'rohith','6309757394','rohith34@gmail.com','Ongole')
insert into CustomerTable values(102,'rakesh','7678843437','rakesh767@gmail.com','Hyderabad')
insert into CustomerTable values(103,'Charan','8639454663','charan279@gmail.com','Chennai')
insert into Customertable values(104,'Niha','7995674737','niha296@gmail.com','Bangalore')
insert into CustomerTable values(105,'Lucky','63001329172','luky239@gmail.com','Ongole')
insert into CustomerTable values(106,'ravi','8184993419','ravi094@gmail.com','Vijayawada')
insert into CustomerTable values(107,'Sravani','9912147291','sravani039@gmail.com','Hyderabad')
insert into CustomerTable values(108,'Vijaya','8106689121','vijaya08@gmail.com','Chennai')
insert into CustomerTable values(109,'Harshitha','9494087620','harshitha606@gmail.com','Bangalore')
insert into CustomerTable values(110,'Deepak','9848919961','deepak123@gmail.com','Ongole')
insert into CustomerTable values(111,'Karthikeya','9848956347','karthikeya012@gmail.com','Hyderabad')
insert into CustomerTable values(112,'Naveena','9001452697','naveena489@gmail.com','Chennai')
insert into CustomerTable values(113,'Abhilash','6300156239','abhilash80@gmail.com','Bangalore')
insert into CustomerTable values(114,'Pallav','9025604539','pallav691@gmail.com','Vijayawada')
insert into CustomerTable values(115,'Harisha','9034567890','harisha452@gmail.com','Ongole')


create table Movie
(
  MID int primary key,
  MName varchar(50),
  Language varchar(20),
  Genre varchar(30),
  Duration int
)

insert into Movie values(201,'Dhurandhar','Telugu','Action',200)
insert into Movie values(202,'Bahubali 2','Telugu','Sci-Fi',180)
insert into Movie values(203,'Animal','Telugu','Action',182)
insert into Movie values(204,'dangal','Hindi','Action',169)
insert into Movie values(205,'vikram','Tamil','Action',164)


create table Theater
(
  TID int primary key,
  TName varchar(50),
  TLocation varchar(50),
  City varchar(30),
  Screens int
)

insert into Theater values(301,'PVR Cinemas','Main Road','Ongole',5)
insert into Theater values(302,'K3K Movies','Temple Road','Ongole',3)
insert into Theater values(303,'JLV','Gandhi Road','Guntur',8)
insert into Theater values(304,'PVR','NAZZ Center','Guntur',2)
insert into Theater values(305,'AAA Cinemas','Beach Road','Vijayawada',4)
insert into Theater values(306,'Krishna Theatre','Park Road','Ongole',2)
insert into Theater values(307,'PGR','Bus stand Road','Tirupathi',2)
insert into Theater values(308,'Jaishyam','Station Road','Tirupathi',4)
insert into Theater values(309,'Venkateswara Theatres','Main road','Ongole',4)
insert into Theater values(310,'SVC Cinemas','Market Road','Vijayawada',3)


create table ShowTable
(
  SID int primary key,
  MID int,
  TID int,
  ShowDate date,
  ShowTime varchar(20),
  foreign key(MID) references Movie(MID),
  foreign key(TID) references Theater(TID)
)

insert into ShowTable values(401,201,301,'2026-08-24','6:30 PM')
insert into ShowTable values(402,202,302,'2026-08-24','9:45 PM')
insert into ShowTable values(403,203,303,'2026-08-25','11:15 AM')
insert into ShowTable values(404,204,304,'2026-08-25','6:30 PM')
insert into ShowTable values(405,205,305,'2026-08-26','9:15 AM')
insert into ShowTable values(406,201,306,'2026-08-26','1:45 PM')
insert into ShowTable values(407,202,307,'2026-08-27','4:30 PM')
insert into ShowTable values(408,203,308,'2026-08-27','7:15 PM')
insert into ShowTable values(409,204,309,'2026-08-28','5:15 PM')
insert into ShowTable values(410,205,310,'2026-08-28','9:45 AM')


create table Booking
(
  BID int primary key,
  CID int,
  SID int,
  Seats int,
  BookingDate date,
  foreign key(CID) references CustomerTable(CID),
  foreign key(SID) references ShowTable(SID)
)

insert into Booking values(501,101,401,2,'2026-08-17')
insert into Booking values(502,102,402,3,'2026-08-17')
insert into Booking values(503,103,403,2,'2026-08-18')
insert into Booking values(504,104,404,4,'2026-08-18')
insert into Booking values(505,105,405,2,'2026-08-19')
insert into Booking values(506,106,406,3,'2026-08-19')
insert into Booking values(507,107,407,2,'2026-08-20')
insert into Booking values(508,108,408,5,'2026-08-20')
insert into Booking values(509,109,409,3,'2026-08-21')
insert into Booking values(510,110,410,2,'2026-08-21')


create table Payment
(
  PID int primary key,
  BID int,
  Amount int,
  PType varchar(20),
  PStatus varchar(20),
  foreign key(BID) references Booking(BID),
  check(PStatus in('Processing','Success','Failure'))
)

insert into Payment values(601,501,400,'UPI','Success')
insert into Payment values(602,502,600,'Card','Success')
insert into Payment values(603,503,400,'Cash','Processing')
insert into Payment values(604,504,800,'UPI','Success')
insert into Payment values(605,505,500,'Card','Failure')
insert into Payment values(606,506,750,'UPI','Success')
insert into Payment values(607,507,400,'Cash','Processing')
insert into Payment values(608,508,1000,'Card','Success')
insert into Payment values(609,509,600,'UPI','Failure')
insert into Payment values(610,510,500,'Cash','Success')

 select * from CustomerTable where city = 'Ongole'
 /*1.CID	CName	Mobile	Email	City
101	rohith	6309757394	rohith34@gmail.com	Ongole
105	Lucky	63001329172	luky239@gmail.com	Ongole
110	Deepak	9848919961	deepak123@gmail.com	Ongole
115	Harisha	9034567890	harisha452@gmail.com	Ongole*/
 
 select Cname , Mobile from CustomerTable where city ='Bangalore'
 /*2.Cname	Mobile
Niha	7995674737
Harshitha	9494087620
Abhilash	6300156239*/
 select * from movie where Language ='Telugu'
 /*3.MID	MName	Language	Genre	Duration
201	Dhurandhar	Telugu	Action	200
202	Bahubali 2	Telugu	Sci-Fi	180
203	Animal	Telugu	Action	182*/
 select genre,Mname from Movie where genre ='Action'
 /*4.genre	Mname
Action	Dhurandhar
Action	Animal
Action	dangal
Action	vikram*/
 select MName from Movie where Duration > '150'
/*5. MName
Dhurandhar
Bahubali 2
Animal
dangal
vikram*/
 select * from Theater where City ='vijayawada'
 /*6.TID	TName	TLocation	City	Screens
305	AAA Cinemas	Beach Road	Vijayawada	4
310	SVC Cinemas	Market Road	Vijayawada	3*/
 select TName,City from Theater where Screens >3
 /*7.TName	City
PVR Cinemas	Ongole
JLV	Guntur
AAA Cinemas	Vijayawada
Jaishyam	Tirupathi
Venkateswara Theatres	Ongole*/
 select * from ShowTable where ShowDate = '2026-08-26'
/*8. SID	MID	TID	ShowDate	ShowTime
405	205	305	2026-08-26	9:15 AM
406	201	306	2026-08-26	1:45 PM*/
 select SID, MID, ShowTime from ShowTable where Cast(ShowTime as Time) > '6:30 PM'
 /*9.SID	MID	ShowTime
402	202	9:45 PM
408	203	7:15 PM*/
 select * from booking where seats > 3
 /*10.BID	CID	SID	Seats	BookingDate
504	104	404	4	2026-08-18
508	108	408	5	2026-08-20*/
 select BID, CID, Seats from Booking where BookingDate > '2026-08-18'
/*11.BID	CID	Seats
505	105	2
506	106	3
507	107	2
508	108	5
509	109	3
510	110	2*/
 select * from Payment where Amount > 500
/*12. PID	BID	Amount	PType	PStatus
602	502	600	Card	Success
604	504	800	UPI	Success
606	506	750	UPI	Success
608	508	1000	Card	Success
609	509	600	UPI	Failure*/
 select PID, BID, PType from Payment where PType = 'UPI'
/*13.PID	BID	PType
601	501	UPI
604	504	UPI
606	506	UPI
609	509	UPI*/
 select * from Payment where PStatus = 'Success'
/*PID	BID	Amount	PType	PStatus
601	501	400	UPI	Success
602	502	600	Card	Success
604	504	800	UPI	Success
606	506	750	UPI	Success
608	508	1000	Card	Success
610	510	500	Cash	Success*/
 select CName, Email from CustomerTable where City = 'Ongole' or City = 'Chennai'
/*CName	Email
rohith	rohith34@gmail.com
Charan	charan279@gmail.com
Lucky	luky239@gmail.com
Vijaya	vijaya08@gmail.com
Deepak	deepak123@gmail.com
Naveena	naveena489@gmail.com
Harisha	harisha452@gmail.com*/
 select MName from Movie where Language = 'Telugu' and Genre = 'Action'
/*MName
Dhurandhar
Animal*/
 select MName from Movie where Duration > 120 and Duration < 180
/*MName
dangal
vikram*/
 select * from CustomerTable where City = 'Vijayawada' and Email like '%@gmail.com'
/*CID	CName	Mobile	Email	City
106	ravi	8184993419	ravi094@gmail.com	Vijayawada
114	Pallav	9025604539	pallav691@gmail.com	Vijayawada*/
 select * from Theater where City = 'Ongole' or City = 'Hyderabad'
/*TID	TName	TLocation	City	Screens
301	PVR Cinemas	Main Road	Ongole	5
302	K3K Movies	Temple Road	Ongole	3
306	Krishna Theatre	Park Road	Ongole	2
309	Venkateswara Theatres	Main road	Ongole	4*/
 select TName from Theater where Screens > 2 and City = 'Guntur'
/*TName
JLV*/
 select * from Booking where Seats >= 2 and Seats <= 5
/*BID	CID	SID	Seats	BookingDate
501	101	401	2	2026-08-17
502	102	402	3	2026-08-17
503	103	403	2	2026-08-18
504	104	404	4	2026-08-18
505	105	405	2	2026-08-19
506	106	406	3	2026-08-19
507	107	407	2	2026-08-20
508	108	408	5	2026-08-20
509	109	409	3	2026-08-21
510	110	410	2	2026-08-21*/
 select BID, CID from Booking where BookingDate = '2026-08-18' or Seats > 4
/*BID	CID
503	103
504	104
508	108*/
 select * from Payment where Amount > 500 and PStatus = 'Success'
/*PID	BID	Amount	PType	PStatus
602	502	600	Card	Success
604	504	800	UPI	Success
606	506	750	UPI	Success
608	508	1000	Card	Success*/
 select PID, Amount, PType from Payment where PType = 'UPI' or PType = 'Card'
/*PID	Amount	PType
601	400	UPI
602	600	Card
604	800	UPI
605	500	Card
606	750	UPI
608	1000	Card
609	600	UPI*/
 select CName from CustomerTable where (City = 'Tirupathi' or City = 'Hyderabad') and Mobile is not null
/*CName
rakesh
Sravani
Karthikeya*/
 select CID, CName from CustomerTable where City = 'Hyderabad'
/*CID	CName
102	rakesh
107	Sravani
111	Karthikeya*/
 select MName, Language, Genre from Movie where Duration > 120
/*MName	Language	Genre
Dhurandhar	Telugu	Action
Bahubali 2	Telugu	Sci-Fi
Animal	Telugu	Action
dangal	Hindi	Action
vikram	Tamil	Action*/
 select TName, City, Screens from Theater where Screens > 3
/*TName	City	Screens
PVR Cinemas	Ongole	5
JLV	Guntur	8
AAA Cinemas	Vijayawada	4
Jaishyam	Tirupathi	4
Venkateswara Theatres	Ongole	4*/
 select SID, MID, ShowTime from ShowTable where Cast(ShowTime as Time) > '6:15 PM'
/*SID	MID	ShowTime
401	201	6:30 PM
402	202	9:45 PM
404	204	6:30 PM
408	203	7:15 PM*/
 select PID, Amount, PStatus from Payment where Amount > 500
/*PID	Amount	PStatus
602	600	Success
604	800	Success
606	750	Success
608	1000	Success
609	600	Failure*/
 select CName, BID from CustomerTable join Booking on CustomerTable.CID = Booking.CID
/*CName	BID
rohith	501
rakesh	502
Charan	503
Niha	504
Lucky	505
ravi	506
Sravani	507
Vijaya	508
Harshitha	509
Deepak	510*/
 select CName, Mobile, Seats from CustomerTable join Booking on CustomerTable.CID = Booking.CID
/*CName	Mobile	Seats
rohith	6309757394	2
rakesh	7678843437	3
Charan	8639454663	2
Niha	7995674737	4
Lucky	63001329172	2
ravi	8184993419	3
Sravani	9912147291	2
Vijaya	8106689121	5
Harshitha	9494087620	3
Deepak	9848919961	2*/
 select MName, ShowTime from Movie join ShowTable on Movie.MID = ShowTable.MID
/*MName	ShowTime
Dhurandhar	6:30 PM
Bahubali 2	9:45 PM
Animal	11:15 AM
dangal	6:30 PM
vikram	9:15 AM
Dhurandhar	1:45 PM
Bahubali 2	4:30 PM
Animal	7:15 PM
dangal	5:15 PM
vikram	9:45 AM*/
 select MName, Language, ShowDate from Movie join ShowTable on Movie.MID = ShowTable.MID
/*MName	Language	ShowDate
Dhurandhar	Telugu	2026-08-24
Bahubali 2	Telugu	2026-08-24
Animal	Telugu	2026-08-25
dangal	Hindi	2026-08-25
vikram	Tamil	2026-08-26
Dhurandhar	Telugu	2026-08-26
Bahubali 2	Telugu	2026-08-27
Animal	Telugu	2026-08-27
dangal	Hindi	2026-08-28
vikram	Tamil	2026-08-28*/
 select TName, ShowTime from Theater join ShowTable on Theater.TID = ShowTable.TID
/*TName	ShowTime
PVR Cinemas	6:30 PM
K3K Movies	9:45 PM
JLV	11:15 AM
PVR	6:30 PM
AAA Cinemas	9:15 AM
Krishna Theatre	1:45 PM
PGR	4:30 PM
Jaishyam	7:15 PM
Venkateswara Theatres	5:15 PM
SVC Cinemas	9:45 AM*/
 select TName, City, ShowDate from Theater join ShowTable on Theater.TID = ShowTable.TID
/*TName	City	ShowDate
PVR Cinemas	Ongole	2026-08-24
K3K Movies	Ongole	2026-08-24
JLV	Guntur	2026-08-25
PVR	Guntur	2026-08-25
AAA Cinemas	Vijayawada	2026-08-26
Krishna Theatre	Ongole	2026-08-26
PGR	Tirupathi	2026-08-27
Jaishyam	Tirupathi	2026-08-27
Venkateswara Theatres	Ongole	2026-08-28
SVC Cinemas	Vijayawada	2026-08-28*/
 select MName, TName from Movie join ShowTable on Movie.MID = ShowTable.MID join Theater on ShowTable.TID = Theater.TID
/*MName	TName
Dhurandhar	PVR Cinemas
Bahubali 2	K3K Movies
Animal	JLV
dangal	PVR
vikram	AAA Cinemas
Dhurandhar	Krishna Theatre
Bahubali 2	PGR
Animal	Jaishyam
dangal	Venkateswara Theatres
vikram	SVC Cinemas*/
 select MName, TName, City from Movie join ShowTable on Movie.MID = ShowTable.MID join Theater on ShowTable.TID = Theater.TID where Theater.City = 'Tirupathi'
/*MName	TName	City
Bahubali 2	PGR	Tirupathi
Animal	Jaishyam	Tirupathi*/
 select MName, TName, City from Movie join ShowTable on Movie.MID = ShowTable.MID join Theater on ShowTable.TID = Theater.TID where Language = 'Telugu' and City = 'Tirupathi'
/*MName	TName	City
Bahubali 2	PGR	Tirupathi
Animal	Jaishyam	Tirupathi*/
 update CustomerTable set City = 'Chittoor' where CID = 107
 update Movie set Genre = 'Action' where MID = 202
 update Theater set Screens = Screens + 1 where TID = 307
 update Payment set PStatus = 'Success' where PID = 603
 update Payment set PType = 'UPI' where PStatus = 'Processing' and Amount < 500
 delete from CustomerTable where CID = 115
 delete from Movie where Duration < 90
 delete from Theater where Screens < 2 and City = 'Tirupathi'
 delete from Booking where Seats = 1 and BookingDate < '2026-08-20'
 delete from Payment where PStatus = 'Failure' and Amount < 300
 update Movie set Duration = Duration + 10 where Duration < 180
 update Theater set Screens = Screens + 1 where Screens < 3
 update Theater set City = 'Tirupathi' where City = 'Ongole' and Screens >= 3
 update Movie set Language = 'Telugu' where Language = 'English' and Genre = 'Action'
 update Movie set Genre = 'Action' where Language = 'Telugu' and Duration > 120
 update ShowTable set ShowTime = '06:15 PM' where ShowDate = '2026-08-25' and Cast(ShowTime as Time) < '6:15 PM'
 update Booking set Seats = Seats + 1 where Seats < 3
 update Booking set BookingDate = '2026-08-25' where Seats > 4 and BookingDate < '2026-08-18'
 update Payment set PType = 'UPI' where PType = 'Cash'
 update Payment set PStatus = 'Success' where Amount > 500 and PStatus = 'Processing'
 update Payment set PStatus = 'Failure' where Amount < 100 and PStatus = 'Processing'
 update Payment set Amount = Amount + 100 where PType = 'UPI' and Amount < 600
 delete from CustomerTable where City = 'Tirupathi' and Email like '%@gmail.com'
 delete from Movie where Language = 'English' and Duration > 180
 delete from Theater where (City = 'Hyderabad' or City = 'Chennai') and Screens < 3
 delete from ShowTable where ShowDate = '2026-08-25' and Cast(ShowTime as Time) < '5:00 PM'
 delete from Booking where Seats > 4 and BookingDate < '2026-08-18'
 delete from Payment where Amount > 1000 and PStatus = 'Failure'
 select count(*) from CustomerTable
 where City = 'Tirupathi' and Email like '%@gmail.com'
 
 select count(*) from CustomerTable
 where City = 'Hyderabad' or City = 'Chennai'

 
 select count(*) from Movie
 where Duration > 120 and Duration < 180
 select count(*) from Theater
 where City = 'Tirupathi' and Screens > 3
 select count(*) from Booking
 where Seats >= 3 and Seats <= 5
 select min(Duration) from Movie
 where Language = 'Telugu' and Genre = 'Action'
 select max(Duration) from Movie
 where Language = 'English' or Language = 'Hindi'
 select avg(Duration) from Movie
 where Duration > 120 and Duration < 180
 select min(Screens) from Theater
 where City = 'Tirupathi' and Screens > 2
 select max(Screens) from Theater
 where City = 'Hyderabad' or City = 'Chennai'
 select avg(Screens) from Theater
 where City = 'Tirupathi' and Screens >= 3
 select min(Seats) from Booking
 where Seats > 1 and Seats < 5
 select max(Seats) from Booking
 where BookingDate > '2026-08-18' and Seats > 2
 select avg(Amount) from Payment
 where PStatus = 'Success' and Amount > 2500
 select sum(Amount) from Payment
 where PStatus = 'Success' and Amount > 500
 select sum(Amount) from Payment
 where PType = 'UPI' and Amount > 2300
 select sum(Amount) from Payment
 where PStatus = 'Success' and PType = 'UPI' and Amount > 500
 select distinct City from Theater
 where Screens > 2 and Screens < 6
 select distinct PStatus from Payment
 where PType = 'UPI' or PType = 'Card'
 select distinct ShowDate from ShowTable
 where Cast(ShowTime as Time) > '6:00 PM'
 and Cast(ShowTime as Time) < '10:00 PM'
 select CName from CustomerTable
 where CName like 'A%' and City = 'Tirupathi'
 select CName from CustomerTable
 where (CName like 'R%' or CName like 'S%')
 and City = 'Hyderabad'
 select CName, Email from CustomerTable
 where CName like '%an%' and Email like '%@gmail.com'
 select MName from Movie
 where MName like 'S%' and Language = 'Telugu'
 select Language, avg(Duration) from Movie 

 where Duration > 100
 group by Language

 

 select City, avg(Screens) from Theater
 where Screens > 2
 group by City
 /*City	(No column name)
Guntur	5
Tirupathi	3
Vijayawada	3*/

 select PType, sum(Amount) from Payment
 where PStatus = 'Success'
 group by PType
 /*PType	(No column name)
Card	1600
UPI	3350*/

 select City, count(*) from CustomerTable
 group by City
 having count(*) > 2
 /*City	(No column name)
Bangalore	3
Chennai	3
Ongole	3*/
 select Language, count(*) from Movie
 group by Language
 having count(*) > 3

 select Genre, avg(Duration) from Movie
 group by Genre
 having avg(Duration) > 120

 select City, count(*) from Theater
 group by City
 having count(*) >= 2

 select PType, sum(Amount) from Payment
 group by PType
 having sum(Amount) > 1000

 select Genre, count(*) from Movie
 where Language = 'Telugu'
 group by Genre
 having count(*) > 2

 select CID, sum(Seats) from Booking
 where Seats > 1
 group by CID
 having sum(Seats) > 5

 select PType, avg(Amount) from Payment
 where PStatus = 'Success'
 group by PType
 having avg(Amount) > 2500

 select Genre, count(*) from Movie
 group by Genre
 order by count(*) desc

 select Language, avg(Duration) from Movie
 group by Language
 order by avg(Duration) asc

 select PType, sum(Amount) from Payment
 where PStatus = 'Success' and Amount > 1000
 group by PType
 having sum(Amount) > 500
 order by sum(Amount) desc
 
 
 
select * from Movie 
where Duration = (select max(Duration)from Movie)

select * from Movie
where Duration = (select min(Duration)from Movie)

select * from Theater
where Screens = (select max(screens)from Theater)

select * from theater
where Screens = (select min(Screens) from theater)

select * from Booking
where Seats = (select max(Seats)from Booking)

select * from Booking
where Seats = (select min(Seats)from Booking)

select * from Payment
where Amount = (select max(Amount)from payment)

select * from Payment
where Amount = (select min(Amount) from Payment)

select MName from Movie
where Duration > (select avg(Duration) from Movie)

select TName from Theater
where Screens > (select avg(Screens) from Theater)

select MName from Movie
where Duration > (select Duration from Movie where MID = 205)

select TName from Theater
where Screens > (select Screens from Theater where TID = 102)

select CName from CustomerTable
where City = (select City from CustomerTable where CID = 105)

select * from Booking
where Seats > (select Seats from Booking where BID = 505)

select * from Payment
where Amount > (select Amount from Payment where PID = 605)

select MName from Movie
where Duration < (select avg(Duration) from Movie)

select TName from Theater
where Screens < (select avg(Screens) from Theater)

select CName from CustomerTable
where CID in (select CID from Booking)

select MName from Movie
where MID in (select MID from ShowTable)

select TName from Theater
where TID in (select TID from ShowTable)

select CName from CustomerTable
where CID not in (select CID from Booking)

select MName from Movie
where Duration > (select avg(Duration) from Movie) and Language = 'Telugu'

select TName from Theater
where Screens > (select avg(Screens) from Theater) and City = 'Tirupathi'

select * from Payment
where Amount > (select avg(Amount) from Payment) and PStatus = 'Success'

select CName from CustomerTable
join Booking on CustomerTable.CID = Booking.CID where Booking.Seats > 2

select MName from Movie M
where Duration > (select avg(Duration)from Movie where Language = M.Language)

select TName from Theater T
where Screens > (select avg(Screens)from Theater where City = T.City)

select * from CustomerTable 
where exists (select 1 from Booking 
where CID = CID and Seats > (select avg(Seats) from Booking  where CID = CID))

select * from Payment
where Amount > (select avg(Amount) from Payment
where PType = PType)

select MName from Movie
where Duration > (select avg(Duration) from Movie
where Genre = Genre)