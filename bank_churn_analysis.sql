USE bank_churn;
SHOW TABLES;
SELECT COUNT(*)
FROM 
   `bank_customer_churn_analysis_final`;
   SELECT
       country, 
       SUM(churn) AS churned_customers
FROM
`bank_customer_churn_analysis_final;`
GROUP BY country
ORDER BY churned_customers DESC;
SELECT
    gender,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(SUM(churn) * 100.0 /
COUNT(*), 2) AS churn_rate
FROM `bank_customer_churn_analysis_final;`
GROUP BY gender;
SELECT 
    active_member,
    COUNT(*) AS total_customers,
    SUM(CHURN) AS churned_customers,
    ROUND(SUM(churn) * 100.0 /
COUNT(*), 2) AS churn_rate
FROM `bank_customer_churn_analysis_final;`
GROUP BY active_member;
SELECT 
    CASE
        WHEN age BETWEEN 18 AND 27
THEN '18-27'
		WHEN age BETWEEN 28 AND 37
THEN '28-37'
        WHEN age BETWEEN 38 AND 47
THEN '38-47'
        WHEN age BETWEEN 48 AND 57
THEN '48-57'
         ELSE '58+'
	END AS age_group,
    COUNT(*) AS total_customers,
    SUM(CHURN) AS churned_customers,
    ROUND(SUM(churn) * 100.0 /
COUNT(*), 2) AS churn_rate
FROM 
`bank_customer_churn_analysis_final;`
GROUP BY age_group
ORDER BY churned_customers DESC;
SELECT
    credit_card,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(SUM(churn) * 100.0 / COUNT(*), 2) AS churn_rate
FROM `bank_customer_churn_analysis_final;`
GROUP BY credit_card;
SELECT
    tenure,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(SUM(churn) * 100.0 / COUNT(*), 2) AS churn_rate
FROM `bank_customer_churn_analysis_final;`
GROUP BY tenure
ORDER BY tenure;
SELECT
    products_number,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(SUM(churn) * 100.0 / COUNT(*), 2) AS churn_rate
FROM `bank_customer_churn_analysis_final;`
GROUP BY products_number
ORDER BY products_number;
SELECT
    gender,
    ROUND(AVG(balance), 2) AS average_balance
FROM `bank_customer_churn_analysis_final;`
GROUP BY gender;
SELECT
    gender,
    ROUND(AVG(credit_score), 2) AS average_credit_score
FROM `bank_customer_churn_analysis_final;`
GROUP BY gender;
SELECT
    gender,
    ROUND(AVG(tenure), 2) AS average_tenure
FROM `bank_customer_churn_analysis_final;`
GROUP BY gender;