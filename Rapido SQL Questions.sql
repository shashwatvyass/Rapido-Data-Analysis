#1.Retrieve all successful bookings?
Create View Successful_Bookings As
SELECT*FROM bookings
WHERE Booking_Status='success';

#1.Retrieve all successful bookings?
SELECT*FROM Successful_Bookings;

#2.Find the average ride distance for each vehicle type?
Create View ride_distance_for_each_vehicle as
 SELECT vehicle_Type,AVG(Ride_Distance)
 as avg_distance FROM bookings
 GROUP BY Vehicle_Type;
 
#2.Find the average ride distance for each vehicle type?
SELECT*FROM ride_distance_for_each_vehicle;
 
#3.Get the total number of cancelled ride by customers?
Create View canceled_rides_by_customers as
SELECT COUNT(*)FROM bookings
WHERE Booking_Status='canceled by customer';

#3.Get the total number of cancelled ride by customers?
SELECT*FROM canceled_rides_by_customers;

#4.List the top 5 customers who booked the highest number of rides?
Create View Top_5_Customers as
SELECT Customer_ID, COUNT(Booking_ID) as Total_Rides
FROM Bookings
GROUP BY Customer_ID
ORDER BY Total_Rides DESC LIMIT 5;

#4.List the top 5 customers who booked the highest number of rides?
SELECT*FROM Top_5_Customers;

#5.Get the number of rides cancelled by drivers due to personal and car-related issues?
Create View Rides_Canceled_by_driver_P_V_issues as
SELECT COUNT(*) FROM Bookings
WHERE Canceled_Rides_by_Driver='Personal & Vehicle related issue';

#5.Get the number of rides cancelled by drivers due to personal and car-related issues?
SELECT*FROM Rides_Canceled_by_driver_P_V_issues;

#6.Find the maximum and minimum driver ratings for Auto bookings?
Create View Max_Min_Driver_Rating As
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM Bookings WHERE Vehicle_Type='Auto';

#6.Find the maximum and minimum driver ratings for Auto bookings?
SELECT*FROM Max_Min_Driver_Rating;

#7.Retrieve all rides where  payment was made by using cash?
Create View Cash_Payment As
SELECT*FROM bookings
WHERE Payment_Method='cash';

#7.Retrieve all rides where  payment was made by using cash?
SELECT*FROM Cash_Payment;
 
#8.Find the average customer rating per vehicle type?
Create View Avg_Customer_Rating As
SELECT Vehicle_Type,AVG(Customer_Rating) as avg_customer_rating
FROM bookings
GROUP BY VEhicle_Type;

#8.Find the average customer rating per vehicle type?
SELECT*FROM Avg_Customer_Rating;

#9.Calculate the total booking value of rides completed successfully?
Create View Total_successful_booking_value As
SELECT sum(Booking_Value) as total_booking_value
FROM bookings
WHERE Booking_Status='Success';

#9.Calculate the total booking value of rides completed successfully?
SELECT*FROM Total_successful_booking_value;

#10.List all the incomplete rides along with the reason?
Create View Incomplete_Rides_Reason As
SELECT Booking_ID,Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides='Yes';

#10.List all the incomplete rides along with the reason?
SELECT*FROM Incomplete_Rides_Reason;



 
