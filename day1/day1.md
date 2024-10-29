# Day 1: JavaScript Learning Notes

This document captures all the key concepts and code examples I explored today as part of my backend JavaScript learning journey. The topics range from core JavaScript basics like variables, data types, and operators, to functions, loops, and asynchronous programming. Each section has an explanation and examples for reference.

---

## Table of Contents

1. [Variables and Data Types](#variables-and-data-types)
2. [Operators](#operators)
3. [Conditionals](#conditionals)
4. [Switch Statements](#switch-statements)
5. [Loops](#loops)
6. [Functions](#functions)
7. [Objects and Arrays](#objects-and-arrays)
8. [Array Methods](#array-methods)
9. [Asynchronous JavaScript](#asynchronous-javascript)

---

## Variables and Data Types

JavaScript has three ways to declare variables: `var`, `let`, and `const`. The difference lies in their **scope** and **mutability**:

- `var` is function-scoped, while `let` and `const` are block-scoped.
- `const` variables cannot be reassigned once they are set, making them suitable for constants.

### Example:

```javascript
let name = "Alice"; // Block-scoped, can be reassigned
const age = 25; // Constant, cannot be changed
var city = "Paris"; // Function-scoped, can be reassigned
```

JavaScript data types include:

- **Primitive Types**: `string`, `number`, `boolean`, `null`, `undefined`, `symbol`, `bigint`
- **Non-Primitive Types**: `object` (arrays, functions, etc.)

---

## Operators

Operators are symbols that perform operations on variables and values. Common types of operators include:

1. **Arithmetic Operators** (`+`, `-`, `*`, `/`, `%`) for basic math.
2. **Comparison Operators** (`==`, `===`, `!=`, `<`, `>`) to compare values.
3. **Logical Operators** (`&&`, `||`, `!`) for logical operations.
4. **Assignment Operators** (`=`, `+=`, `-=`, etc.) to assign values.

### Example:

```javascript
let sum = 10 + 5; // 15
let isEqual = 10 === 10; // true
let result = isEqual && sum > 10; // true
```

---

## Conditionals

Conditionals in JavaScript allow you to control the flow based on conditions using `if`, `else if`, and `else`. They are often used with comparison and logical operators.

### Example:

```javascript
let age = 18;
if (age >= 18) {
  console.log("You are an adult.");
} else if (age >= 13) {
  console.log("You are a teenager.");
} else {
  console.log("You are a child.");
}
```

---

## Switch Statements

The `switch` statement is an alternative to `if...else` chains and is particularly useful when comparing a single expression against multiple values. Remember to use `break` to prevent fall-through.

### Example:

```javascript
let fruit = "apple";
switch (fruit) {
  case "apple":
    console.log("Apples are $1.00 each.");
    break;
  case "banana":
    console.log("Bananas are $0.50 each.");
    break;
  default:
    console.log("Sorry, we don't have that fruit.");
}
```

---

## Loops

Loops allow you to repeat code execution as long as a specified condition is met. Common types in JavaScript:

- **`for` loop**: Iterates with a counter.
- **`for...of` loop**: Loops through elements in an iterable (arrays, strings).
- **`for...in` loop**: Loops through properties in an object.
- **`forEach`**: Executes a function for each array element.

### Example:

```javascript
let colors = ["red", "green", "blue"];
for (let color of colors) {
  console.log(color); // Outputs each color in the array
}
```

---

## Functions

Functions are blocks of reusable code that perform specific tasks. JavaScript supports different types of functions:

1. **Function Declarations**: Defined with the `function` keyword.
2. **Function Expressions**: Stored in variables.
3. **Arrow Functions**: A shorthand syntax for writing functions.

Functions also support **closures**, meaning they can "remember" variables from their outer scope.

### Example:

```javascript
function greet(name) {
  return `Hello, ${name}!`;
}

const greetExpression = function (name) {
  return `Hello, ${name}!`;
};

const greetArrow = (name) => `Hello, ${name}!`;
```

---

## Objects and Arrays

**Objects** in JavaScript are collections of key-value pairs and are used to store related data and functionality. Arrays are ordered lists of values.

### Example:

```javascript
let person = { name: "Alice", age: 25 }; // Object
let fruits = ["apple", "banana", "cherry"]; // Array
```

---

## Array Methods

JavaScript arrays have powerful built-in methods for processing elements:

- **`push()`**: Adds an element to the end of an array.
- **`pop()`**: Removes the last element.
- **`shift()`**: Removes the first element.
- **`unshift()`**: Adds an element to the beginning.
- **`map()`**: Creates a new array by transforming each element.
- **`filter()`**: Creates a new array with elements that match a condition.
- **`reduce()`**: Reduces an array to a single value by combining elements.

### Example:

```javascript
let numbers = [1, 2, 3, 4, 5];
let doubled = numbers.map((num) => num * 2); // [2, 4, 6, 8, 10]
let evens = numbers.filter((num) => num % 2 === 0); // [2, 4]
let sum = numbers.reduce((total, num) => total + num, 0); // 15
```

---

## Asynchronous JavaScript

JavaScript has several ways to handle asynchronous tasks, such as API calls, file loading, or database interactions:

1. **Callbacks**: Functions passed as arguments to be executed later.
2. **Promises**: Objects representing the eventual completion (or failure) of an asynchronous operation.
3. **Async/Await**: Syntactic sugar for working with Promises, making asynchronous code look synchronous.

### Example:

```javascript
function fetchData(callback) {
  setTimeout(() => {
    callback("Data received!");
  }, 1000);
}

fetchData((message) => console.log(message)); // Output after 1 second: Data received!

// Using Promises
const fetchDataPromise = new Promise((resolve, reject) => {
  setTimeout(() => {
    resolve("Data received!");
  }, 1000);
});

fetchDataPromise.then((message) => console.log(message));

// Using Async/Await
async function fetchAsyncData() {
  let message = await fetchDataPromise;
  console.log(message);
}
fetchAsyncData();
```

---

### Summary

Today, I learned foundational concepts in JavaScript:

- Declaring and working with variables, data types, and operators.
- Using conditionals and loops to control flow.
- Writing functions and understanding different types of functions.
- Working with objects and arrays, and applying useful array methods.
- Introducing asynchronous programming with callbacks, promises, and async/await.

This document serves as a comprehensive reference for Day 1 of JavaScript learning, with clear explanations and examples for each concept.
