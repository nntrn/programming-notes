
# bookmarks

* [bookmarks](#bookmarks)
  * [animations](#animations)
    * [animation timing function](#animation-timing-function)
  * [gradient](#gradient)
    * [Gradient Diagonal Stripes](#gradient-diagonal-stripes)
  * [LESS](#less)
  * [random](#random)
    * [em vs rem vs px](#em-vs-rem-vs-px)
    * [@font-face](#font-face)

## animations

* [cheatsheet](https://learn-the-web.algonquindesign.ca/topics/css-animations-effects-cheat-sheet/)
* [Perfecting a CSS 3D animation](https://subvisual.co/blog/posts/62-perfecting-a-css-3d-animation/)
* [A Guide to CSS Animation — Part 2](https://codeburst.io/a-guide-to-css-animation-part-2-2cd422f78567)
* [From Design to Code: Creating and Animating Images with CSS](https://codeburst.io/from-design-to-code-creating-and-animating-images-with-css-b10c2464f37a)

```css
 @keyframes wiggle {
  0%  { transform: translateX(0em);   }
  40% { transform: translateX(-2em);  }
  80% { transform: translateX(2em);   }
 100% { transform: translateX(0em);   }
 }

.dino {
  animation: wiggle 1s linear alternate;
  animation: dance 1s 2s 6 alternate;
  animation: wiggle 1s steps(4);
  animation: wiggle 1s linear forwards;
  animation: dance .3s linear;

  /* moves right 200px, doesn’t move down */
  transform: translate(200px, 0) 

  transform: rotate(30deg);
  /* moves right 200px, doesn’t move down */
  transform: translate(200px, 0);

  /* scale horizontal 1.5x and vertically 2x */
  transform: scale(1.5, 2);

}
```

### animation timing function

* `cubic-bezier(x1, y1, x2, y2)` - provides ability to define custom speed
* `ease` - start and end slowly but speedier in the middle(default)
* `ease-in`- start slowly
* `ease-in-out` - start and end slowly but not the same as ease
* `ease-out` - end slowly
* `linear` - maintain speed throughout
* `steps(number, direction <optional>)` - provides a way to split the animation into equal steps. direction values can either be start or end. start means that the first step happens at the start of the animation. end means that the last step happens at the end of the animation. end is the default value.

## gradient

* [Stripes in CSS](https://css-tricks.com/stripes-css/)
* [CSS gradient patterns](http://lea.verou.me/css3patterns/)
* [more CSS gradient patterns](https://bennettfeely.com/gradients/)
* [gradient animaor](https://www.gradient-animator.com/)

```CSS
.stripes {
  background: repeating-linear-gradient(
    45deg,
    #606dbc,
    #606dbc 10px,
    #465298 10px,
    #465298 20px
    );
```

### Gradient Diagonal Stripes

```CSS
background: 
  /* On "top" */
  repeating-linear-gradient(
    45deg,
    transparent,
    transparent 10px,
    #ccc 10px,
    #ccc 20px
  ),
  /* on "bottom" */
  linear-gradient(
    to bottom,
    #eee,
    #999
  );

}

/* Stripes Over Image */
.stripe-3 {
  background: repeating-linear-gradient(
    45deg,
    rgba(0, 0, 0, 0.2),
    rgba(0, 0, 0, 0.2) 10px,
    rgba(0, 0, 0, 0.3) 10px,
    rgba(0, 0, 0, 0.3) 20px
  ),
  url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/3/old_map_@2X.png);
}
```

```css
.shape{
    background: radial-gradient(circle at 100px 100px, #5cabff, #000);
}
```

## LESS

**Using JavaScript**
LESS comes with a `less.js` file which is really easy to deploy in your website. Create a stylesheet with `.less` extension and link it in your document using the `rel="stylesheet/less"` attribute.

> You are all set and can compose styles within the .less. The LESS syntax will be compiled on the fly as the page loads. ==Keep in mind that using JavaScript is discouraged at the production stage as it will badly affect the website performance==

```HTML
<link rel="stylesheet/less" type="text/css" href="main.less" />
<script src="//cdnjs.cloudflare.com/ajax/libs/less.js/2.5.1/less.min.js"></script>
```

---

## random

### em vs rem vs px

* EM will scale padding and margins too
* Use REM for consistent padding and margins

`em` scales by updating one value

```HTML
html { font-size: 1em; }
h1 { font-size: 2.074em; }
h2 { font-size: 1.728em; }
h3 { font-size: 1.44em; }
h4 { font-size: 1.2em; }
small { font-size: 0.833em; }
.box { padding: 1.25em; }
@media screen and (min-width: 1400px) {
  html { font-size: 1.25em; }
}
```

Or, recalculate every `px` value

```HTML
html { font-size: 16px; }
h1 { font-size: 33px; }
h2 { font-size: 28px; }
h3 { font-size: 23px; }
h4 { font-size: 19px; }
small { font-size: 13px; }
.box { padding: 20px; }
@media screen and (min-width: 1400px) {
  html { font-size: 20px; }
  h1 { font-size: 41px; }
  h2 { font-size: 35px; }
  h3 { font-size: 29px; }
  h4 { font-size: 24px; }
  small { font-size: 17px; }
  .box { padding: 25px; }
}
```

There’s only one `em` value to overwrite in the media query, ==because `em` inherits and scales relative to its parent (html in this case) font size==, similar to the way vector paths scale proportionally.

REM as in Root EM

* While `em` is relative to the font size of its direct or nearest parent, 
* `rem` is only relative to the html (root) font-size. 

I like to think of it as a reset. If a style sheet is built in a modular fashion, then `rem` shouldn’t be needed very often, but it can be handy at times.

For example, if you’re trying to achieve consistent spacing without extra markup, rem can be used to define the padding and margins.

`px` can be used for consistent padding and margins too, but it doesn’t scale across media queries like `em` and `rem`.

**Conclusion**
I use em for nearly everything, rem occasionally for padding or margins, but only in a pinch, and px some times for borders.

For the most part, I want children to inherit size. If a sidebar is going to be a smaller font size, then I expect all its children to resize proportionally without having to calculate and redefine individual selectors.

I struggle to think of a good reason to use rem for font-size values, but I’m sure there are exceptions. If I’m trying to reset a font size with rem, it’s probably a sign my CSS is not very modular and due for a refactor

[source](https://j.eremy.net/confused-about-rem-and-em/)

### @font-face

```LESS
// Deepest Possible Browser Support
@font-face {
  font-family: 'MyWebFont';
  /* IE9 Compat Modes */
  src: url('webfont.eot'); 
  /* IE6-IE8 */
  src: url('webfont.eot?#iefix') format('embedded-opentype'), 
      /* Super Modern Browsers */
       url('webfont.woff2') format('woff2'), 
       url('webfont.woff') format('woff'), 
       /* Safari, Android, iOS */
       url('webfont.ttf')  format('truetype'), 
       /* Legacy iOS */
       url('webfont.svg#svgFontName') format('svg'); 
}

// Practical Level of Browser Support
// Things are shifting heavily toward WOFF and WOFF 2, so we can probably get away with:
@font-face {
  font-family: 'MyWebFont';
  src:  url('myfont.woff2') format('woff2'),
        url('myfont.woff') format('woff');
}
```