SELECT
    machine_id,
    ROUND(AVG(end_time - start_time), 3) AS processing_time
FROM (
    SELECT
        a1.machine_id,
        a1.process_id,
        MIN(CASE WHEN a1.activity_type = 'start' THEN a1.timestamp END) AS start_time,
        MIN(CASE WHEN a1.activity_type = 'end' THEN a1.timestamp END) AS end_time
    FROM
        Activity a1
    GROUP BY
        a1.machine_id,
        a1.process_id
) AS ProcessTimes
GROUP BY
    machine_id;
/* Key:
Inner Query (ProcessTimes):
MIN(CASE WHEN a1.activity_type = 'start' THEN a1.timestamp END) AS start_time: Retrieves the start timestamp for each process.
MIN(CASE WHEN a1.activity_type = 'end' THEN a1.timestamp END) AS end_time: Retrieves the end timestamp for each process.
GROUP BY a1.machine_id, a1.process_id: Groups by machine and process to compute the start and end times.

Outer Query:
ROUND(AVG(end_time - start_time), 3) AS processing_time: Calculates the average duration and rounds it to 3 decimal places.
GROUP BY machine_id: Groups by machine to get the average processing time for each machine.
**/
