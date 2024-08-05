SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;
-- Key: LEFT JOIN: We join the Visits and Transactions tables using visit_id. A LEFT JOIN is used so that all rows from the Visits table are included, even if there is no corresponding row in the Transactions table.
-- WHERE t.transaction_id IS NULL: This condition filters out the visits that did not have any transactions associated with them.
-- GROUP BY v.customer_id: We group the results by customer_id to count the number of visits without transactions for each customer.
