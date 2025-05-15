-- SQL In-Depth Analysis for Marketing Campaign Analysis Project

-- 1. Top 5 Campaigns by Total Clicks
SELECT Campaign_ID, SUM(Clicks) AS Total_Clicks
FROM marketing_campaign
GROUP BY Campaign_ID
ORDER BY Total_Clicks DESC
LIMIT 5;

-- 2. Top 5 Campaigns by Total Conversions
SELECT Campaign_ID, SUM(Conversions) AS Total_Conversions
FROM marketing_campaign
GROUP BY Campaign_ID
ORDER BY Total_Conversions DESC
LIMIT 5;

-- 3. Average Conversion Rate by Channel
SELECT Channel_Used, AVG(Conversion_Rate) AS Avg_Conversion_Rate
FROM marketing_campaign
GROUP BY Channel_Used
ORDER BY Avg_Conversion_Rate DESC;

-- 4. Customer Segment Analysis
SELECT Customer_Segment, SUM(Engagement_Score) AS Total_Engagement, AVG(Conversion_Rate) AS Avg_Conversion_Rate
FROM marketing_campaign
GROUP BY Customer_Segment
ORDER BY Total_Engagement DESC;

-- 5. Location-wise Campaign Performance
SELECT Location, SUM(Clicks) AS Total_Clicks, SUM(Conversions) AS Total_Conversions, AVG(Conversion_Rate) AS Avg_Conversion_Rate
FROM marketing_campaign
GROUP BY Location
ORDER BY Total_Conversions DESC;

-- 6. Monthly Performance Trends
SELECT MONTH(Date) AS Month, SUM(Clicks) AS Total_Clicks, SUM(Conversions) AS Total_Conversions
FROM marketing_campaign
GROUP BY Month
ORDER BY Month;
