
# css grid

notes taken from
CSS: Advanced Layouts with Grid by
Morten Rand-Hendriksen

* [01_02](01_02)

---

## grid container

Element containing a grid, defined by setting `display: grid;`

```css
<div class="site">
<header class="masthead"> </header>
<h1 class="page-title"> </h1>
<main class="main-content"> </main>
<aside class="sidebar"> </aside>
<footer class="footer"> </footer>
</div><!-- .site -->
```

## two ways to define size in grid

1. by fractions
2. `minmax()`

```css
grid-template-columns: 2fr 1fr 1fr;
grid-template-rows: 1fr minmax(10em,20em) 1fr;
```

the `repeat()` notation repeats the provided pattern a specified number of times

```css
grid-template-columns: repeat(4, 1fr, 10px);
grid-template-rows: repeat(2, 1fr) 2fr;
```

<style>
.wrapper {
  display: inline-grid;
  grid-template-columns: 1fr repeat(2, 1fr);
  grid-template-rows: 1fr 1fr 1fr;
}
.one {
  grid-column: 1/4;
}
.two {
  grid-column: 2/4;
}
.three {
  grid-column: 1/1;
  grid-row: 2/4;
}
.four {
  grid-column: 2 span;
}
.five {
  grid-column: 1/4;
}
.wrapper>div {
  border: 2px solid #fff;
  background-color: #ffd8a8;
  padding: 1em;
  color: #d9480f;
}
</style>

  <div class="wrapper">
    <div class="one">One</div>
    <div class="two">Two</div>
    <div class="three">Three</div>
    <div class="four">Four</div>
    <div class="five">Five</div>
  </div>


## further reading

* [complete-guide-grid](https://css-tricks.com/snippets/css/complete-guide-grid/)
* [learn css grid](https://learncssgrid.com/)
* [CSS Grid Starter Layouts](https://css-tricks.com/snippets/css/css-grid-starter-layouts/)