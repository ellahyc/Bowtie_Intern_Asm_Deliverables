-- Answer to Question 3B
SELECT 
    df_policy.policy_number,
    COUNT(df_invoice.id) AS invoice_id_count,
    COUNT(df_policy.user_id) AS policy_user_id_count
FROM
    df_invoice
LEFT JOIN
    df_policy ON df_invoice.policy_number = df_policy.policy_number
WHERE
    df_policy.policy_number IS NOT NULL
GROUP BY
    df_policy.policy_number


-- GOAL: Find out how many users have paid for how many policies AND how many unique policy numbers
-- Assumption: If User ID in policy cannot be mapped with ID in Invoice, treat it as error and reject.