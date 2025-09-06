CREATE DATABASE DefenseIndustry;
USE DefenseIndustry;
CREATE TABLE DefenseCompanies (
    Rank2024 INT,
    Rank2023 INT,
    Company VARCHAR(100),
    Country VARCHAR(50),
    TotalRevenue2024 BIGINT,
    DefenseRevenue2024 BIGINT,
    TotalRevenue2023 BIGINT,
    DefenseRevenue2023 BIGINT,
    DefenseRevenuePercent2024 FLOAT
);

USE DefenseIndustry;

SELECT Company, DefenseRevenue2024
FROM DefenseCompanies
ORDER BY DefenseRevenue2024 DESC
LIMIT 10;

SELECT Company,
       ROUND((TotalRevenue2024 - TotalRevenue2023)/TotalRevenue2023*100,2) AS TotalRevenueGrowthPercent,
       ROUND((DefenseRevenue2024 - DefenseRevenue2023)/DefenseRevenue2023*100,2) AS DefenseRevenueGrowthPercent
FROM DefenseCompanies
ORDER BY DefenseRevenueGrowthPercent DESC
LIMIT 10;


SELECT Company, Rank2023, Rank2024, (Rank2023 - Rank2024) AS RankChange
FROM DefenseCompanies
ORDER BY RankChange DESC;


SELECT Country, ROUND(AVG(DefenseRevenuePercent2024)*100,2) AS AvgDefenseRevenuePercent
FROM DefenseCompanies
GROUP BY Country
ORDER BY AvgDefenseRevenuePercent DESC;


SELECT Company,
       ROUND((DefenseRevenue2024/TotalRevenue2024 - DefenseRevenue2023/TotalRevenue2023)*100,2) AS DefensePercentGrowth
FROM DefenseCompanies
ORDER BY DefensePercentGrowth DESC
LIMIT 10;


