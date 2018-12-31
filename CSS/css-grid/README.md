
# css grid

## further reading

* [complete-guide-grid](https://css-tricks.com/snippets/css/complete-guide-grid/)
* [learn css grid](https://learncssgrid.com/)
* [CSS Grid Starter Layouts](https://css-tricks.com/snippets/css/css-grid-starter-layouts/)

### Links from the talk from [wceu2017](https://mor10.com/wceu2017/)
Morten Rand-Hendriksen

*   [Bootstrap](http://getbootstrap.com/css/)
*   [\_S (Underscores) WordPress Starter Theme](http://underscores.me)
*   [Codepen demonstrating a CSS Grid layout with content reordering](http://codepen.io/mor10/full/NjeqyX/)
*   [Jen Simmons Tweet about New York Times using CSS Grid](https://goo.gl/2AYzFW)
*   [Firefox CSS Grid Inspector at MDN](https://goo.gl/SJmlms)
*   [Grid by Example by Rachel Andrew](https://gridbyexample.com)
*   [MDN CSS Grid documentation](https://goo.gl/wa0Fk9)
*   [CSS Tricks’ Complete Guide to CSS Grid](https://goo.gl/Z01gjF)
*   [Kuhn – a WordPress theme based on CSS Grid](https://goo.gl/URouSh)
*   [Build Production-Ready CSS Grid Layouts Today at Smashing Magazine](https://goo.gl/dae838)
*   [Mor10.com](https://mor10.com)

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

