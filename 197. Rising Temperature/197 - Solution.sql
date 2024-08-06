SELECT w1.id
FROM Weather w1
JOIN Weather w2 ON w1.recordDate = DATEADD(DAY, 1, w2.recordDate)
WHERE w1.temperature > w2.temperature;
-- Key: ON w1.recordDate = DATEADD(DAY, 1, w2.recordDate): This condition links rows from w1 and w2 where the recordDate in w1 is exactly one day after the recordDate in w2. 
-- The DATEADD(DAY, 1, w2.recordDate) function adds one day to the recordDate in w2, thus matching each record in w1 with the record from the previous day in w2.
