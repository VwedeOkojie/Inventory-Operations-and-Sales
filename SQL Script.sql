SELECT *
FROM customer_data

SELECT *
FROM sales_data

SELECT *
FROM inventory_data

--Monthly and Yearly Sales Trends

-- Monthly Sales Trends
SELECT 
    YEAR(invoice_date) AS Year,
    MONTH(invoice_date) AS Month,
    ROUND (SUM(price), 2) AS Total_Sales
FROM 
    sales_data
GROUP BY 
    YEAR(invoice_date), MONTH(invoice_date)
ORDER BY 
    Year, Month;

-- Yearly Sales Trends
SELECT 
    YEAR(invoice_date) AS Year,
    ROUND (SUM(price), 2) AS Total_Sales
FROM 
    sales_data
GROUP BY 
    YEAR(invoice_date)
ORDER BY 
    Year;

--Top Performing Products
SELECT TOP 10 
    category,
    ROUND (SUM(price), 2) AS Total_Sales,
    COUNT(*) AS Sales_Volume
FROM 
    sales_data
GROUP BY 
    category
ORDER BY 
    Total_Sales DESC

-- Sales by Store Location
SELECT 
    shopping_mall,
    ROUND (SUM(price), 2) AS Total_Sales
FROM 
    sales_data
GROUP BY 
    shopping_mall
ORDER BY 
    Total_Sales DESC;

-- Customer Segmentation Based on Purchasing Behavior
-- Recency
SELECT 
    customer_id,
    DATEDIFF(DAY, MAX(invoice_date), GETDATE()) AS Recency
FROM 
    sales_data
GROUP BY 
    customer_id;

-- Frequency
SELECT 
    customer_id,
    COUNT(*) AS Frequency
FROM 
    sales_data
GROUP BY 
    customer_id;

-- Monetary
SELECT 
    customer_id,
   ROUND (SUM(price), 2) AS Monetary
FROM 
    sales_data
GROUP BY 
    customer_id;

-- Identifying Most Valuable Customers
SELECT TOP 10
    customer_id,
    SUM(price) AS Total_Revenue
FROM 
    sales_data
GROUP BY 
    customer_id
ORDER BY 
    Total_Revenue DESC

-- Characteristics of High-Value Customers

-- Most Popular Age Range

SELECT 
    CASE 
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 55 THEN '46-55'
        WHEN age > 55 THEN '55+'
        ELSE 'Unknown'
    END AS Age_Range,
    COUNT(*) AS Count
FROM 
    customer_data
GROUP BY 
    CASE 
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 55 THEN '46-55'
        WHEN age > 55 THEN '55+'
        ELSE 'Unknown'
    END
ORDER BY 
    Count DESC;

-- Most Popular Payment Method
SELECT 
    payment_method,
    COUNT(*) AS Count
FROM 
    customer_data
GROUP BY 
    payment_method
ORDER BY 
    Count DESC;

--Most Popular Gender

SELECT 
    gender,
    COUNT(*) AS Count
FROM 
    customer_data
GROUP BY 
    gender
ORDER BY 
    Count DESC;


-- Inventory Turn Over Rates
SELECT 
    s.category,
    SUM(s.quantity) / AVG(i.inventory_level) AS Inventory_Turnover_Rate
FROM 
    sales_data s
JOIN 
    inventory_data i ON s.category = i.category
GROUP BY 
    s.category
ORDER BY 
    Inventory_Turnover_Rate DESC;

-- Average Daily Sales
SELECT 
    category,
    SUM(quantity) / COUNT(DISTINCT CONVERT(DATE, invoice_date)) AS Average_Daily_Sales
FROM 
    sales_data
GROUP BY 
    category;

-- Step 1: Calculate Average Daily Sales
WITH AverageDailySales AS (
    SELECT 
        category,
        SUM(quantity) / COUNT(DISTINCT CONVERT(DATE, invoice_date)) AS average_daily_sales
    FROM 
        sales_data
    GROUP BY 
        category
),

-- Step 2: Calculate Standard Deviation of Daily Sales
DailySalesStats AS (
    SELECT 
        category,
        STDEV(daily_sales) AS stddev_daily_sales
    FROM (
        SELECT 
            category,
            CONVERT(DATE, invoice_date) AS sale_date,
            SUM(quantity) AS daily_sales
        FROM 
            sales_data
        GROUP BY 
            category, CONVERT(DATE, invoice_date)
    ) AS daily_sales_data
    GROUP BY 
        category
)

-- Step 3: Join with Calculation Data and Calculate Inventory Metrics
SELECT 
    l.category,
    l.lead_time,
    l.order_cost,
    l.holding_cost,
    a.average_daily_sales,
    d.stddev_daily_sales,
    (a.average_daily_sales * l.lead_time) AS lead_time_demand,
    ROUND (1.65 * d.stddev_daily_sales * SQRT(l.lead_time), 2) AS safety_stock,  -- Assuming a 95% service level
    ROUND ((a.average_daily_sales * l.lead_time) + (1.65 * d.stddev_daily_sales * SQRT(l.lead_time)), 2) AS reorder_point,
    ROUND (SQRT((2 * a.average_daily_sales * 365 * l.order_cost) / l.holding_cost), 2) AS eoq,  -- Assuming 365 days in a year
    ROUND (SQRT((2 * a.average_daily_sales * 365 * l.order_cost) / l.holding_cost) / a.average_daily_sales, 2) AS reorder_frequency_days
FROM 
    lead_data l
JOIN 
    AverageDailySales a ON l.category = a.category
JOIN 
    DailySalesStats d ON l.category = d.category
ORDER BY 
    l.category;


-- Key Performance Indicators
SELECT 
    SUM(price) AS Total_Sales,
    AVG(price) AS Average_Order_Value,
    COUNT(DISTINCT customer_id) AS Total_Customers,
    COUNT(*) AS Total_Orders,
    SUM(price) / COUNT(DISTINCT customer_id) AS Customer_Acquisition_Cost
FROM 
    sales_data;

-- Total Sales
SELECT 
    category,
    ROUND (SUM(price), 2) AS Total_Sales
FROM 
    sales_data
GROUP BY 
    category
ORDER BY 
    category;



