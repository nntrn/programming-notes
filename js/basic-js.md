# basic js notes

## references

[JS: Interview Algorithm](http://thatjsdude.com/interview/js1.html)
[Part -2: intermediate](http://thatjsdude.com/interview/js2.html)
[Clean Code](https://github.com/ryanmcdermott/clean-code-javascript)
[js scope](https://flaviocopes.com/javascript-automatic-semicolon-insertion/)

## variable naming[^variable-naming]

1. The name must contain only letters, digits, symbols $ and _.
2. The first character must not be a digit.

These names are valid:

```js
let $ = 1; // declared a variable with the name "$"
let _ = 2; // and now a variable with the name "_"

alert($ + _); // 3
```

[^variable-naming]: https://javascript.info/variables#variable-naming

## array methods

```js
var arr = [ 'a', 'b', 'c' ];

arr.slice(1, 2)  // copy elements
// [ 'b' ]

arr.slice(1)
// [ 'b', 'c' ]

arr.slice(-1)[0] // get last item
// 'c'

arr.push('x')  // append an element
//4

arr
// [ 'a', 'b', 'c', 'x' ]

arr.pop()  // remove last element
// 'x'
arr
// [ 'a', 'b', 'c' ]

arr.shift()  // remove first element
// 'a'
arr
// [ 'b', 'c' ]

arr.unshift('x')  // prepend an element
//3
arr
// [ 'x', 'b', 'c' ]

arr.indexOf('b')  // find the index of an element
// 1
arr.indexOf('y')
//-1

arr.join('-')  // all elements in a single string
// 'x-b-c'
arr.join('')
// 'xbc'
arr.join()
// 'x,b,c'
```

## map() vs forEach()

Key Takeaways[^mapforeach]
* Just about anything you can do with forEach() you can do with `map()`, and vise versa.
* `map()` allocates memory and stores return values. `forEach()` throws away return values and always returns undefined.
* forEach() will allow a callback function to mutate the current array. `map()` will instead return a new array

[^mapforeach]: https://codeburst.io/javascript-map-vs-foreach-f38111822c0f


## Self-Invoking Functions
* Function expressions can be made "self-invoking".
* A self-invoking expression is invoked (started) automatically, without being called.
* Function expressions will execute automatically if the expression is followed by `()`.

You cannot self-invoke a function declaration

```js
(function () {
  var x = "Hello!!";      // I will invoke myself
})();
```

Source: [W3Schools](https://www.w3schools.com/js/js_function_definition.asp)

## Arrow Functions
Arrow functions allows a short syntax for writing function expressions.

* You don't need the function keyword, the return keyword, and the curly brackets.
* Arrow functions are not hoisted. ==They must be defined before they are used.==

```js
// ES5
var x = function(x, y) {
  return x * y;
}

// ES6
const x = (x, y) => x * y; 

const x = (x, y) => { return x * y };
```

> Using `const` is safer than using var, because a function expression is always constant value.

You can only omit the `return` keyword and the curly brackets if the function is a single statement. Because of this, it might be a good habit to always keep them:


Source: [W3Schools](https://www.w3schools.com/js/js_function_definition.asp)