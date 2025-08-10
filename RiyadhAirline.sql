-- create database RiyadhAirline;

/* use RiyadhAirline;
create table Passenger (
Passenger_ID int auto_increment primary key,
First_Name varchar(255) Not null,
Last_Name varchar(255) Not null,
Birthdate date Not null,
Email varchar(255) Not null unique,
phone_number varchar(15) not null,
Is_Member boolean default false); */

/* use RiyadhAirline;
create table Booking(
Booking_ID int auto_increment primary key,
Trip_Time Timestamp Not null,
Total_Price decimal(10,2) Not null,
Payment_Method ENUM('Apple Pay', 'Credit Card', 'Cash', 'Tabby', 'Tamara') NOT NULL); */

/* use RiyadhAirline;
create table Passenger_Booking(
Passenger_ID int not null ,
Booking_ID int not null,
primary key(Passenger_ID,Booking_ID),
foreign key (Passenger_ID) references Passenger(Passenger_ID),
foreign key (Booking_ID) references Booking(Booking_ID)); */


/* use RiyadhAirline;
create table Aircraft(
Aircraft_ID int auto_increment primary key,
Manufacturing_Date date,
Number_Of_Seats int not null,
Manufacturer varchar(255)) */

/* use RiyadhAirline;
create table Flight(
Flight_ID int auto_increment primary key,
Duration time not null,
Flight_Status enum('Scheduled','Delayed','Cancelled','Completed') not null,
Aircraft_ID int not null,
foreign key (Aircraft_ID) references Aircraft(Aircraft_ID)); */

/* use RiyadhAirline;
create table Ticket (
Ticket_ID int auto_increment primary key,
Seat_Number varchar(5) not null,
Class ENUM('Economy','Business','First') not null,
Price decimal(10,2) not null,
Passenger_ID int not null,
Booking_ID int not null,
Flight_ID int not null,
foreign key (passenger_ID) references passenger(passenger_ID),
foreign key (Flight_ID) references Flight(Flight_ID),
foreign key (Booking_ID) references Booking(Booking_ID)); */

/* use RiyadhAirline;
create table Employee(
Employee_ID int auto_increment primary key,
First_Name varchar(255) not null,
Last_Name varchar(255) not null,
Birthdate date,
Email varchar(255) not null unique,
phone_number varchar(15) not null,
Salary decimal(10,2) not null,
Job_Title varchar(255) not null,
Joined_at date); */

/* use RiyadhAirline;
create table Employee_Flight (
Employee_ID int not null,
Flight_ID int not null,
primary key(Employee_ID,Flight_ID),
foreign key (Employee_ID) references Employee(Employee_ID),
foreign key (Flight_ID) references Flight(Flight_ID)); */

/* use RiyadhAirline;
create table Airport(
Airport_ID int auto_increment primary key,
Airport_Name varchar(255) not null,
Town varchar(255) not null,
Country varchar(255) not null); */

/* use RiyadhAirline;
create table Airport_Flight(
Airport_ID int not null,
Flight_ID int not null,
Flight_Role Enum('Arrival','Departure') not null,
primary key(Airport_ID,Flight_ID),
foreign key (Airport_ID) references Airport(Airport_ID),
foreign key (Flight_ID) references Flight(Flight_ID)); */

/* INSERT INTO Aircraft (Manufacturing_Date, Number_Of_Seats, Manufacturer) VALUES
('2010-05-12', 180, 'Boeing'),
('2012-03-20', 220, 'Airbus'),
('2015-11-11', 150, 'Embraer'),
('2014-08-07', 200, 'Bombardier'),
('2016-01-15', 250, 'Boeing'),
('2013-06-18', 160, 'Airbus'),
('2011-09-23', 180, 'Embraer'),
('2017-07-30', 210, 'Bombardier'),
('2018-12-05', 230, 'Boeing'),
('2019-02-17', 190, 'Airbus'),
('2020-04-29', 170, 'Embraer'),
('2021-10-10', 220, 'Bombardier'),
('2013-05-25', 180, 'Boeing'),
('2014-03-19', 210, 'Airbus'),
('2015-07-01', 160, 'Embraer'); */

/* INSERT INTO Airport (Airport_Name, Town, Country) VALUES
('King Khalid International', 'Riyadh', 'Saudi Arabia'),
('King Abdulaziz International', 'Jeddah', 'Saudi Arabia'),
('King Fahd International', 'Dammam', 'Saudi Arabia'),
('Dubai International', 'Dubai', 'UAE'),
('Hamad International', 'Doha', 'Qatar'),
('Muscat International', 'Muscat', 'Oman'),
('Bahrain International', 'Manama', 'Bahrain'),
('Cairo International', 'Cairo', 'Egypt'),
('Abu Dhabi International', 'Abu Dhabi', 'UAE'),
('Kuwait International', 'Kuwait City', 'Kuwait'),
('Sharjah International', 'Sharjah', 'UAE'),
('Doha International', 'Doha', 'Qatar'),
('Salalah Airport', 'Salalah', 'Oman'),
('Ras Al Khaimah Airport', 'Ras Al Khaimah', 'UAE'),
('Alexandria International', 'Alexandria', 'Egypt'),
('Baghdad International', 'Baghdad', 'Iraq'),
('Amman Queen Alia International', 'Amman', 'Jordan'),
('Beirut Rafic Hariri International', 'Beirut', 'Lebanon'),
('Tehran Imam Khomeini International', 'Tehran', 'Iran'),
('Istanbul Airport', 'Istanbul', 'Turkey'); */

/* INSERT INTO Flight (Duration, Flight_Status, Aircraft_ID) VALUES
('02:30:00', 'Scheduled', 1),
('03:00:00', 'Delayed', 2),
('01:45:00', 'Cancelled', 3),
('04:15:00', 'Completed', 4),
('05:00:00', 'Scheduled', 5),
('02:20:00', 'Scheduled', 6),
('03:40:00', 'Delayed', 7),
('01:30:00', 'Completed', 8),
('04:10:00', 'Scheduled', 9),
('02:50:00', 'Cancelled', 10),
('03:30:00', 'Scheduled', 11),
('01:55:00', 'Completed', 12),
('02:40:00', 'Delayed', 13),
('05:10:00', 'Scheduled', 14),
('03:15:00', 'Scheduled', 15),
('04:00:00', 'Completed', 1),
('02:05:00', 'Scheduled', 2),
('03:20:00', 'Delayed', 3),
('01:40:00', 'Scheduled', 4),
('02:55:00', 'Completed', 5),
('03:10:00', 'Scheduled', 6),
('04:25:00', 'Cancelled', 7),
('02:35:00', 'Scheduled', 8),
('03:50:00', 'Scheduled', 9),
('01:50:00', 'Completed', 10),
('02:45:00', 'Delayed', 11),
('03:05:00', 'Scheduled', 12),
('04:30:00', 'Completed', 13),
('02:15:00', 'Scheduled', 14),
('03:55:00', 'Cancelled', 15); */

/* INSERT INTO Passenger (First_Name, Last_Name, Birthdate, Email, phone_number, Is_Member) VALUES
('Ahmed', 'Al-Saud', '1985-06-15', 'ahmed1@example.com', '0500000001', TRUE),
('Sara', 'Al-Harbi', '1990-12-05', 'sara2@example.com', '0500000002', FALSE),
('Mohammed', 'Al-Fahad', '1988-03-22', 'mohammed3@example.com', '0500000003', TRUE),
('Fatimah', 'Al-Otaibi', '1995-08-14', 'fatimah4@example.com', '0500000004', FALSE),
('Abdullah', 'Al-Zahrani', '1982-11-02', 'abdullah5@example.com', '0500000005', TRUE),
('Ali', 'Al-Qahtani', '1989-02-17', 'ali6@example.com', '0500000006', FALSE),
('Noura', 'Al-Amri', '1993-07-21', 'noura7@example.com', '0500000007', TRUE),
('Khalid', 'Al-Shammari', '1987-01-30', 'khalid8@example.com', '0500000008', FALSE),
('Laila', 'Al-Mutairi', '1991-04-10', 'laila9@example.com', '0500000009', TRUE),
('Omar', 'Al-Dossari', '1986-09-12', 'omar10@example.com', '0500000010', FALSE),
('Reema', 'Al-Nasser', '1992-05-01', 'reema11@example.com', '0500000011', TRUE),
('Yousef', 'Al-Ahmad', '1984-10-19', 'yousef12@example.com', '0500000012', FALSE),
('Huda', 'Al-Rashid', '1990-03-28', 'huda13@example.com', '0500000013', TRUE),
('Faisal', 'Al-Johani', '1983-07-07', 'faisal14@example.com', '0500000014', FALSE),
('Amani', 'Al-Sabah', '1996-12-22', 'amani15@example.com', '0500000015', TRUE),
('Turki', 'Al-Mansour', '1981-06-30', 'turki16@example.com', '0500000016', FALSE),
('Lama', 'Al-Shehri', '1994-02-17', 'lama17@example.com', '0500000017', TRUE),
('Salem', 'Al-Tamimi', '1987-11-25', 'salem18@example.com', '0500000018', FALSE),
('Wafa', 'Al-Dhafeeri', '1993-09-09', 'wafa19@example.com', '0500000019', TRUE),
('Majed', 'Al-Anazi', '1985-08-16', 'majed20@example.com', '0500000020', FALSE),
('Hind', 'Al-Fares', '1991-01-12', 'hind21@example.com', '0500000021', TRUE),
('Ibrahim', 'Al-Qahtani', '1980-04-04', 'ibrahim22@example.com', '0500000022', FALSE),
('Abeer', 'Al-Sharif', '1997-10-03', 'abeer23@example.com', '0500000023', TRUE),
('Saad', 'Al-Saeed', '1986-06-20', 'saad24@example.com', '0500000024', FALSE),
('Amal', 'Al-Ruwaili', '1992-03-14', 'amal25@example.com', '0500000025', TRUE),
('Hassan', 'Al-Malki', '1989-05-29', 'hassan26@example.com', '0500000026', FALSE),
('Noor', 'Al-Khaldi', '1995-07-06', 'noor27@example.com', '0500000027', TRUE),
('Tariq', 'Al-Sultan', '1988-02-08', 'tariq28@example.com', '0500000028', FALSE),
('Dina', 'Al-Saadi', '1990-11-11', 'dina29@example.com', '0500000029', TRUE),
('Abdulrahman', 'Al-Bishi', '1982-12-19', 'abdulrahman30@example.com', '0500000030', FALSE); */

/* INSERT INTO Employee (First_Name, Last_Name, Birthdate, Email, phone_number, Salary, Job_Title, Joined_at) VALUES
('Fahad', 'Al-Rashid', '1980-05-10', 'fahad1@example.com', '0550000001', 8000.00, 'Pilot', '2010-03-01'),
('Maha', 'Al-Johani', '1985-07-15', 'maha2@example.com', '0550000002', 6500.00, 'Flight Attendant', '2012-06-10'),
('Saad', 'Al-Harbi', '1978-11-20', 'saad3@example.com', '0550000003', 9000.00, 'Captain', '2008-09-15'),
('Noura', 'Al-Qahtani', '1990-01-25', 'noura4@example.com', '0550000004', 6200.00, 'Flight Attendant', '2015-04-12'),
('Ali', 'Al-Dosari', '1982-03-30', 'ali5@example.com', '0550000005', 8500.00, 'Pilot', '2011-11-03'),
('Huda', 'Al-Shammari', '1988-09-18', 'huda6@example.com', '0550000006', 6700.00, 'Flight Attendant', '2016-07-22'),
('Khalid', 'Al-Otaibi', '1975-12-11', 'khalid7@example.com', '0550000007', 9500.00, 'Captain', '2005-02-18'),
('Reem', 'Al-Suwailem', '1992-04-07', 'reem8@example.com', '0550000008', 6000.00, 'Flight Attendant', '2018-10-30'),
('Turki', 'Al-Salem', '1983-06-23', 'turki9@example.com', '0550000009', 8700.00, 'Pilot', '2012-01-05'),
('Dana', 'Al-Mutairi', '1991-08-12', 'dana10@example.com', '0550000010', 6100.00, 'Flight Attendant', '2019-05-20'),
('Yousef', 'Al-Fahad', '1979-10-03', 'yousef11@example.com', '0550000011', 9300.00, 'Captain', '2007-06-25'),
('Amal', 'Al-Sabah', '1987-02-14', 'amal12@example.com', '0550000012', 6400.00, 'Flight Attendant', '2013-03-14'),
('Salem', 'Al-Bishi', '1981-07-19', 'salem13@example.com', '0550000013', 8600.00, 'Pilot', '2010-12-01'),
('Amani', 'Al-Faisal', '1993-11-05', 'amani14@example.com', '0550000014', 6300.00, 'Flight Attendant', '2020-09-08'),
('Majed', 'Al-Tamimi', '1984-05-22', 'majed15@example.com', '0550000015', 8900.00, 'Captain', '2009-08-19'),
('Wafa', 'Al-Anazi', '1989-03-11', 'wafa16@example.com', '0550000016', 6200.00, 'Flight Attendant', '2017-11-30'),
('Ibrahim', 'Al-Shehri', '1986-06-02', 'ibrahim17@example.com', '0550000017', 8200.00, 'Pilot', '2014-04-14'),
('Areej', 'Al-Zahrani', '1990-12-28', 'areej18@example.com', '0550000018', 6150.00, 'Flight Attendant', '2015-06-06'),
('Sultan', 'Al-Najdi', '1980-09-09', 'sultan19@example.com', '0550000019', 9100.00, 'Captain', '2006-03-21'),
('Lama', 'Al-Kurdi', '1994-01-17', 'lama20@example.com', '0550000020', 6050.00, 'Flight Attendant', '2021-02-12');*/

/* INSERT INTO Booking (Trip_Time, Total_Price, Payment_Method) VALUES
('2025-01-10 10:00:00', 1500.00, 'Credit Card'),
('2025-01-11 12:30:00', 800.00, 'Cash'),
('2025-01-12 09:15:00', 2300.00, 'Apple Pay'),
('2025-01-10 10:00:00', 1500.00, 'Credit Card'),
('2025-01-11 12:30:00', 800.00, 'Cash'),
('2025-01-12 09:15:00', 2300.00, 'Apple Pay'),
('2025-01-13 14:45:00', 1200.00, 'Tabby'),
('2025-01-14 08:20:00', 1900.00, 'Tamara'),
('2025-01-15 17:10:00', 1600.00, 'Credit Card'),
('2025-01-16 11:30:00', 900.00, 'Cash'),
('2025-01-17 19:00:00', 1800.00, 'Apple Pay'),
('2025-01-18 07:45:00', 1300.00, 'Tabby'),
('2025-01-19 13:25:00', 2100.00, 'Tamara'),
('2025-01-20 16:40:00', 950.00, 'Credit Card'),
('2025-01-21 09:10:00', 1750.00, 'Cash'),
('2025-01-22 18:15:00', 1400.00, 'Apple Pay'),
('2025-01-23 06:55:00', 1550.00, 'Tabby'),
('2025-01-24 15:30:00', 2000.00, 'Tamara'),
('2025-01-25 12:00:00', 1100.00, 'Credit Card'),
('2025-01-26 17:50:00', 1950.00, 'Cash'),
('2025-01-27 08:35:00', 1700.00, 'Apple Pay'),
('2025-01-28 14:00:00', 1250.00, 'Tabby'),
('2025-01-29 10:20:00', 1600.00, 'Tamara'),
('2025-01-30 13:45:00', 2200.00, 'Credit Card'),
('2025-02-01 11:10:00', 1350.00, 'Cash'),
('2025-02-02 07:25:00', 1450.00, 'Apple Pay'),
('2025-02-03 16:30:00', 1800.00, 'Tabby'),
('2025-02-04 09:50:00', 1550.00, 'Tamara'),
('2025-02-05 12:40:00', 2000.00, 'Credit Card'),
('2025-02-06 18:00:00', 850.00, 'Cash'),
('2025-02-07 08:15:00', 1250.00, 'Apple Pay'),
('2025-02-08 14:10:00', 950.00, 'Tabby'),
('2025-02-09 17:45:00', 2100.00, 'Tamara'); */

/* INSERT INTO Passenger_Booking (Passenger_ID, Booking_ID) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 3),
(6, 4),
(7, 5),
(8, 5),
(9, 6),
(10, 6),
(11, 7),
(12, 7),
(13, 8),
(14, 9),
(15, 10),
(16, 10),
(17, 11),
(18, 11),
(19, 12),
(20, 13),
(21, 13),
(22, 14),
(23, 15),
(24, 15),
(25, 16),
(26, 17),
(27, 17),
(28, 18),
(29, 19),
(30, 20); */

/* INSERT INTO Ticket (Seat_Number, Class, Price, Passenger_ID, Booking_ID, Flight_ID) VALUES
('1A', 'Economy', 200.00, 1, 1, 1),
('2B', 'Business', 500.00, 2, 1, 1),
('3C', 'First', 1000.00, 3, 2, 2),
('4D', 'Economy', 180.00, 4, 3, 3),
('5E', 'Business', 450.00, 5, 3, 3),
('6F', 'Economy', 220.00, 6, 4, 4),
('7G', 'Economy', 210.00, 7, 5, 5),
('8H', 'Business', 550.00, 8, 5, 5),
('9A', 'First', 1200.00, 9, 6, 6),
('10B', 'Economy', 200.00, 10, 6, 6),
('11C', 'Economy', 230.00, 11, 7, 7),
('12D', 'Business', 600.00, 12, 7, 7),
('13E', 'First', 1300.00, 13, 8, 8),
('14F', 'Economy', 190.00, 14, 9, 9),
('15G', 'Economy', 250.00, 15, 10, 10),
('16H', 'Business', 650.00, 16, 10, 10),
('17A', 'Economy', 240.00, 17, 11, 11),
('18B', 'First', 1500.00, 18, 11, 11),
('19C', 'Economy', 215.00, 19, 12, 12),
('20D', 'Business', 700.00, 20, 13, 13),
('21E', 'Economy', 225.00, 21, 13, 13),
('22F', 'Economy', 205.00, 22, 14, 14),
('23G', 'Business', 480.00, 23, 15, 15),
('24H', 'First', 1400.00, 24, 15, 15),
('25A', 'Economy', 195.00, 25, 16, 16),
('26B', 'Business', 520.00, 26, 17, 17),
('27C', 'Economy', 230.00, 27, 17, 17),
('28D', 'Economy', 210.00, 28, 18, 18),
('29E', 'First', 1550.00, 29, 19, 19),
('30F', 'Economy', 200.00, 30, 20, 20); */

/* INSERT INTO Employee_Flight (Employee_ID, Flight_ID) VALUES
(1, 1), (2, 1), (3, 1),
(4, 2), (5, 2), (6, 2),
(7, 3), (8, 3), (9, 3),
(10, 4), (11, 4), (12, 4),
(13, 5), (14, 5), (15, 5),
(16, 6), (17, 6), (18, 6),
(19, 7), (20, 7), (1, 7),
(2, 8), (3, 8), (4, 8),
(5, 9), (6, 9), (7, 9),
(8, 10), (9, 10), (10, 10),
(11, 11), (12, 11), (13, 11),
(14, 12), (15, 12), (16, 12),
(17, 13), (18, 13), (19, 13),
(20, 14), (1, 14), (2, 14),
(3, 15), (4, 15), (5, 15),
(6, 16), (7, 16), (8, 16),
(9, 17), (10, 17), (11, 17),
(12, 18), (13, 18), (14, 18),
(15, 19), (16, 19), (17, 19),
(18, 20), (19, 20), (20, 20),
(1, 21), (2, 21), (3, 21),
(4, 22), (5, 22), (6, 22),
(7, 23), (8, 23), (9, 23),
(10, 24), (11, 24), (12, 24),
(13, 25), (14, 25), (15, 25),
(16, 26), (17, 26), (18, 26),
(19, 27), (20, 27), (1, 27),
(2, 28), (3, 28), (4, 28),
(5, 29), (6, 29), (7, 29),
(8, 30), (9, 30), (10, 30); */


/* INSERT INTO Airport_Flight (Airport_ID, Flight_ID, Flight_Role) VALUES
(1, 1, 'Departure'), (2, 1, 'Arrival'),
(3, 2, 'Departure'), (4, 2, 'Arrival'),
(5, 3, 'Departure'), (6, 3, 'Arrival'),
(7, 4, 'Departure'), (8, 4, 'Arrival'),
(9, 5, 'Departure'), (10, 5, 'Arrival'),
(11, 6, 'Departure'), (12, 6, 'Arrival'),
(13, 7, 'Departure'), (14, 7, 'Arrival'),
(15, 8, 'Departure'), (16, 8, 'Arrival'),
(17, 9, 'Departure'), (18, 9, 'Arrival'),
(19, 10, 'Departure'), (20, 10, 'Arrival'),
(1, 11, 'Departure'), (3, 11, 'Arrival'),
(2, 12, 'Departure'), (4, 12, 'Arrival'),
(5, 13, 'Departure'), (6, 13, 'Arrival'),
(7, 14, 'Departure'), (8, 14, 'Arrival'),
(9, 15, 'Departure'), (10, 15, 'Arrival'),
(11, 16, 'Departure'), (12, 16, 'Arrival'),
(13, 17, 'Departure'), (14, 17, 'Arrival'),
(15, 18, 'Departure'), (16, 18, 'Arrival'),
(17, 19, 'Departure'), (18, 19, 'Arrival'),
(19, 20, 'Departure'), (20, 20, 'Arrival'),
(1, 21, 'Departure'), (2, 21, 'Arrival'),
(3, 22, 'Departure'), (4, 22, 'Arrival'),
(5, 23, 'Departure'), (6, 23, 'Arrival'),
(7, 24, 'Departure'), (8, 24, 'Arrival'),
(9, 25, 'Departure'), (10, 25, 'Arrival'),
(11, 26, 'Departure'), (12, 26, 'Arrival'),
(13, 27, 'Departure'), (14, 27, 'Arrival'),
(15, 28, 'Departure'), (16, 28, 'Arrival'),
(17, 29, 'Departure'), (18, 29, 'Arrival'),
(19, 30, 'Departure'), (20, 30, 'Arrival'); */


-- create index index_PEmail on passenger (email);

-- create index index_EEmail on Employee (email);
-- create index index_EjobTitle on Employee (Job_Title);

-- create index idx_flight_status on Flight(Flight_Status);
-- create index idx_flight_aircraft on Flight(Aircraft_ID);

-- create index index_booking_triptime on Booking(Trip_Time);

-- create index idx_ticket_booking_flight on Ticket(Booking_ID, Flight_ID);

-- create index idx_passenger_booking on Passenger_Booking(Passenger_ID, Booking_ID);

-- create index idx_airport_flight_role on Airport_Flight(Flight_ID, Flight_Role);

-- create index idx_employee_flight on Employee_Flight(Employee_ID, Flight_ID);

/* update ticket
set class = 'First'
where passenger_id = 5; */

/* update Flight
set Flight_Status = 'Completed'
where Flight_ID = 3; */

/* delete from passenger
where passenger_id not in (select passenger_id from ticket); */

/* delete from flight
where flight_status = 'Cancelled'; */

/* select count(passenger_ID)
from ticket 
where flight_ID = 1; */ -- the number of passengers assigned to flight 1


/* select First_Name , Last_Name , job_title
from Employee e
join Employee_Flight ef on e.Employee_ID = ef.Employee_ID
where flight_ID = 3; */ -- Employees on flight 3

/* select avg(salary)
from employee 
where job_title = 'Captain'; */ -- captains average salary

/* select count(Passenger_ID)
from passenger 
where is_member = true; */  

/* select count(passenger_id)
from passenger_booking
where booking_id = 17; */

/* select * 
from flight
where flight_status = 'Cancelled'; */

/* select max(Duration)
from flight; */

/* select job_title , count(employee_id)
from employee
group by job_title; */

/* select sum(price)
from ticket 
where flight_id = 13; */

/* select * from passenger 
where First_name like 'kha___'; */

/* select * from 
employee
where salary > 9000; */

/* select avg(price)
from ticket 
where class = 'Economy'; */

/* select class , count(ticket_Id)
from ticket 
where flight_id = 6
group by class; */

/* select count(flight_id) as Number_of_Departing_Flights
from airport_flight af
join airport a on a.airport_id = af.airport_id
where a.airport_name like 'king khalid%' and af.flight_role ='Departure'; */

/* select town , count(flight_id) as connected_flights
from airport_flight af
join airport a on af.airport_id = a.airport_id
group by town */

/* select distinct First_Name, Last_Name
from Passenger p
join Ticket t on p.Passenger_ID = t.Passenger_ID
join Employee_Flight ef on t.Flight_ID = ef.Flight_ID
join Employee e on ef.Employee_ID = e.Employee_ID
where e.First_Name = 'Fahad' and e.Last_Name = 'Al-Rashid'; */

/* delimiter //
create procedure AddPassenger (
 in p_First_Name varchar(255),
 in p_Last_Name varchar(255),
 in p_Birthdate date,
 in p_email varchar(255),
 in p_phone_number varchar(15),
 in p_is_Member boolean
 )
 begin
  insert into passenger (
     First_Name, Last_Name, Birthdate, Email, Phone_Number, Is_Member
    ) 
    values ( p_First_Name, p_Last_Name , p_Birthdate, p_email, p_phone_number, p_is_Member);
    end // */
    
    
    /* delimiter //
    create procedure UpdatePassenger (
    in p_Passenger_ID int,
    in p_First_Name varchar(255),
    in p_last_Name varchar(255),
    in p_BirthDate date,
    in p_email varchar(255),
    in p_phone_number varchar(15),
    in p_is_member boolean 
    )
    begin
    update passenger 
    set 
     first_name = p_First_Name,
     last_name = p_last_Name,
     birthdate = p_BirthDate,
     email = p_email,
     phone_number = p_phone_number,
     is_member = p_is_member
     where passenger_id = p_Passenger_ID;
     end // */
 
     
     /* delimiter //
     create procedure AddEmployee (
     in E_Employee_ID int,
     in E_First_Name varchar(255),
     in E_Last_Name varchar(255),
     in E_Birthdate date,
     in E_email varchar(255),
     in E_phone_number varchar(255),
     in E_Salary decimal(10,2),
     in E_job_itle varchar(255),
     in E_joined_at date )
     begin 
     insert into Employee(Employee_ID,First_Name,Last_Name,Birthdate,
     Email,phone_number,Salary,Job_Title,Joined_at)
     values (E_Employee_ID,E_First_Name,E_Last_Name,E_Birthdate,
     E_email,E_phone_number,E_Salary,E_job_itle,E_joined_at);
     end // */
     
     /* delimiter //
     create procedure DeleteEmployee (
     in E_Employee_ID int
     )
     begin 
     delete from Employee 
     where Employee_ID = E_Employee_ID;
     end // */
     
	/* delimiter //
create procedure GetPassengerByID (
	in p_Passenger_ID int
)
begin
    select * from Passenger
    where Passenger_ID = p_Passenger_ID;
end // */

/* create view GetMembers AS
select * from passenger
where is_member = true; */

/* create view PassengerContacts AS
select
  Passenger_ID,
  CONCAT(First_Name, ' ', Last_Name) AS Full_Name,
  Email,
  phone_number
from Passenger; */

/* call AddPassenger('Ahmed', 'Ali', '1990-05-15', 'ahmed.ali@example.com', '0551234567', TRUE);
call AddPassenger('Lina', 'Mohammed', '1988-07-22', 'lina.m@example.com', '0569876543', FALSE);
call AddPassenger('Khalid', 'Yousef', '1995-03-10', 'khalid.y@example.com', '0551122334', TRUE);
call AddPassenger('Sara', 'Hassan', '1992-12-01', 'sara.h@example.com', '0549988776', FALSE); */

/* call AddEmployee(101, 'Sara', 'Khalid', '1985-11-20', 'sara.k@example.com', '0501234567', 8500.50, 'Manager', '2023-01-10');
call AddEmployee(102, 'Omar', 'Nasser', '1990-06-15', 'omar.n@example.com', '0507654321', 7000.00, 'Developer', '2022-03-05');
call AddEmployee(103, 'Mona', 'Saleh', '1987-09-25', 'mona.s@example.com', '0509876543', 7200.00, 'Analyst', '2021-08-17'); */







     
    
     
     
     
     
    

 
 














