# basic js notes

## array methods

```js
> var arr = [ 'a', 'b', 'c' ];

> arr.slice(1, 2)  // copy elements
[ 'b' ]
> arr.slice(1)
[ 'b', 'c' ]

> arr.push('x')  // append an element
4
> arr
[ 'a', 'b', 'c', 'x' ]

> arr.pop()  // remove last element
'x'
> arr
[ 'a', 'b', 'c' ]

> arr.shift()  // remove first element
'a'
> arr
[ 'b', 'c' ]

> arr.unshift('x')  // prepend an element
3
> arr
[ 'x', 'b', 'c' ]

> arr.indexOf('b')  // find the index of an element
1
> arr.indexOf('y')
-1

> arr.join('-')  // all elements in a single string
'x-b-c'
> arr.join('')
'xbc'
> arr.join()
'x,b,c'
```