# js snippets

## descriptive blocks
When you need to include a large explanation generally a single liner won’t do the trick. There are pre-formatted comment templates used in about every area of programming. Descriptive blocks are most notably seen around functions and library files. Whenever you setup a new function it is good practice to add a descriptive block above the declaration.

```
/**
  * @desc opens a modal window to display a message
  * @param string $msg - the message to be displayed
  * @return bool - success or failure
*/
function modalPopup($msg) {
...
}
```
[source](https://www.hongkiat.com/blog/source-code-comment-styling-tips/)

## find the largest number in an array

```js
var numbers = [3,342,23,22,124];
numbers.sort(function(a,b){return b - a});
alert(numbers[0]);
```
[source](https://www.smashingmagazine.com/2010/04/seven-javascript-things-i-wish-i-knew-much-earlier-in-my-career/)

## writing a function to attach CSS classes to elements

```js
function addclass(elm,newclass){
  var classes = elm.className.split(' ');
  classes.push(newclass);
  elm.className = classes.join(' ');
}
```

The thing is, when you add a class to a DOM element, you want to add it either as the first class or to already existing classes with a space in front of it. When you remove classes, you also need to remove the spaces (which was much more important in the past when some browsers failed to apply classes with trailing spaces).

[source](https://www.smashingmagazine.com/2010/04/seven-javascript-things-i-wish-i-knew-much-earlier-in-my-career/)

## simple forEach()

```js
["A", "B"].forEach(l => console.log(l));
// → A
// → B
```

[source](https://eloquentjavascript.net/05_higher_order.html)

## Transforming with map

* Say we have an array of objects representing scripts, produced by filtering the SCRIPTS array somehow. But we want an array of names, which is easier to inspect.
* The map method transforms an array by <mark>applying a function to all of its elements and building a new array from the returned values.</mark> The new array will have the same length as the input array, but its content will have been mapped to a new form by the function.

```js
function map(array, transform) {
  let mapped = [];
  for (let element of array) {
    mapped.push(transform(element));
  }
  return mapped;
}

let rtlScripts = SCRIPTS.filter(s => s.direction == "rtl");
console.log(map(rtlScripts, s => s.name));
// → ["Adlam", "Arabic", "Imperial Aramaic", …]
```

[source](https://eloquentjavascript.net/05_higher_order.html)


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
* [eloquent javascript](https://eloquentjavascript.net/)