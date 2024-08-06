# 197. Rising Temperature

## Table: Weather

| Column Name   | Type    |
|---------------|---------|
| id            | int     |
| recordDate    | date    |
| temperature   | int     |

- **id**: The unique identifier for each record.
- **recordDate**: The date of the temperature record.
- **temperature**: The recorded temperature on the given date.

## Problem Statement

Write a solution to find all dates' IDs where the temperature was higher compared to the previous date (yesterday).

## Example

**Input:**

Weather table:

| id  | recordDate | temperature |
|-----|------------|-------------|
| 1   | 2015-01-01 | 10          |
| 2   | 2015-01-02 | 25          |
| 3   | 2015-01-03 | 20          |
| 4   | 2015-01-04 | 30          |

**Output:**

| id  |
|-----|
| 2   |
| 4   |

**Explanation:**

- On **2015-01-02**, the temperature increased from 10 to 25 compared to **2015-01-01**.
- On **2015-01-04**, the temperature increased from 20 to 30 compared to **2015-01-03**.

## Solution Approach

To solve this problem, you can use a SQL query that compares the temperature of each record with the temperature of the previous day. The result should include the `id` of the records where the temperature is higher than the previous day.
