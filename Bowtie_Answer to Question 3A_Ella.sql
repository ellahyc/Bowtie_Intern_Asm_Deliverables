-- Answer to Question 3A
SELECT 
    COUNT(df_claim.policy_number) AS claim_count, 
    df_policy.product 
FROM 
    df_claim
LEFT JOIN 
    df_policy ON df_claim.policy_number = df_policy.policy_number
WHERE 
    df_claim.submit_date >= '2021-01-01' 
    AND df_claim.submit_date <= '2021-12-31'
GROUP BY 
    df_policy.product;

-- Obtain the number of submitted claims in the year 2021 by products.