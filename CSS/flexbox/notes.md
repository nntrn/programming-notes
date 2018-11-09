# flexbox notes

<link rel="stylesheet" href="../../resources/custom-toc.css">
<div class="custom-TOC">
<details open><summary>TABLE OF CONTENTS</summary>

* [flex-item](#flex-item)
* [flex()](#flex)

</details></div>

> bookmarks
> * [The Complete Illustrated Flexbox Tutorial](https://medium.freecodecamp.org/the-complete-illustrated-flexbox-tutorial-d35c085dbf35)
> * [Flex Layout Editor](http://www.csstutorial.org/flex-both.html)

## flex-item

`flex: none | [ <'flex-grow'> <'flex-shrink'>? || <'flex-basis'> ]`

```CSS

.flex-item {

  /* this */
  flex: 1 100px;

  /* is the same as */
  flex-grow: 1;
  flex-basis: 100px;

  /* and it leaves the flex-shrink property alone, which would be */
  flex-grow: inherit; /* defaults to 1 */

}
```

## flex()

```CSS
flex: none                                            /* value 'none' case */
flex: <'flex-grow'>                                   /* One value syntax, variation 1 */
flex: <'flex-basis'>                                  /* One value syntax, variation 2 */
flex: <'flex-grow'> <'flex-basis'>                    /* Two values syntax, variation 1 */
flex: <'flex-grow'> <'flex-shrink'>                   /* Two values syntax, variation 2 */
flex: <'flex-grow'> <'flex-shrink'> <'flex-basis'>    /* Three values syntax */
flex: inherit
```

<style>

.flex-container {
  padding: 0;
  margin: 0 auto;
  list-style: none;
  height: auto;
  width:100%;
  display: flex;
  justify-content: space-around;
  flex-flow: row wrap;
  align-items: stretch;
}

.header, .footer { flex: 1 100%; }
.sidebar { flex: 1; }
.main { flex: 2 50%; }

.flex-item {
  background: tomato;
  padding: 10px;
  border: 3px solid rgba(0, 0, 0, 0.2);
  color: white;
  font-weight: bold;
  font-size: 1.3em;
  text-align: center;
}

</style>

<ul class="flex-container">
  <li class="flex-item header">Header</li>
  <li class="flex-item sidebar">Sidebar</li>
  <li class="flex-item main">Main</li>
  <li class="flex-item sidebar">Sidebar</li>
  <li class="flex-item footer">Footer</li>
</ul>

[codepen flex demo](https://codepen.io/HugoGiraudel/pen/fec8936890d14e842ac4856ce34e5fbe)

```CSS

.header, .footer { flex: 1 100%; }
.sidebar { flex: 1; }
.main { flex: 2 50%; }

```