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

```css
grid-template-columns: 2fr 1fr 1fr;
```

2. `minmax()`

```css
grid-template-rows: 1fr minmax(10em,20em) 1fr;
```

the `repeat()` notation repeats the provided pattern a specified number of times

```css
grid-template-columns: repeat(4, 1fr, 10px);
grid-template-rows: repeat(2, 1fr) 2fr;
```

## further reading

* [complete-guide-grid](https://css-tricks.com/snippets/css/complete-guide-grid/)
* [learn css grid](https://learncssgrid.com/)
* [CSS Grid Starter Layouts](https://css-tricks.com/snippets/css/css-grid-starter-layouts/)