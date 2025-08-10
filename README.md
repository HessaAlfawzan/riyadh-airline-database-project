# riyadh-airline-database-project

## 📝 Description
RiyadhAirline is a database project designed to manage the core operations of an airline company. It covers all aspects related to passengers, bookings, flights, tickets, employees, airports, and aircrafts. The database includes relationships, indexes, stored procedures, and real sample data for testing and analysis.


## Database Structure
🔹 Main Entities:
- Passenger
- Booking
- Ticket
- Flight
- Aircraft
- Employee
- Airport
  
  🔹 Associative (Linking) Entities:
- Passenger_Booking – links passengers with their bookings.
- Employee_Flight – links employees (e.g., pilots, attendants) to flights.
- Airport_Flight – links airports with flights (with role as Departure/Arrival).


  
## 🗂️ Tables & Key Fields
| Table              | Description                                      |
|--------------------|--------------------------------------------------|
| Passenger          | Passenger details and membership status          |
| Booking            | Booking info and payment method                  |
| Passenger_Booking  | Many-to-many relation between passenger & booking|
| Aircraft           | Aircraft details, manufacturer, and seat count   |
| Flight             | Flight info including schedule, aircraft, status |
| Ticket             | Ticket details per passenger for a flight        |
| Employee           | Employee info including job title and salary     |
| Employee_Flight    | Links employees to flights                       |
| Airport            | Airport details                                  |
| Airport_Flight     | Links flights with airports (Departure/Arrival)  |



## 🧠 Relationships

- `Passenger` ↔ `Booking` (Many-to-Many via `Passenger_Booking`)
- `Booking` → `Ticket` (One-to-Many)
- `Flight` ↔ `Employee` (Many-to-Many via `Employee_Flight`)
- `Flight` ↔ `Airport` (Many-to-Many via `Airport_Flight`)
- `Flight` → `Aircraft` (Many-to-One)
- `Ticket` → `Passenger`, `Booking`, `Flight` (Many-to-One)



## 📦 Sample Data Inserted
✅ 30 Passengers
✅ 20 Employees
✅ 30 Flights
✅ 15 Aircrafts
✅ 20 Airports
✅ 32 Bookings
✅ 30 Tickets


## 🔄 Stored Procedures
- AddPassenger – Add a new passenger
- UpdatePassenger – Update existing passenger details
- AddEmployee – Add a new employee
- DeleteEmployee – Delete an employee by ID


## 📊 Sample Queries
- Count passengers on a specific flight
- List employees assigned to a flight
- Average salary of Captains
- Count flights departing from airport
- Number of loyalty members

  
## 🧼 Data Maintenance Actions
✅ Updated flight statuses and ticket information
✅ Deleted passengers with no bookings/tickets
✅ Removed canceled flights


