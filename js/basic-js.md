# basic js notes

## references

[JS: Interview Algorithm](http://thatjsdude.com/interview/js1.html)
[Part -2: intermediate](http://thatjsdude.com/interview/js2.html)
[Clean Code](https://github.com/ryanmcdermott/clean-code-javascript)
[js scope](https://flaviocopes.com/javascript-automatic-semicolon-insertion/)



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