 PROJECT RentSmart 
AUTHOR Somesh Shanbhag, Lead BA
DATE Dec 3, 2025
PURPOSE Validate Affordable Suburbs for Marketing Campaign (Story RS-12)


-- =======================================================
-- QUERY 1 High-Level Market Scan
-- Business Question Which regions have the most affordable options
-- =======================================================

SELECT 
    Regionname, 
    COUNT() as Total_Properties, 
    Round(AVG(Price),3) as Average_Buy_Price,
    Round(AVG(Price  0.04),3) as Est_Avg_Annual_Rent
FROM Cleaned_Melbourne_Data
WHERE regionname != ''
GROUP BY Regionname
ORDER BY Est_Avg_Annual_Rent ASC;

-- BA Insight 'Western Metropolitan' is the most affordable region.
-- Recommendation Target marketing ads to users searching in the West.