# 1683. Invalid Tweets - Easy

## Table: Tweets

| Column Name | Type    |
|-------------|---------|
| tweet_id    | int     |
| content     | varchar |

- `tweet_id` is the primary key (column with unique values) for this table.
- This table contains all the tweets in a social media app.

Write a solution to find the IDs of the invalid tweets. A tweet is considered invalid if the number of characters in the content of the tweet is strictly greater than 15.

Return the result table in any order.

The result format is in the following example.

### Example 1:

**Tweets table:**

| tweet_id | content                          |
|----------|----------------------------------|
| 1        | Vote for Biden                   |
| 2        | Let us make America great again! |

**Output:**

| tweet_id |
|----------|
| 2        |

**Explanation:**  
- Tweet 1 has a length of 14 characters, making it a valid tweet.
- Tweet 2 has a length of 32 characters, making it an invalid tweet.
