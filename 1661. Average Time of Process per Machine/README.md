# 1661. Average Time of Process per Machine

## Table: Activity

| Column Name    | Type    |
|----------------|---------|
| machine_id     | int     |
| process_id     | int     |
| activity_type  | enum    |
| timestamp      | float   |

- **machine_id**: The ID of a machine.
- **process_id**: The ID of a process running on the machine with ID `machine_id`.
- **activity_type**: An ENUM representing the type of activity, where 'start' means the process started and 'end' means the process ended.
- **timestamp**: A float representing the current time in seconds.

## Problem Statement

There is a factory website that has several machines, each running the same number of processes. Write a SQL query to find the average time each machine takes to complete a process.

The time to complete a process is calculated as the difference between the 'end' timestamp and the 'start' timestamp. The average time is obtained by dividing the total time to complete all processes by the number of processes run on each machine.

The resulting table should display the `machine_id` along with the average processing time, rounded to 3 decimal places.

## Example

**Input:**

Activity table:

| machine_id | process_id | activity_type | timestamp |
|------------|------------|---------------|-----------|
| 0          | 0          | start         | 0.712     |
| 0          | 0          | end           | 1.520     |
| 0          | 1          | start         | 3.140     |
| 0          | 1          | end           | 4.120     |
| 1          | 0          | start         | 0.550     |
| 1          | 0          | end           | 1.550     |
| 1          | 1          | start         | 0.430     |
| 1          | 1          | end           | 1.420     |
| 2          | 0          | start         | 4.100     |
| 2          | 0          | end           | 4.512     |
| 2          | 1          | start         | 2.500     |
| 2          | 1          | end           | 5.000     |

**Output:**

| machine_id | processing_time |
|------------|-----------------|
| 0          | 0.894           |
| 1          | 0.995           |
| 2          | 1.456           |

**Explanation:**

- Machine 0's average time is calculated as \[((1.520 - 0.712) + (4.120 - 3.140)) / 2 = 0.894\].
- Machine 1's average time is calculated as \[((1.550 - 0.550) + (1.420 - 0.430)) / 2 = 0.995\].
- Machine 2's average time is calculated as \[((4.512 - 4.100) + (5.000 - 2.500)) / 2 = 1.456\].
