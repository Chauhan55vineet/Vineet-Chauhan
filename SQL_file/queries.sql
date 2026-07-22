/* ==========================================================================
   DECODING CUSTOMER VALUE — SQL ANALYSIS SUITE
   Dataset : customer_intelligence_dataset.csv (loaded as a SQL table)
   Author  : Founder Intelligence Project
   Purpose : 8 business-driven analyses answering "who are our customers,
             what makes them valuable, and where should we invest?"
   ========================================================================== */


/* --------------------------------------------------------------------------
   ANALYSIS 1 — Loyalty Segment Distribution
   Business Question: What type of customers does the company currently have?
   -------------------------------------------------------------------------- */
SELECT
    loyalty_segment,
    COUNT(*) AS total_customers
FROM customer_intelligence_dataset
GROUP BY loyalty_segment
ORDER BY total_customers DESC;
-- Insight: Potential Loyalists (716) are the largest segment, closely
-- followed by Loyal (709) — a strong upsell/conversion opportunity.


/* --------------------------------------------------------------------------
   ANALYSIS 2 — Customer Value Pyramid
   Business Question: How is the customer base distributed across value tiers?
   -------------------------------------------------------------------------- */
SELECT
    value_tier,
    COUNT(*) AS total_customers
FROM customer_intelligence_dataset
GROUP BY value_tier
ORDER BY total_customers DESC;
-- Insight: Nearly even distribution across tiers -> no single dominant
-- segment; tier-specific engagement strategies are required.


/* --------------------------------------------------------------------------
   ANALYSIS 3 — Loyal vs. Discount-Dependent Customers
   Business Question: Who is genuinely loyal vs. who only buys on discount?
   -------------------------------------------------------------------------- */
SELECT
    dependency_segment,
    loyalty_segment,
    COUNT(*) AS customers
FROM customer_intelligence_dataset
GROUP BY dependency_segment, loyalty_segment
ORDER BY customers DESC;
-- Insight: 539 Champions are "Highly Promo Dependent" (loyalty may be
-- discount-driven, not brand-driven). 519 "Loyal Customers" are already
-- At Risk — past loyalty does not guarantee retention.


/* --------------------------------------------------------------------------
   ANALYSIS 4 — High Value vs. Low Value Customers
   Business Question: What separates high-value customers from low-value ones?
   -------------------------------------------------------------------------- */
SELECT
    value_tier,
    AVG(frequency_score)        AS avg_frequency,
    AVG(loyalty_score)          AS avg_loyalty,
    AVG(customer_value_score)   AS avg_value
FROM customer_intelligence_dataset
GROUP BY value_tier
ORDER BY avg_value DESC;
-- Insight: Purchase frequency is nearly flat across tiers, but loyalty
-- score nearly doubles from Very Low -> High Value. Loyalty, not
-- frequency, is the strongest driver of customer value.


/* --------------------------------------------------------------------------
   ANALYSIS 5 — Best Performing Product Categories
   Business Question: Which categories drive stronger customer retention?
   -------------------------------------------------------------------------- */
SELECT
    category,
    AVG(loyalty_score)        AS avg_loyalty,
    AVG(customer_value_score) AS avg_value
FROM customer_intelligence_dataset
GROUP BY category
ORDER BY avg_loyalty DESC;
-- Insight: Footwear (0.456) and Accessories (0.450) lead on loyalty and
-- value; Outerwear lags on both metrics.


/* --------------------------------------------------------------------------
   ANALYSIS 6 — Geography: Organic Demand vs. Discount-Driven Demand
   Business Question: Which locations show the strongest organic demand?
   -------------------------------------------------------------------------- */
SELECT
    location,
    AVG(dependency_score) AS avg_dependency,
    AVG(loyalty_score)    AS avg_loyalty
FROM customer_intelligence_dataset
GROUP BY location
ORDER BY avg_dependency ASC;
-- Insight: Kansas, Maine, Connecticut = strongest organic demand (low
-- dependency). Iowa, Indiana, Hawaii = most discount-driven.


/* --------------------------------------------------------------------------
   ANALYSIS 7 — Demographic Analysis
   Business Question: Which age groups are the most valuable?
   -------------------------------------------------------------------------- */
SELECT
    age_group,
    AVG(customer_value_score) AS avg_value,
    AVG(loyalty_score)        AS avg_loyalty
FROM customer_intelligence_dataset
GROUP BY age_group
ORDER BY avg_value DESC;
-- Insight: Value/loyalty barely varies by age -> demographics are a weak
-- predictor; behavior-based segmentation matters far more.


/* --------------------------------------------------------------------------
   ANALYSIS 8 — Ideal Customer Profile (Champion Segment)
   Business Question: What does the ideal (Champion) customer look like?
   -------------------------------------------------------------------------- */
SELECT
    age_group,
    gender,
    category,
    COUNT(*)            AS customers,
    AVG(loyalty_score)  AS avg_loyalty
FROM customer_intelligence_dataset
WHERE loyalty_segment = 'Champion'
GROUP BY age_group, gender, category
ORDER BY customers DESC;
-- Insight: Champions skew Male, buying Clothing & Accessories, with the
-- strongest concentration in the 55+ age group.
