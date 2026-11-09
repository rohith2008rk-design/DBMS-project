create database Cricket;
GO
use Cricket;
GO
create table PLAYER
(
    Player_ID int primary key,
    Player_Name varchar(50),
    Age int,
    Gender varchar(10),
    Role varchar(20),
    Country varchar(30)
);

create table TEAM
(
    Team_ID int primary key,
    Team_Name varchar(50),
    Country varchar(30),
    Coach varchar(50),
    Ranking int
);

create table [MATCH]
(
    Match_ID int primary key,
    Team1_ID int,
    Team2_ID int,
    Match_Date date,
    Venue varchar(100),
    Match_Type varchar(20),
    Winner_ID int
);

create table PLAYER_PERFORMANCE
(
    Performance_ID int primary key,
    Match_ID int,
    Player_ID int,
    Runs int,
    Wickets int,
    Catches int
);

create table MATCH_OFFICIAL
(
    Official_ID int primary key,
    Official_Name varchar(50),
    Role varchar(30),
    Country varchar(30),
    Match_ID int
);
GO
use Cricket;
GO
select DB_NAME() as CurrentDatabase;
insert into PLAYER values
(101, 'Virat Kohli', 35, 'Male', 'Batsman', 'India'),
(102, 'Rohit Sharma', 36, 'Male', 'Batsman', 'India'),
(103, 'Steve Smith', 34, 'Male', 'Batsman', 'Australia'),
(104, 'David Warner', 37, 'Male', 'Batsman', 'Australia'),
(105, 'Jasprit Bumrah', 30, 'Male', 'Bowler', 'India'),
(106, 'Ravindra Jadeja', 35, 'Male', 'All-Rounder', 'India'),
(107, 'Pat Cummins', 31, 'Male', 'Bowler', 'Australia'),
(108, 'Kane Williamson', 33, 'Male', 'Batsman', 'New Zealand'),
(109, 'Babar Azam', 29, 'Male', 'Batsman', 'Pakistan'),
(110, 'Shakib Al Hasan', 37, 'Male', 'All-Rounder', 'Bangladesh'),
(111, 'Sachin Tendulkar', 48, 'Male', 'Batsman', 'India'),
(112, 'James Anderson', 42, 'Male', 'Bowler', 'England');
insert into TEAM values
(101, 'India', 'India', 'Rahul Dravid', 5),
(102, 'Australia', 'Australia', 'Andrew McDonald', 2),
(103, 'England', 'England', 'Brendon McCullum', 7),
(104, 'New Zealand', 'New Zealand', 'Gary Stead', 8),
(105, 'Pakistan', 'Pakistan', 'Jason Gillespie', 10),
(106, 'Bangladesh', 'Bangladesh', 'Chandika Hathurusingha', 18),
(107, 'West Indies', 'West Indies', 'Daren Sammy', 20);
insert into [MATCH] values
(201, 101, 102, '2025-01-10', 'Wankhede Stadium', 'T20', 101),
(202, 102, 103, '2025-01-15', 'MCG', 'ODI', 102),
(203, 101, 105, '2025-01-20', 'Eden Gardens', 'Test', 101),
(204, 103, 104, '2025-02-05', 'Lord''s', 'T20', 103),
(205, 101, 104, '2025-02-10', 'Wankhede Stadium', 'T20', 101),
(206, 105, 106, '2025-02-15', 'Gaddafi Stadium', 'ODI', 105),
(207, 102, 107, '2025-03-01', 'Sydney Cricket Ground', 'T20', 102),
(208, 101, 103, '2025-03-10', 'Chinnaswamy Stadium', 'ODI', 101);
insert into PLAYER_PERFORMANCE values
(301, 201, 101, 85, 0, 2),
(302, 201, 102, 65, 0, 1),
(303, 201, 105, 10, 3, 2),
(304, 202, 103, 120, 0, 3),
(305, 202, 104, 75, 0, 1),
(306, 202, 107, 8, 4, 2),
(307, 203, 101, 110, 0, 2),
(308, 203, 105, 5, 5, 1),
(309, 204, 103, 90, 1, 2),
(310, 204, 108, 45, 0, 1),
(311, 205, 101, 70, 1, 2),
(312, 205, 106, 55, 3, 1), 
(313, 206, 109, 95, 0, 2),
(314, 206, 107, 20, 4, 1),
(315, 207, 104, 105, 0, 3),
(316, 207, 107, 12, 3, 2),
(317, 208, 102, 115, 0, 2),
(318, 208, 106, 60, 2, 1),
(319, 208, 105, 3, 0, 0),
(320, 208, 110, 25, 1, 2);
insert into MATCH_OFFICIAL values
(401, 'Richard Kettleborough', 'Umpire', 'England', 201),
(402, 'Kumar Dharmasena', 'Umpire', 'Sri Lanka', 202),
(403, 'Paul Wilson', 'Umpire', 'Australia', 203),
(404, 'Chris Gaffaney', 'Umpire', 'New Zealand', 204),
(405, 'Nitin Menon', 'Umpire', 'India', 205),
(406, 'Aleem Dar', 'Umpire', 'Pakistan', 206),
(407, 'Joel Wilson', 'Umpire', 'West Indies', 207),
(408, 'Richard Illingworth', 'Umpire', 'England', 208);
select * from PLAYER;
select * from TEAM;
select * from [MATCH];
select * from PLAYER_PERFORMANCE;
select * from MATCH_OFFICIAL;

select Player_Name, Country from PLAYER where Role = 'Batsman' and Age > 25;
/*Player_Name	Country
Virat Kohli	India
Rohit Sharma	India
Steve Smith	Australia
David Warner	Australia
Kane Williamson	New Zealand
Babar Azam	Pakistan
Sachin Tendulkar	India*/
select Player_Name from PLAYER where Country in ('India', 'Australia') and Age > 25;
/*Player_Name
Virat Kohli
Rohit Sharma
Steve Smith
David Warner
Jasprit Bumrah
Ravindra Jadeja
Pat Cummins
Sachin Tendulkar*/
select * from TEAM where Ranking <= 10 and Country = 'India';
/*Team_ID	Team_Name	Country	Coach	Ranking
101	India	India	Rahul Dravid	5*/
select Match_ID, Venue, Match_Type from [MATCH] where Match_Type = 'T20' and Venue = 'Wankhede Stadium';
/*Match_ID	Venue	Match_Type
201	Wankhede Stadium	T20
205	Wankhede Stadium	T20*/
select Player_ID, Runs, Wickets from PLAYER_PERFORMANCE where Runs > 50 or Wickets > 2;
/*Player_ID	Runs	Wickets
101	85	0
102	65	0
105	10	3
103	120	0
104	75	0
107	8	4
101	110	0
105	5	5
103	90	1
101	70	1
106	55	3
109	95	0
107	20	4
104	105	0
107	12	3
102	115	0
106	60	2*/
select distinct Country from PLAYER;
/*Country
Australia
Bangladesh
England
India
New Zealand
Pakistan*/
select distinct Match_Type from [MATCH];
/*Match_Type
ODI
T20
Test*/  
select Player_Name from PLAYER where Player_Name like 'S%' and Country = 'India';
/*Player_Name
Sachin Tendulkar*/
select count(*) as Total_Indian_Players from PLAYER where Country = 'India';
/*Total_Indian_Players
5*/
select max(Runs) as Maximum_Runs from PLAYER_PERFORMANCE;
/*Maximum_Runs
120*/
select avg(Runs) as Average_Runs from PLAYER_PERFORMANCE where Runs > 20;
/*Average_Runs
79*/
select sum(Wickets) as Total_Wickets from PLAYER_PERFORMANCE;
/*Total_Wickets
27*/
select min(Catches) as Minimum_Catches,max(Catches) as Maximum_Catches,avg(Catches) as Average_Catches from PLAYER_PERFORMANCE;
/*Minimum_Catches	Maximum_Catches	Average_Catches
0	3	1*/
select Role, count(*) as Number_Of_Players from PLAYER where Age > 25 group by Role;
/*Role	Number_Of_Players
All-Rounder	2
Batsman	7
Bowler	3*/
select Country, count(*) as Number_Of_Bowlers from PLAYER where Role = 'Bowler' group by Country;
/*Country	Number_Of_Bowlers
Australia	1
England	1
India	1*/
select Player_ID, sum(Runs) as Total_Runs from PLAYER_PERFORMANCE where Runs > 20 group by Player_ID;
/*Player_ID	Total_Runs
101	265
102	180
103	210
104	180
106	115
108	45
109	95
110	25*/
select Match_ID, sum(Wickets) as Total_Wickets from PLAYER_PERFORMANCE where Wickets > 0 group by Match_ID;
/*Match_ID	Total_Wickets
201	3
202	4
203	5
204	1
205	4
206	4
207	3
208	3*/
select Country, count(*) as Number_Of_Players from PLAYER group by Country having count(*) > 2;
/*Country	Number_Of_Players
Australia	3
India	5*/
select Player_ID, sum(Runs) as Total_Runs from PLAYER_PERFORMANCE group by Player_ID having sum(Runs) > 100;
/*Player_ID	Total_Runs
101	265
102	180
103	210
104	180
106	115*/ 
select Match_ID, sum(Wickets) as Total_Wickets from PLAYER_PERFORMANCE group by Match_ID having sum(Wickets) > 3;
/*Match_ID	Total_Wickets
202	4
203	5
205	4
206	4*/
select Player_ID, sum(Runs) as Total_Runs from PLAYER_PERFORMANCE group by Player_ID having sum(Runs) > 100 order by Total_Runs desc;
/*Player_ID	Total_Runs
101	265
103	210
104	180
102	180
106	115*/
select Player_ID, avg(Runs) as Average_Runs from PLAYER_PERFORMANCE group by Player_ID having avg(Runs) > 30 order by Average_Runs desc;
/*Player_ID	Average_Runs
103	105
109	95
102	90
104	90
101	88
106	57
108	45*/
update TEAM set Ranking = 1 where Team_ID = 101;
update PLAYER set Age = Age + 1 where Age > 30 and Role = 'Batsman';
update PLAYER_PERFORMANCE set Catches = Catches + 1 where Wickets > 2 and Catches < 3;
delete from PLAYER where Age > 45 and Country <> 'India';
delete from PLAYER_PERFORMANCE where Runs < 5 and Wickets = 0;
delete from TEAM where Ranking > 15 and Country = 'India';
select P.Player_Name, P.Role, PP.Runs from PLAYER P join PLAYER_PERFORMANCE PP on P.Player_ID = PP.Player_ID;
/*Player_Name	Role	Runs
Virat Kohli	Batsman	85
Rohit Sharma	Batsman	65
Jasprit Bumrah	Bowler	10
Steve Smith	Batsman	120
David Warner	Batsman	75
Pat Cummins	Bowler	8
Virat Kohli	Batsman	110
Jasprit Bumrah	Bowler	5
Steve Smith	Batsman	90
Kane Williamson	Batsman	45
Virat Kohli	Batsman	70
Ravindra Jadeja	All-Rounder	55
Babar Azam	Batsman	95
Pat Cummins	Bowler	20
David Warner	Batsman	105
Pat Cummins	Bowler	12
Rohit Sharma	Batsman	115
Ravindra Jadeja	All-Rounder	60
Jasprit Bumrah	Bowler	3
Shakib Al Hasan	All-Rounder	25*/
select T.Team_Name,M.Match_Date,M.Venue from TEAM T join [MATCH] M on T.Team_ID = M.Team1_ID;
/*Team_Name	Match_Date	Venue
India	2025-01-10	Wankhede Stadium
Australia	2025-01-15	MCG
India	2025-01-20	Eden Gardens
England	2025-02-05	Lord's
India	2025-02-10	Wankhede Stadium
Pakistan	2025-02-15	Gaddafi Stadium
Australia	2025-03-01	Sydney Cricket Ground
India	2025-03-10	Chinnaswamy Stadium*/
select     P.Player_Name,    PP.Match_ID,    PP.Wickets from PLAYER P join PLAYER_PERFORMANCE PP on P.Player_ID = PP.Player_ID where PP.Runs > 50;
/*Player_Name	Match_ID	Wickets
Virat Kohli	201	0
Rohit Sharma	201	0
Steve Smith	202	0
David Warner	202	0
Virat Kohli	203	0
Steve Smith	204	1
Virat Kohli	205	1
Ravindra Jadeja	205	3
Babar Azam	206	0
David Warner	207	0
Rohit Sharma	208	0
Ravindra Jadeja	208	2*/
select    P.Player_Name,    M.Match_Date,    M.Venue,    PP.Runs from PLAYER P join PLAYER_PERFORMANCE PP on P.Player_ID = PP.Player_ID join [MATCH] M on PP.Match_ID = M.Match_ID;
/*Player_Name	Match_Date	Venue	Runs
Virat Kohli	2025-01-10	Wankhede Stadium	85
Rohit Sharma	2025-01-10	Wankhede Stadium	65
Jasprit Bumrah	2025-01-10	Wankhede Stadium	10
Steve Smith	2025-01-15	MCG	120
David Warner	2025-01-15	MCG	75
Pat Cummins	2025-01-15	MCG	8
Virat Kohli	2025-01-20	Eden Gardens	110
Jasprit Bumrah	2025-01-20	Eden Gardens	5
Steve Smith	2025-02-05	Lord's	90
Kane Williamson	2025-02-05	Lord's	45
Virat Kohli	2025-02-10	Wankhede Stadium	70
Ravindra Jadeja	2025-02-10	Wankhede Stadium	55
Babar Azam	2025-02-15	Gaddafi Stadium	95
Pat Cummins	2025-02-15	Gaddafi Stadium	20
David Warner	2025-03-01	Sydney Cricket Ground	105
Pat Cummins	2025-03-01	Sydney Cricket Ground	12
Rohit Sharma	2025-03-10	Chinnaswamy Stadium	115
Ravindra Jadeja	2025-03-10	Chinnaswamy Stadium	60
Jasprit Bumrah	2025-03-10	Chinnaswamy Stadium	3
Shakib Al Hasan	2025-03-10	Chinnaswamy Stadium	25*/
select P.Player_Name,M.Match_Type,M.Venue,PP.Wickets from PLAYER P join PLAYER_PERFORMANCE PP on P.Player_ID = PP.Player_ID join [MATCH] M on PP.Match_ID = M.Match_ID where PP.Wickets > 2;
/*Player_Name	Match_Type	Venue	Wickets
Jasprit Bumrah	T20	Wankhede Stadium	3
Pat Cummins	ODI	MCG	4
Jasprit Bumrah	Test	Eden Gardens	5
Ravindra Jadeja	T20	Wankhede Stadium	3
Pat Cummins	ODI	Gaddafi Stadium	4
Pat Cummins	T20	Sydney Cricket Ground	3*/









    























    



























    




























































































































































