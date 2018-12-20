# markdown notes

* [to-do:](#to-do)
* [heading](#heading)
* [Horizontal Rules](#horizontal-rules)
* [Typographic replacements](#typographic-replacements)
* [font style](#font-style)
* [Blockquotes](#blockquotes)
* [Lists](#lists)
  * [Unordered](#unordered)
  * [Ordered](#ordered)
* [Code](#code)
* [Tables](#tables)
* [Links](#links)
* [Images](#images)
* [Footnotes](#footnotes)
* [Definition lists](#definition-lists)
* [Abbreviation](#abbreviation)
* [Containers](#containers)
* [references](#references)


## to-do:

- [x] buy milk
- [ ] spagon
- [ ] annie
- [ ] blank

## heading
```
# h1 Heading 8-)
## h2 Heading
### h3 Heading
#### h4 Heading
##### h5 Heading
###### h6 Heading
```

## Horizontal Rules

```
___

---

***
```

## Typographic replacements

Enable typographer option to see result.

(c) (C) (r) (R) (tm) (TM) (p) (P) +-
~~~
(c) (C) (r) (R) (tm) (TM) (p) (P) +-
~~~

test.. test... test..... test?..... test!....
~~~
test.. test... test..... test?..... test!....
~~~

!!!!!! ???? ,,  -- ---
~~~
!!!!!! ???? ,,  -- ---
~~~
"Smartypants, double quotes" and 'single quotes'
~~~
"Smartypants, double quotes" and 'single quotes'
~~~

## font style

**This is bold text**
__This is bold text__
*This is italic text*
_This is italic text_

~~Strikethrough~~

## Blockquotes

~~~
> this is a regular blockquote

> Blockquotes can also be nested...
>> ...by using additional greater-than signs right next to each other...
> > > ...or with spaces between arrows.
~~~

> this is a regular blockquote

> Blockquotes can also be nested...
>> ...by using additional greater-than signs right next to each other...
> > > ...or with spaces between arrows.

## Lists

### Unordered

+ Create a list by starting a line with `+`, `-`, or `*`
+ Sub-lists are made by indenting 2 spaces:
  - Marker character change forces new list start:
    * Ac tristique libero volutpat at
    + Facilisis in pretium nisl aliquet
    - Nulla volutpat aliquam velit
+ Very easy!

### Ordered

1. Lorem ipsum dolor sit amet
2. Consectetur adipiscing elit
3. Integer molestie lorem at massa

1. You can use sequential numbers...
1. ...or keep all the numbers as `1.`

Start numbering with offset:

57. foo
1. bar

## Code

Inline `code`

Indented code

    // Some comments
    line 1 of code
    line 2 of code
    line 3 of code

Block code "fences"

```
Sample text here...
```

Syntax highlighting

``` js
var foo = function (bar) {
  return bar++;
};

console.log(foo(5));
```

## Tables

    size | material     | color
    ---- | ------------ | ------------
    9    | leather      | brown
    10   | hemp canvas  | natural
    11   | glass        | transparent

| Option | Description                                                               |
| ------ | ------------------------------------------------------------------------- |
| data   | path to data files to supply the data that will be passed into templates. |
| engine | engine to be used for processing templates. Handlebars is the default.    |
| ext    | extension to be used for dest files.                                      |


|colspan examples  ||||||
|:-:|:-:|:-:|:-:|:-:|:-:|   
| 1 |   |   | 2 |   |   | 
| 1 |   | 2 |   | 3 |   | 
| 1 | 2 | 3 | 4 | 5 | 6 | 
```
|colspan examples  ||||||
|:-:|:-:|:-:|:-:|:-:|:-:|   
| 1 |   |   | 2 |   |   | 
| 1 |   | 2 |   | 3 |   | 
| 1 | 2 | 3 | 4 | 5 | 6 |  
```

You can apply span-level formatting to the content of each cell using regular Markdown syntax

| Function name | Description                    | &nbsp;
| ------------- | ------------------------------ | ---
| `help()`      | Display the help window.       | 
| `destroy()`   | **Destroy your computer!**     |

## Links

[link text](http://nntrn.github.io)

    [link text](http://nntrn.github.io)

[link with title](http://nntrn.github.io/me "title text!")
  
    [link with title](http://nntrn.github.io/me "title text!")

## Images

![b](images/example.png) <!-- .element height="50%" width="50%" -->

```
![Minion](https://octodex.github.com/images/minion.png)
![Stormtroopocat](https://octodex.github.com/images/stormtroopocat.jpg "The Stormtroopocat")
```

Like links, Images also have a footnote style syntax
```
![Alt text][id]
```
With a reference later in the document defining the URL location:
```
[id]: https://octodex.github.com/images/dojocat.jpg  "The Dojocat"
```


## Footnotes

Footnote 1 link[^first].
Footnote 2 link[^second].

Inline footnote^[Text of inline footnote] definition.

Duplicated footnote reference[^second].

[^first]: Footnote **can have markup**

    and multiple paragraphs.

[^second]: Footnote text.

[scroll down to see](#references)

## Definition lists

Term 1

:   Definition 1
with lazy continuation.

Term 2 with *inline markup*

:   Definition 2

        { some code, part of Definition 2 }

    Third paragraph of definition 2.

_Compact style:_

Term 1
  ~ Definition 1

Term 2
  ~ Definition 2a
  ~ Definition 2b


## Abbreviation

Create an abbreviation definition like this:
~~~
*[HTML]: Hyper Text Markup Language
*[W3C]:  World Wide Web Consortium
~~~

*[HTML]: Hyper Text Markup Language
*[W3C]:  World Wide Web Consortium

then, elsewhere in the document, write text such as:

The HTML specification
is maintained by the W3C.

<big>you can see the abbreviation definition on hover now!</big>

## Containers
TODO:
[markdown-it-container](https://github.com/markdown-it/markdown-it-container)

::: warning
here be dragons
:::


[^1]: https://github.com/adam-p/markdown-here/wiki/Markdown-Here-Cheatsheet
[^krajee]: [cheatsheet](http://demos.krajee.com/markdown-demo)

## references


