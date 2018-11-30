# js snippets

## arrow functions
[source](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions)

```js
var materials = [
  'Hydrogen',
  'Helium',
  'Lithium',
  'Beryllium'
];

console.log(materials.map(material => material.length));
// expected output: Array [8, 6, 7, 9]
```


## addEventListener()

We want to make sure to always run our JavaScript after our HTML is loaded. How do we attach listeners if our elements aren't there yet! This basically means to always wrap our code in a DOMContentLoaded listener

```js
'use strict';

document.addEventListener("DOMContentLoaded", function(event) {
  // Your Code Here
});
```

## Shortcut to get elements

```js
  var el = function(element) {
    if (element.charAt(0) === "#") {
      // if passed an ID (hashtag) return single element
      return document.querySelector(element); 
    }
    // otherwise, returns a nodelist
    return document.querySelectorAll(element); 
  };
```
```
  var equals = el("#equals"), 
      clear = el("#clear"), 
      nums = el(".num"), // List of numbers
      operation = el(".ops");

  for (var i = 0, l = operation.length; i < l; i++) {
    operation[i].onclick = getOps;
  }

  // Add click event to equal sign
  equals.onclick = equal;

```

## escape regular expressions
Remember that if the string contains some special characters, it won’t play well with regular expressions, so the suggestion is to escape the string using this function (taken from MDN):

```js
const escapeRegExp = (string) => {
  return string.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')
}
```

* `g` is for global search. Meaning it'll match all occurrences. You'll usually also see `i` which means ignore case.


## String of text to array of characters

[source](https://stackoverflow.com/a/35909587)


* The `split()` method is used to split a string into an array of substrings, and returns the new array.
* Tip: If an empty string **`("")`** is used as the separator, the string is split between each character.

Please read the link: http://www.w3schools.com/jsref/jsref_split.asp

### using forEach and split

```html
<!DOCTYPE html>
<html>
<body>

<p>Click the button to display the array value after the split.</p>
<button onclick="myFunction()">Try it</button>
<p id="demo"></p>

<script>
function myFunction() {
    var str = "How are you doing today?";
    var res = str.split("");

    res.forEach(function(element) {
        document.getElementById("demo").innerHTML += element + "<br>";
    });

}
</script>

</body>
</html>
```
https://www.w3schools.com/code/tryit.asp?filename=FXP9B2GAH3VD

## create array interval

```js
function range(start, end) {
  return Array(end - start + 1).fill().map((_, idx) => start + idx)
}
var result = range(9, 18); // [9, 10, 11, 12, 13, 14, 15, 16, 17, 18]
console.log(result);
```
[source](https://stackoverflow.com/a/33457557)

## generate random int

```js
// Returns a random integer between min (include) and max (include)

Math.floor(Math.random() * (max - min + 1)) + min;
```

Useful examples:

```
// 0 -> 10
Math.floor(Math.random() * 11);

// 1 -> 10
Math.floor(Math.random() * 10) + 1;

// 5 -> 20
Math.floor(Math.random() * 16) + 5;

// -10 -> (-2)
Math.floor(Math.random() * 9) - 10;
```

[source](https://stackoverflow.com/questions/4959975/generate-random-number-between-two-numbers-in-javascript)


## further reading

* [Javascript BEST PRACTICES](https://www.thinkful.com/learn/javascript-best-practices-1/#Allow-for-Configuration-and-Translation)