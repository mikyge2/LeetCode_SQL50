# 2704. To Be Or Not To Be - Easy

## Problem Statement

Write a function `expect` that helps developers test their code. It should take in any value `val` and return an object with the following two functions:

- **`toBe(val)`**: Accepts another value and returns `true` if the two values are strictly equal (`===`). If they are not equal, it should throw an error with the message `"Not Equal"`.
- **`notToBe(val)`**: Accepts another value and returns `true` if the two values are strictly not equal (`!==`). If they are equal, it should throw an error with the message `"Equal"`.

## Example

### Example 1

**Input:**

```javascript
const func = () => expect(5).toBe(5);
console.log(func()); // Output: { "value": true }
