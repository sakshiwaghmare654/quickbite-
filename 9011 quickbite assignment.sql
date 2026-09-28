USE quickbite;

-- 1. Purani table ko drop karein taaki column conflict na ho
DROP TABLE IF EXISTS restaurants;

-- 2. Nayi table create karein
CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(100),
    cuisine VARCHAR(50),
    city VARCHAR(50),
    rating DOUBLE,
    avg_order_value DOUBLE,
    orders_count INT,
    delivery_fee DOUBLE,
    est_delivery_time INT,
    owner_name VARCHAR(100),
    brand VARCHAR(100)
);

-- 3. Complete 30 Records Insert Karein
INSERT INTO restaurants VALUES 
(101, 'Spice Route', 'North Indian', 'Pune', 4.5, 420, 18500, 39, 32, 'Amit Sharma', 'Spice Route'),
(102, 'South Tiffin House', 'South Indian', 'Pune', 4.3, 260, 14300, 29, 25, 'Priya Nair', 'South Tiffin'),
(103, 'Mumbai Zaika', 'Maharashtrian', 'Mumbai', 4.1, 350, 22000, 49, 38, 'Rohit Patil', 'Zaika Foods'),
(104, 'Burger Garage', 'Fast Food', 'Pune', 4.4, 310, 27500, 29, 30, 'Neha Joshi', 'Burger Garage'),
(105, 'Pizza Planet', 'Italian', 'Mumbai', 4.6, 520, 31000, 19, 35, 'Vikas Mehta', 'Pizza Planet'),
(106, 'Biryani Junction', 'Biryani', 'Hyderabad', 4.7, 480, 42000, 29, 40, 'Arjun Reddy', 'Biryani Junction'),
(107, 'Chai & Snacks', 'Cafe', 'Pune', 4.2, 180, 19500, 19, 22, 'Sneha Kulkarni', 'Chai & Snacks'),
(108, 'Royal Thali', 'North Indian', 'Delhi', 4.0, 390, 16800, 39, 42, 'Manish Gupta', 'Royal Thali'),
(109, 'Tandoori Tales', 'Mughlai', 'Delhi', 4.5, 610, 12100, 59, 45, 'Karan Singh', 'Tandoori Tales'),
(110, 'Coastal Curry', 'Seafood', 'Goa', 4.6, 750, 9800, 69, 48, 'Riya Fernandes', 'Coastal Curry'),
(111, 'Green Bowl', 'Healthy', 'Bengaluru', 4.3, 330, 11600, 39, 28, 'Ananya Rao', 'Green Bowl'),
(112, 'Dosa Factory', 'South Indian', 'Bengaluru', 4.5, 240, 27800, 19, 24, 'Suresh Kumar', 'Dosa Factory'),
(113, 'Punjabi Dhaba', 'Punjabi', 'Chandigarh', 4.1, 370, 13200, 49, 40, 'Gurpreet Singh', 'Punjabi Dhaba'),
(114, 'The Wok House', 'Chinese', 'Pune', 4.4, 450, 18400, 39, 36, 'Rahul Jain', 'Wok House'),
(115, 'Sushi Street', 'Japanese', 'Mumbai', 4.8, 920, 7600, 89, 50, 'Meera Shah', 'Sushi Street'),
(116, 'Cafe Mocha', 'Cafe', 'Pune', 4.2, 290, 15400, 29, 27, 'Ishita Deshmukh', 'Cafe Mocha'),
(117, 'Street Tadka', 'Indian', 'Nagpur', 3.9, 220, 10200, 19, 35, 'Akash Verma', 'Street Tadka'),
(118, 'Hyderabadi House', 'Biryani', 'Hyderabad', 4.6, 430, 35500, 29, 37, 'Faizan Ali', 'Hyderabadi House'),
(119, 'Pasta Palace', 'Italian', 'Bengaluru', 4.5, 560, 10900, 49, 41, 'Nikhil Rao', 'Pasta Palace'),
(120, 'Sweet Cravings', 'Desserts', 'Pune', 4.7, 280, 20500, 19, 26, 'Pooja Patil', 'Sweet Cravings'),
(121, 'Kebab Kingdom', 'Mughlai', 'Delhi', 4.4, 530, 14100, 59, 44, 'Sameer Khan', 'Kebab Kingdom'),
(122, 'Taco Town', 'Mexican', 'Mumbai', 4.2, 460, 8700, 49, 39, 'Kabir Malhotra', 'Taco Town'),
(123, 'Farm Fresh', 'Healthy', 'Pune', 4.6, 390, 12500, 29, 30, 'Rohan Kulkarni', 'Farm Fresh'),
(124, 'Midnight Bites', 'Fast Food', 'Pune', 4.0, 250, 24800, 39, 34, 'Tanvi Shah', 'Midnight Bites'),
(125, 'Kolkata Kitchen', 'Bengali', 'Kolkata', 4.3, 340, 11400, 39, 43, 'Soham Sen', 'Kolkata Kitchen'),
(126, 'Kerala Cafe', 'South Indian', 'Kochi', 4.5, 310, 12700, 29, 31, 'Akhil Menon', 'Kerala Cafe'),
(127, 'Royal Rajputana', 'Rajasthani', 'Jaipur', 4.7, 470, 9200, 49, 46, 'Vivek Rathore', 'Rajputana Foods'),
(128, 'Namma Meals', 'South Indian', 'Bengaluru', 4.4, 275, 23900, 19, 27, 'Kavya Shetty', 'Namma Meals'),
(129, 'Lassi Lab', 'Beverages', 'Pune', 4.1, 160, 18200, 19, 21, 'Dev Malhotra', 'Lassi Lab'),
(130, 'Flame & Grill', 'BBQ', 'Mumbai', 4.8, 880, 8300, 79, 52, 'Aditya Kapoor', 'Flame & Grill');

-- 4. Result Check Karein
SELECT * FROM restaurants;
SELECT * FROM restaurants WHERE  rating > 4.5;
SELECT * FROM restaurants WHERE avg_order_value < 300;
SELECT * FROM restaurants WHERE city = 'pune';
SELECT * FROM restaurants WHERE orders_count > 20000;
SELECT * FROM restaurants WHERE est_delivery_time > 40;
SELECT * FROM restaurants WHERE rating BETWEEN  4.2 AND 4.7;
SELECT * FROM restaurants WHERE cuisine IN ('south indian ', 'italian', 'biryani');
SELECT * FROM restaurants WHERE owner_name LIKE '%Patil%';
SELECT * FROM restaurants WHERE brand = restaurant_name ;
SELECT * FROM restaurants WHERE delivery_fee <30;
# level 2 Recommendation team 
SELECT * FROM restaurants  ORDER BY orders_count DESC LIMIT 5; 
SELECT * FROM restaurants ORDER BY orders_count ASC LIMIT 5;
SELECT * FROM restaurants ORDER by rating ASC;
SELECT DISTINCT cuisine FROM restaurants;
SELECT restaurant_name AS Restaurant_Name , rating AS Customer_Rating FROM restaurants;
SELECT restaurant_name, owner_name ,brand FROM restaurants;
SELECT * FROM restaurants ORDER BY CITY ASC ,rating DESC;
SELECT * FROM restaurants WHERE orders_count >10000 ORDER BY rating DESC LIMIT 5;
SELECT * FROM C WHERE city = 'pune' ORDER BY orders_count DESC LIMIT 3;
SELECT * FROM restaurants ORDER BY delivery_fee DESC LIMIT 5;
SELECT restaurant_name FROM restaurants WHERE restaurant_name LIKE 'S%';
SELECT restaurant_name FROM restaurants  WHERE restaurant_name LIKE '%house';
SELECT restaurant_name  FROM restaurants WHERE restaurant_name LIKE '%cafe%';
SELECT * FROM restaurants WHERE cuisine LIKE '%Indian%';
SELECT  restaurant_name FROM restaurants WHERE LENGTH(restaurant_name) = 5;
SELECT owner_name FROM restaurants  WHERE owner_name LIKE '%raj%';
SELECT brand FROM restaurants WHERE brand LIKE '%Food%';
SELECT * FROM restaurants WHERE est_delivery_time BETWEEN 25 AND 40;
SELECT * FROM restaurants WHERE city IN ('pune','mumbai'); 
SELECT * FROM restaurants WHERE cuisine = 'Fast Food' AND orders_count > 20000;
SELECT * FROM restaurants WHERE rating > 4.5 AND delivery_fee < 40;
SELECT * FROM restaurants WHERE city = 'Bengaluru' AND orders_count > 10000;
SELECT * FROM restaurants WHERE owner_name != 'Rahul Jain';





 

