--Questions
--Main Question: What type of games have had the most success in the video game market?

--Questions that will help explain the trends

--1. What is the trend of the top games of the market over the years? Line Graph
--2. What is the Genres have the most Games? Bar Graph
--3. What Genres have the highest sales? Bar Graph
--4. Which Platform has the highest sales? Bar Graph
--5. What Country has the most sales? Pie Graph

Select *
From PortfolioProjects..VGSClean

-- Drop the extra row
Alter Table PortfolioProjects..VGSClean
Drop Column F1


--1. What is the trend of the top games of the market over the years? Line Graph
CREATE VIEW VGCtable_1 AS 
SELECT Year, SUM(Global_Sales) AS Total_Sales, Genre 
FROM PortfolioProjects..VGSClean 
GROUP BY Year, Genre


Select *
From PortfolioProjects..VGCtable_1
order by genre desc

--2. What is the Genres have the most Games? Bar Graph
CREATE VIEW VGCtable_2 AS 
Select Genre
FROM PortfolioProjects..VGSClean


Select *
From PortfolioProjects..VGCtable_2

--3. What Genres have the highest sales? Bar Graph

CREATE VIEW VGCtable_3 AS 
SELECT Genre, SUM(Global_Sales) AS Total_Sales
FROM PortfolioProjects..VGSClean
GROUP BY Genre;


Select *
From PortfolioProjects..VGCtable_3

--4. Which Platform has the highest sales? Bar Graph
CREATE VIEW VGCtable_4 AS 
SELECT Platform, SUM(Global_Sales) AS Total_Sales
FROM PortfolioProjects..VGSClean
GROUP BY Platform;


Select *
From PortfolioProjects..VGCtable_4

--5. What Country has the most sales? Pie Graph

CREATE VIEW VGCtable_5 AS 
SELECT Sum(NA_Sales) As Total_NA_Sales, Sum(EU_Sales) As Total_EU_Sales, Sum(JP_Sales) As Total_JP_Sales, Sum(Other_Sales) As Total_Other_Sales
FROM PortfolioProjects..VGSClean



Select *
From PortfolioProjects..VGCtable_5