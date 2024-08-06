/**
 * @param {any} val
 * @return {Object}
 */
var expect = function (val) {
    return {
        toBe: function (val2) {
            if (val === val2) {
                return true;
            } else {
                throw new Error("Not Equal");
            }
        },
        notToBe: function (val2) {
            if (val !== val2) {
                return true;
            } else {
                throw new Error("Equal");
            }
        }
    };
};

// Example usage:
try {
    console.log(expect(5).toBe(5)); // true
    console.log(expect(5).toBe(6)); // This will throw an error "Not Equal"
} catch (error) {
    console.error(error.message);
}

try {
    console.log(expect(5).notToBe(6)); // true
    console.log(expect(5).notToBe(5)); // This will throw an error "Equal"
} catch (error) {
    console.error(error.message);
}

/* Key: toBe(val2):

Checks if val is strictly equal to val2.
Returns true if they are equal.
Throws an Error with the message "Not Equal" if they are not equal.
notToBe(val2):

Checks if val is strictly not equal to val2.
Returns true if they are not equal.
Throws an Error with the message "Equal" if they are equal. */
