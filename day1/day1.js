// ---- Variables & Data Types ----
var oldVar = "I'm a var variable"; // Variable using var (globally scoped)
let myName = "Alice"; // Block-scoped variable
const myAge = 25; // Constant variable (cannot be changed)

// Data Types Examples
let numberType = 42; // Number
let bigIntType = 9007199254740991n; // BigInt
let stringType = "Hello, World"; // String
let booleanType = true; // Boolean
let undefinedType; // Undefined
let nullType = null; // Null
let symbolType = Symbol("uniqueIdentifier"); // Symbol
let objectType = { name: "Alice", age: 25 }; // Object

// ---- Operators ----
let addition = 5 + 3; // Arithmetic operator
let isEqual = 5 === 5; // Comparison operator
let andOperator = true && false; // Logical operator
let assignment = (myName = "Bob"); // Assignment operator

// ---- Conditionals ----
let age = 18;
if (age >= 18) {
  console.log("You are an adult.");
} else if (age < 18 && age >= 13) {
  console.log("You are a teenager.");
} else {
  console.log("You are a child.");
}

// Switch Statement
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

// ---- Loops ----
// For Loop
for (let i = 0; i < 3; i++) {
  console.log(`For loop iteration: ${i}`);
}

// For...of Loop (Arrays)
let colors = ["red", "green", "blue"];
for (let color of colors) {
  console.log(`Color: ${color}`);
}

// For...in Loop (Objects)
let person = { name: "Alice", age: 25 };
for (let key in person) {
  console.log(`${key}: ${person[key]}`);
}

// forEach Loop (Arrays)
colors.forEach((color) => console.log(`forEach color: ${color}`));

// ---- Functions ----
// Function Declaration
function greet(name) {
  return `Hello, ${name}!`;
}

// Function Expression
const greetExpression = function (name) {
  return `Hello, ${name}!`;
};

// Arrow Function
const greetArrow = (name) => `Hello, ${name}!`;

// Closures
function createGreeting(name) {
  return function () {
    console.log(`Hello, ${name}`);
  };
}
const greetAlice = createGreeting("Alice");
greetAlice(); // Outputs: Hello, Alice

// ---- Objects & Arrays ----
// Object Example
let car = { brand: "Toyota", model: "Camry", year: 2021 };
console.log(car.brand); // Accessing object property

// Array Methods
let fruits = ["apple", "banana", "cherry"];
fruits.push("date"); // Adds "date" to the end
fruits.pop(); // Removes "date" from the end
fruits.shift(); // Removes "apple" from the beginning
fruits.unshift("fig"); // Adds "fig" to the beginning

// Array Higher-Order Methods
let numbers = [1, 2, 3, 4, 5];
let doubled = numbers.map((num) => num * 2);
let evens = numbers.filter((num) => num % 2 === 0);
let sum = numbers.reduce((total, num) => total + num, 0);

console.log(doubled); // [2, 4, 6, 8, 10]
console.log(evens); // [2, 4]
console.log(sum); // 15

// ---- Asynchronous JavaScript ----
// Callback Example
function fetchData(callback) {
  setTimeout(() => {
    callback("Data received!");
  }, 1000);
}
fetchData((message) => console.log(message));

// Promise Example
const fetchDataPromise = new Promise((resolve, reject) => {
  setTimeout(() => {
    resolve("Data received!");
  }, 1000);
});
fetchDataPromise.then((message) => console.log(message));

// Async/Await Example
async function fetchAsyncData() {
  let message = await fetchDataPromise;
  console.log(message);
}
fetchAsyncData();
