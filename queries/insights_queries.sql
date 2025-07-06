-- ============================================
-- QUERY 1: Top-Selling Products (by Units Sold)
-- ============================================

SELECT
    p.product_name,
    SUM(s.units_sold) AS total_units_sold
FROM
    sales s
JOIN
    products p ON s.product_id = p.product_id
GROUP BY
    p.product_name
ORDER BY
    total_units_sold DESC
LIMIT 5;


-- ===================================================
-- QUERY 2: Total Units Sold by Product Category
-- ===================================================

SELECT 
    p.category,
    SUM(s.units_sold) AS total_units_sold
FROM 
    sales s
JOIN 
    products p ON s.product_id = p.product_id
GROUP BY 
    p.category
ORDER BY 
    total_units_sold DESC;


-- ================================================
-- QUERY 3: Total Revenue by Product
-- ================================================

SELECT
    p.product_name,
    SUM(s.units_sold * p.price) AS total_revenue
FROM
    sales s 
JOIN
    products p ON s.product_id = p.product_id
GROUP BY
    p.product_name
ORDER BY
    total_revenue DESC;


-- ========================================================
-- QUERY 4: Total Revenue by Product Category
-- ========================================================

SELECT
    p.category,
    SUM(s.units_sold * p.price) AS total_revenue
FROM
    sales s 
JOIN
    products p ON s.product_id = p.product_id
GROUP BY
    p.category
ORDER BY
    total_revenue DESC;


-- =========================================================================
-- QUERY 5: Most Popular Ingredients (Based on Units Sold of Products)
-- =========================================================================

WITH exploded_ingredients AS (
    SELECT
        p.product_id,
        unnest(string_to_array(p.ingredients, '; ')) AS ingredient
    FROM
        products p
),
ingredient_sales AS (
    SELECT
        ei.ingredient,
        SUM(s.units_sold) AS total_units_sold
    FROM
        exploded_ingredients ei 
    JOIN
        sales s ON ei.product_id = s.product_id
    GROUP BY
        ei.ingredient
)
SELECT
    ingredient,
    total_units_sold
FROM
    ingredient_sales
ORDER BY
    total_units_sold DESC;
