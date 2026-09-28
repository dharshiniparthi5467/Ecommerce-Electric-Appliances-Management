USE ELECTRICAL_APPLIANCES;

CREATE TABLE Review
(
    ReviewID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ProductID INT,
    ReviewText VARCHAR(200),
    ReviewDate DATE,
    FOREIGN KEY (ProductID)
    REFERENCES PRODUCT(ProductID)
);

CREATE TABLE Rating
(
    RatingID INT PRIMARY KEY,
    ReviewID INT,
    Rating INT,
    FOREIGN KEY (ReviewID)
    REFERENCES Review(ReviewID)
);

INSERT INTO Review VALUES
(701,'ARUN',102,'Good quality refrigerator','2026-09-01'),
(702,'KAVI',103,'Excellent product','2026-09-02'),
(703,'RIYA',104,'Good cooling','2026-09-03'),
(704,'MANOJ',105,'Compact and useful','2026-09-04'),
(705,'PRIYA',106,'Good washing performance','2026-09-05'),
(706,'SURESH',107,'Very good quality','2026-09-06'),
(707,'DIVYA',109,'Works well','2026-09-07'),
(708,'RAJ',110,'Good product','2026-09-08'),
(709,'ANU',111,'Clear picture quality','2026-09-09'),
(710,'VIGNESH',112,'Nice smart TV','2026-09-10'),
(711,'ARUN',113,'Excellent display','2026-09-11'),
(712,'KAVI',114,'Good picture quality','2026-09-12'),
(713,'RIYA',115,'Premium quality','2026-09-13'),
(714,'MANOJ',116,'Good cooling performance','2026-09-14'),
(715,'PRIYA',117,'Easy to use','2026-09-15'),
(716,'SURESH',118,'Energy efficient AC','2026-09-16'),
(717,'DIVYA',119,'Good cooling performance','2026-09-17'),
(718,'RAJ',120,'Powerful AC','2026-09-18'),
(719,'ANU',126,'Good fan quality','2026-09-19'),
(720,'VIGNESH',127,'Lightweight and useful','2026-09-20');

INSERT INTO Rating VALUES
(801,701,5),
(802,702,5),
(803,703,4),
(804,704,4),
(805,705,5),
(806,706,4),
(807,707,4),
(808,708,5),
(809,709,4),
(810,710,5),
(811,711,5),
(812,712,4),
(813,713,5),
(814,714,4),
(815,715,4),
(816,716,5),
(817,717,4),
(818,718,5),
(819,719,4),
(820,720,5);

SELECT * FROM Review;

SELECT * FROM Rating;

SELECT * FROM Rating
WHERE Rating = 5;

SELECT * FROM Rating
WHERE Rating = 4;

SELECT * FROM Review
WHERE CustomerName = 'ARUN';

SELECT * FROM Review
WHERE ProductID = 102;

SELECT * FROM Review
ORDER BY ReviewDate DESC;

SELECT * FROM Review
ORDER BY CustomerName;

SELECT COUNT(*) AS TotalReviews
FROM Review;

SELECT Rating, COUNT(*) AS RatingCount
FROM Rating
GROUP BY Rating;

SELECT AVG(Rating) AS AverageRating
FROM Rating;

SELECT MIN(Rating) AS LowestRating
FROM Rating;

SELECT MAX(Rating) AS HighestRating
FROM Rating;

SELECT R.ReviewID, R.CustomerName,
       R.ProductID, R.ReviewText,
       R.ReviewDate, T.Rating
FROM Review R
JOIN Rating T
ON R.ReviewID = T.ReviewID;

SELECT R.CustomerName, R.ReviewText, T.Rating
FROM Review R
JOIN Rating T
ON R.ReviewID = T.ReviewID
WHERE T.Rating >= 4;















