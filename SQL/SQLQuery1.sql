-- Proporsi dari Gender 

SELECT 
    Gender,
    COUNT(*) AS Total,
    ROUND(CAST(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_Churn) AS FLOAT), 2) AS Percentage
FROM 
    stg_Churn
GROUP BY 
    Gender;

-- Proporsi Contract
SELECT 
    Contract,
    COUNT(*) AS Total,
    ROUND(CAST(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_Churn) AS FLOAT), 2) AS Percentage
FROM 
    stg_Churn
GROUP BY 
    Contract;

-- Customer Status 
SELECT 
    Customer_Status,
    COUNT(*) AS Total,
    ROUND(CAST(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_Churn) AS FLOAT), 2) AS Percentage
FROM 
    stg_Churn
GROUP BY 
    Customer_Status;

-- State
SELECT 
    State,
    COUNT(*) AS Total,
    ROUND(CAST(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_Churn) AS FLOAT), 2) AS Percentage
FROM 
    stg_Churn
GROUP BY 
    State
ORDER BY 
    Percentage DESC;

-- Unique Value Internet_Type
SELECT 
    DISTINCT Internet_Type
FROM stg_Churn
