# CSS Library

<link rel="stylesheet" href="../resources/custom-toc-panel.css">

<div class="custom-TOC">

<details open><summary>TABLE OF CONTENTS</summary>

* [guidelines](#guidelines)
  * [skeleton](#skeleton)
  * [titling](#titling)
  * [Anatomy of a Ruleset](#anatomy-of-a-ruleset)
  * [Indenting](#indenting)
  * [Meaningful Whitespace](#meaningful-whitespace)
  * [Selector Intent](#selector-intent)
  * [Reusability](#reusability)
  * [block](#block)
  * [location independence](#location-independence)
  * [Portability](#portability)
  * [Selector Performance](#selector-performance)
* [30 seconds of CSS](#30-seconds-of-css)
  * [Hover underline animation](#hover-underline-animation)
  * [custom scrollbar](#custom-scrollbar)
  * [dynamic shadow](#dynamic-shadow)
  * [Mouse cursor gradient tracking](#mouse-cursor-gradient-tracking)
  * [reset all styles](#reset-all-styles)
  * [shape separator](#shape-separator)
  * [System font stack](#system-font-stack)
  * [triangle](#triangle)
  * [Popout menu**](#popout-menu)
  * [disable a button](#disable-a-button)
  * [Sibling fade](#sibling-fade)
  * [Custom variables](#custom-variables)
  * [Constant width to height ratio](#constant-width-to-height-ratio)
  * [Display table centering](#display-table-centering)
  * [Evenly distributed children](#evenly-distributed-children)
  * [Accessible Hide](#accessible-hide)
  * [Last item with remaining available height](#last-item-with-remaining-available-height)
* [pro tips](#pro-tips)
  * [simplified reset approach](#simplified-reset-approach)
  * [using unset](#using-unset)
  * [brilliant use of :not()](#brilliant-use-of-not)
  * [Vertically-Center Anything**](#vertically-center-anything)
  * [Use the "Lobotomized Owl" Selector**](#use-the-lobotomized-owl-selector)
  * [Use Attribute Selectors with Empty Links**](#use-attribute-selectors-with-empty-links)
  * [style "default" links**](#style-default-links)
  * [Intrinsic Ratio Boxes](#intrinsic-ratio-boxes)
  * [Style Broken Images](#style-broken-images)
  * [Use rem for Global Sizing; Use em for Local Sizing](#use-rem-for-global-sizing-use-em-for-local-sizing)
  * [Hide Autoplay Videos That Aren't Muted](#hide-autoplay-videos-that-arent-muted)
  * [Use :root for Flexible Type**](#use-root-for-flexible-type)
  * [one liners](#one-liners)
* [from W3](#from-w3)
  * [uploading fonts](#uploading-fonts)
* [things i learned on my own](#things-i-learned-on-my-own)
  * [playing with 3D](#playing-with-3d)
  * [**setting stuff in the :root](#setting-stuff-in-the-root)
* [snippets](#snippets)

</details></div>


sites i love

* [flat ui colors](https://flatuicolors.com/)
* [front end checklist](https://frontendchecklist.io/)
* [css-protips](https://github.com/AllThingsSmitty/css-protips)
* [53 css techniques](https://www.smashingmagazine.com/2007/01/53-css-techniques-you-couldnt-live-without/)
* [awesome list](https://github.com/sindresorhus/awesome/)
* [svg url encoder](http://yoksel.github.io/url-encoder/) **

---

## guidelines

### skeleton

```CSS
/* Table of contents
––––––––––––––––––––––––––––––––––––––––––––––––––
- Grid
- Base Styles
- Typography
- Links
- Buttons
- Forms
- Lists
- Code
- Tables
- Spacing
- Utilities
- Clearing
- Media Queries
*/
```

```CSS
**
 * CONTENTS
 *
 * SETTINGS
 * Global...............Globally-available variables and config.
 *
 * TOOLS
 * Mixins...............Useful mixins.
 *
 * GENERIC
 * Normalize.css........A level playing field.
 * Box-sizing...........Better default `box-sizing`.
 *
 * BASE
 * Headings.............H1–H6 styles.
 *
 * OBJECTS
 * Wrappers.............Wrapping and constraining elements.
 *
 * COMPONENTS
 * Page-head............The main page header.
 * Page-foot............The main page footer.
 * Buttons..............Button elements.
 *
 * TRUMPS
 * Text.................Text helpers.
 */
```

### titling

```CSS
/*------------------------------------*\
  #SECTION-TITLE
\*------------------------------------*/

.selector { }
```
The title of the section is prefixed with a hash (`#`) symbol to allow us to perform more targeted searches (e.g. `grep`, etc.): instead of searching for just `SECTION-TITLE`—which may yield many results—a more scoped search of `#SECTION-TITLE` should return only the section in question.


### Anatomy of a Ruleset
Before we discuss how we write out our rulesets, let’s first familiarise ourselves with the relevant terminology:

```CSS
[selector] {
  [property]: [value];
  [<--declaration--->]
}
```

For example:

```CSS
.foo, .foo--bar,
.baz {
  display: block;
  background-color: green;
  color: red;
}
```

> **Here you can see we have**
> * related selectors on the same line; *unrelated selectors on new lines*;
> * a space before our opening brace (`{`);
> * properties and values on the same line;
> * a space after our property–value delimiting colon (`:`);
> * each declaration on its own new line;
> * the opening brace (`{`) on the same line as our last selector;
> * our first declaration on a new line after our opening brace (`{`);
> * our closing brace (`}`) on its own new line;
> * each declaration indented by two (2) spaces;
> * a trailing semi-colon (`;`) on our last declaration.

### Indenting

As well as indenting individual declarations, indent entire related rulesets to signal their relation to one another, for example:

```CSS
.foo { }

  .foo__bar { }

    .foo__baz { }
```

By doing this, a developer can see at a glance that `.foo__baz {}` lives inside `.foo__bar {}` lives inside `.foo {}`.

### Meaningful Whitespace

As well as indentation, we can provide a lot of information through liberal and judicious use of whitespace between rulesets. We use:

* One (1) empty line between closely related rulesets.
* Two (2) empty lines between loosely related rulesets.
* Five (5) empty lines between entirely new sections.

```CSS
/*------------------------------------*\
  #FOO
\*------------------------------------*/

.foo { }

  .foo__bar { }


.foo--baz { }





/*------------------------------------*\
  #BAR
\*------------------------------------*/

.bar { }

  .bar__baz { }

  .bar__foo { }
```

### Selector Intent

It is important when writing CSS that we scope our selectors correctly, and that we’re selecting the right things for the right reasons.

* Selector Intent is the process of deciding and defining what you want to style and how you will go about selecting it. 
* For example, if you are wanting to style your website’s main navigation menu, a selector like this would be incredibly unwise: 
 
  `header ul { }`

This selector’s intent is to style any ul inside any header element, whereas our intent was to style the site’s main navigation. 

**This is poor Selector Intent**: you can have any number of header elements on a page, and they in turn can house any number of uls, so a selector like this runs the risk of applying very specific styling to a very wide number of elements. 

A better approach would be a selector like:

`.site-nav { }`

An unambiguous, explicit selector with good Selector Intent. We are explicitly selecting the right thing for exactly the right reason.

> Poor Selector Intent is one of the biggest reasons for headaches on CSS projects. Writing rules that are far too greedy—and that apply very specific treatments via very far reaching selectors—causes unexpected side effects and leads to very tangled stylesheets, with selectors overstepping their intentions and impacting and interfering with otherwise unrelated rulesets.

### Reusability

With a move toward a more component-based approach to constructing UIs, the idea of reusability is paramount. We want the option to be able to move, recycle, duplicate, and syndicate components across our projects.

**To this end, we make heavy use of classes.** IDs, as well as being hugely over-specific, cannot be used more than once on any given page, whereas classes can be reused an infinite amount of times. *Everything you choose, from the type of selector to its name, should lend itself toward being reused.*

### block

A more realistic example of properly scoped blocks might look something like this, where each chunk of code represents its own Block:

```CSS
.page { }


.content { }


.sub-content { }


.footer { }

  .footer__copyright { }

```

### location independence

Let’s take an example of a call-to-action button that we have chosen to style via the following selector:

```CSS
.promo a { }
```

Not only does this have poor Selector Intent—it will greedily style any and every link inside of a .promo to look like a button. A far better selector would have been:

```CSS
.btn { }
```

### Portability

```CSS
input.btn { }
```

This is a qualified selector; the **leading input** ties this ruleset to only being able to work on input elements. By omitting this qualification, we allow ourselves to **reuse** the `.btn` class on any element we choose, like an a, for example, or a button.

```CSS
/**
 * Runs the risk of becoming out of date; not very maintainable.
 */
.blue {
  color: blue;
}

/**
 * Depends on location in order to be rendered properly.
 */
.header span {
  color: blue;
}

/**
 * Too specific; limits our ability to reuse.
 */
.header-color {
  color: blue;
}

/**
 * Nicely abstracted, very portable, doesn’t risk becoming out of date.
 */
.highlight-color {
  color: blue;
}
```

> Instead of `.home-page-panel`, choose `.masthead`; instead of .site-nav, favour `.primary-nav`; instead of `.btn-login`, `opt` for `.btn-primary`.

### Selector Performance

```
#foo * { }
```
the key selector (*) is too far reaching - try to avoid

> **General Rules**
> Your selectors are fundamental to writing good CSS. To very briefly sum up the above sections:
>
> * Select what you want explicitly, rather than relying on circumstance or coincidence. Good Selector Intent will rein in the reach and leak of your styles.
> * Write selectors for reusability, so that you can work more efficiently and reduce waste and repetition.
> * Do not nest selectors unnecessarily, because this will increase specificity and affect where else you can use your styles.
> * Do not qualify selectors unnecessarily, as this will impact the number of different elements you can apply styles to.
> * Keep selectors as short as possible, in order to keep specificity down and performance up.

[https://cssguidelin.es/](https://cssguidelin.es/)

## 30 seconds of CSS

[30 Seconds of CSS](https://30-seconds.github.io/30-seconds-of-css/)

### Hover underline animation

```HTML
<p class="hover-underline-animation">Hover this text to see the effect!</p>
```

```CSS
.hover-underline-animation {
  display: inline-block;
  position: relative;
  color: #0087ca;
}
.hover-underline-animation::after {
  content: '';
  position: absolute;
  width: 100%;
  transform: scaleX(0);
  height: 2px;
  bottom: 0;
  left: 0;
  background-color: #0087ca;
  transform-origin: bottom right;
  transition: transform 0.25s ease-out;
}
.hover-underline-animation:hover::after {
  transform: scaleX(1);
  transform-origin: bottom left;
}
```

### custom scrollbar

```CSS
.custom-scrollbar::-webkit-scrollbar { }
.custom-scrollbar::-webkit-scrollbar-track { }
.custom-scrollbar::-webkit-scrollbar-thumb { }
```

### dynamic shadow

```CSS
.dynamic-shadow {
  position: relative;
  width: 10rem;
  height: 10rem;
  background: linear-gradient(75deg, #6d78ff, #00ffb8);
  z-index: 1;
}
.dynamic-shadow::after {
  content: '';
  width: 100%;
  height: 100%;
  position: absolute;
  background: inherit;
  top: 0.5rem;
  filter: blur(0.4rem);
  opacity: 0.7;
  z-index: -1;
}
```

### Mouse cursor gradient tracking

```HTML
<button class="mouse-cursor-gradient-tracking">
  <span>Hover me</span>
</button>
```

```CSS
.mouse-cursor-gradient-tracking {
  position: relative;
  background: #7983ff;
  padding: 0.5rem 1rem;
  font-size: 1.2rem;
  border: none;
  color: white;
  cursor: pointer;
  outline: none;
  overflow: hidden;
}
.mouse-cursor-gradient-tracking span {
  position: relative;
}
.mouse-cursor-gradient-tracking::before {
  --size: 0;
  content: '';
  position: absolute;
  left: var(--x);
  top: var(--y);
  width: var(--size);
  height: var(--size);
  background: radial-gradient(circle closest-side, pink, transparent);
  transform: translate(-50%, -50%);
  transition: width 0.2s ease, height 0.2s ease;
}
.mouse-cursor-gradient-tracking:hover::before {
  --size: 200px;
}
```

```JS
var btn = document.querySelector('.mouse-cursor-gradient-tracking')
btn.onmousemove = function(e) {
  var x = e.pageX - btn.offsetLeft - btn.offsetParent.offsetLeft
  var y = e.pageY - btn.offsetTop - btn.offsetParent.offsetTop
  btn.style.setProperty('--x', x + 'px')
  btn.style.setProperty('--y', y + 'px')
}
```

### reset all styles

```HTML
<div class="reset-all-styles">
  <h5>Title</h5>
  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure id exercitationem nulla qui repellat laborum vitae, molestias tempora velit natus. Quas, assumenda nisi. Quisquam enim qui iure, consequatur velit sit?</p>
</div>
```

```CSS
.reset-all-styles {
  all: initial;
}
```

### shape separator

```HTML
<div class="shape-separator"></div>
```

`background-image: url(...)` adds the SVG shape (a 24x12 triangle) as the background image of the pseudo element, which repeats by default. It must be the same color as the block that is being separated. For other shapes, we can use the URL-encoder for SVG.

```CSS
.shape-separator {
  position: relative;
  height: 48px;
  background: #333;
}

.shape-separator::after {
  content: '';
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 12'%3E%3Cpath d='m12 0l12 12h-24z' fill='%23fff'/%3E%3C/svg%3E");
  position: absolute;
  width: 100%;
  height: 12px;
  bottom: 0;
}
```
[http://yoksel.github.io/url-encoder/](http://yoksel.github.io/url-encoder/)

### System font stack

Uses the native font of the operating system to get close to a native app feel.

```HTML
<p class="system-font-stack">This text uses the system font.</p>
```

```CSS
.system-font-stack {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen-Sans, Ubuntu,
  Cantarell, 'Helvetica Neue', Helvetica, Arial, sans-serif;
}
```

The browser looks for each successive font, preferring the first one if possible, and falls back to the next if it cannot find the font (on the system or defined in CSS).

* `-apple-system` is San Francisco, used on iOS and macOS (not Chrome however)
* `BlinkMacSystemFont` is San Francisco, used on macOS Chrome
* `Segoe UI` is used on Windows 10
* `Roboto` is used on Android
* `Oxygen-Sans` is used on GNU+Linux
* `Ubuntu` is used on Linux
* `"Helvetica Neue"` and Helvetica is used on macOS 10.10 and below (wrapped in quotes because it has a space)
* `Arial` is a font widely supported by all operating systems
* `sans-serif` is the fallback sans-serif font if none of the other fonts are supported

### triangle

```CSS
.triangle {
  width: 0;
  height: 0;
  border-top: 20px solid #333;
  border-left: 20px solid transparent;
  border-right: 20px solid transparent;
}
```

### Popout menu**

```HTML
<div class="reference" tabindex="0">
  <div class="popout-menu">
    Popout menu
  </div>
</div>
```

```CSS
.reference {
  position: relative;
  background: tomato;
  width: 100px;
  height: 100px;
}
.popout-menu {
  position: absolute;
  visibility: hidden;
  left: 100%;
  background: #333;
  color: white;
  padding: 15px;
}
/* Reveals an interactive popout menu on hover and focus. */
.reference:hover > .popout-menu,
.reference:focus > .popout-menu,
.reference:focus-within > .popout-menu {
  visibility: visible;
}
```

`.reference:hover > .popout-menu` means that when `.reference` is hovered over, **select immediate children** with a class of `.popout-menu` and change their visibility to visible, which shows the popout.

### disable a button

```CSS
## disable button
.button-disabled {
  opacity: .5;
  pointer-events: none;
}
```

### Sibling fade

Fades out the siblings of a hovered item.

```HTML
<div class="sibling-fade">
  <span>Item 1</span>
  <span>Item 2</span>
  <span>Item 3</span>
  <span>Item 4</span>
  <span>Item 5</span>
  <span>Item 6</span>
</div>
```

```CSS
span {
  padding: 0 1rem;
  transition: opacity 0.2s;
}
.sibling-fade:hover span:not(:hover) {
  opacity: 0.5;
}
```

### Custom variables

CSS variables that contain specific values to be reused throughout a document.

```HTML
<p class="custom-variables">CSS is awesome!</p>
```

```CSS
:root {
  /* Place variables within here to use the variables globally. */
}

.custom-variables {
  --some-color: #da7800;
  --some-keyword: italic;
  --some-size: 1.25em;
  --some-complex-value: 1px 1px 2px whitesmoke, 0 0 1em slategray, 0 0 0.2em slategray;
  color: var(--some-color);
  font-size: var(--some-size)
  font-style: var(--some-keyword);
  text-shadow: var(--some-complex-value);
}
```

### Constant width to height ratio

```HTML
<div class="constant-width-to-height-ratio"></div>
```

```CSS
.constant-width-to-height-ratio {
  background: #333;
  width: 50%;
}
.constant-width-to-height-ratio::before {
  content: '';
  padding-top: 100%;
  float: left;
}
.constant-width-to-height-ratio::after {
  content: '';
  display: block;
  clear: both;
}
```

`padding-top` on the `::before` pseudo-element causes the height of the element to equal a percentage of its width. 100% therefore means the element's height will always be 100% of the width, creating a responsive square.

This method also allows content to be placed inside the element normally.

### Display table centering

Vertically and horizontally centers a child element within its parent element using `display: table` (as an alternative to flexbox).

```HTML
<div class="container">
  <div class="center">
    <span>Centered content</span>
  </div>
</div>
```

```CSS
.container {
  border: 1px solid #333;
  height: 250px;
  width: 250px;
}
.center {
  display: table;
  height: 100%;
  width: 100%;
}
.center > span {
  display: table-cell;
  text-align: center;
  vertical-align: middle;
}
```

The outer parent (.container in this case) must have a fixed height and width (so no percents)

### Evenly distributed children

```HTML
<div class="evenly-distributed-children">
  <p>Item1</p>
  <p>Item2</p>
  <p>Item3</p>
</div>
```

```CSS
.evenly-distributed-children {
  display: flex;
  justify-content: space-between;
}
```

### Accessible Hide

To visually hide things like form labels in an accessible way, use the .hide utility.

```HTML
<form>
  <label for="search" class="hide">Search</label>
  <input id="search" type="search" class="field">
  <button class="btn btn-primary">Go</button>
</form>
```

```CSS
.hide {
  position: absolute !important;
  height: 1px;
  width: 1px;
  overflow: hidden;
  clip: rect(1px, 1px, 1px, 1px);
}
```

### Last item with remaining available height

Take advantage of available viewport space by giving the ==last element the remaining available space== in current viewport, even when resizing the window.

```HTML
<div class="container">
  <div>Div 1</div>
  <div>Div 2</div>
  <div>Div 3</div>
</div>
```

```CSS
html,
body {
  height: 100%;
  margin: 0;
}
.container {
  height: 100%;
  display: flex;
  flex-direction: column;
}
.container > div:last-child {
  background-color: tomato;
  flex: 1;
}
```

## pro tips

https://github.com/AllThingsSmitty/css-protips

### simplified reset approach

```CSS
*,
*::before,
*::after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}
```

### using unset

 Setting the value to unset changes an element's properties to their initial values:

```CSS
button {
  background: none;
  border: none;
  color: inherit;
  font: inherit;
  outline: none;
  padding: 0;
}
```

### brilliant use of :not()

```CSS
/* take the border off last element... */

.nav li:not(:last-child) {
  border-right: 1px solid #666;
}

/* Make list items look like a real, comma-separated list: */

ul > li:not(:last-child)::after {
  content: ",";
}
```

### Vertically-Center Anything**

```HTML
html, body {
  height: 100%;
  margin: 0;
}
```
```CSS
body {
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
  background: #03a9f4;
  display: -webkit-flex;
  display: flex;
  font-family: "Bitter", serif;
}
/* ...and also with CSS Grid: */
body {
  display: grid;
  height: 100vh;
  margin: 0;
  place-items: center center;
}
```

### Use the "Lobotomized Owl" Selector**

In this example, all elements in the flow of the document that follow other elements will receive `margin-top: 1.5em`.

```CSS
* + * {
  margin-top: 1.5em;
}
```

### Use Attribute Selectors with Empty Links**

Display links when the `<a>` element has no text value but the href attribute has a link:

```CSS
a[href^="http"]:empty::before {
  content: attr(href);
}
```

### style "default" links**

```CSS
a[href]:not([class]) {
  color: #008000;
  text-decoration: underline;
}
```

Now links that are inserted via a CMS, which don't usually have a class attribute, will have a distinction without generically affecting the cascade.

### Intrinsic Ratio Boxes

To create a box with an intrinsic ratio, all you need to do is apply **top or bottom padding to a div**:

```CSS
.container {
  height: 0;
  padding-bottom: 20%;
  position: relative;
}

.container div {
  border: 2px dashed #ddd;
  height: 100%;
  left: 0;
  position: absolute;
  top: 0;
  width: 100%;
}
```

> Using **20%** for padding makes the height of the box equal to 20% of its width. No matter the width of the viewport, **the child div will keep its aspect ratio (100% / 20% = 5:1)** [demo](https://codepen.io/AllThingsSmitty/pen/jALZvE)

### Style Broken Images

Make broken images more aesthetically-pleasing :

```CSSS
img {
  display: block;
  font-family: sans-serif;
  font-weight: 300;
  height: auto;
  line-height: 2;
  position: relative;
  text-align: center;
  width: 100%;
}
```

Now add pseudo-elements rules to display a user message and URL reference of the broken image:

```CSS
img::before {
  content: "We're sorry, the image below is broken :(";
  display: block;
  margin-bottom: 10px;
}

img::after {
  content: "(url: " attr(src) ")";
  display: block;
  font-size: 12px;
}
```

### Use rem for Global Sizing; Use em for Local Sizing

**After setting the base font size at the root `(html { font-size: 100%; })`**, set the font size for textual elements to `em`:

```CSS
h2 { font-size: 2em }
p { font-size: 1em; }

/* Then set the font-size for modules to rem: */

article {
  font-size: 1.25rem; }

aside .module { font-size: .9rem; }
```
Now each module becomes compartmentalized and easier to style, more maintainable, and flexible.

### Hide Autoplay Videos That Aren't Muted

```CSS
video[autoplay]:not([muted]) {
  display: none;
}
```

### Use :root for Flexible Type**

You can calculate the font size based on the viewport height and width using `:root:`

```CSS
:root {
  font-size: calc(1vw + 1vh + .5vmin);
}

/* Now you can utilize the root em unit based on the value calculated by :root: */

body {
  font: 1rem/1.6 sans-serif;
}
```

[demo](https://codepen.io/AllThingsSmitty/pen/XKgOkR)

### one liners

```CSS
li:not(:last-child) { }

.unselectable { user-select: none; }

/* you can declare color with background url */
 background: #222 url('https://image.ibb.co/fUL9nS/wolf.png') no-repeat;

/* counter reset */
ul { counter-reset: counter; }

li::before {
  counter-increment: counter;
  content: counters(counter, '.') ' ';
}

.equal-width { table-layout: fixed; }
```

## from W3

### uploading fonts
load WOFF2 font if possible, otherwise WOFF, else use OpenType font

```CSS
@font-face {
  font-family: bodytext;
  src: url(ideal-sans-serif.woff2) format("woff2"),
       url(good-sans-serif.woff) format("woff"),
       url(basic-sans-serif.ttf) format("opentype");
}
```

## things i learned on my own

### playing with 3D

<style>
div.test-3d { width: 100px; height: 70px; border: solid 20px;
    border-color: rgba(85,150,230,.45) rgba(85,150,230,.15) rgba(85,150,230,.25) rgba(85,150,230,.65);
    border-top-right-radius: 100%; margin: 0 auto;}
</style>

<div class="show-example">
<div class="test-3d"></div>
</div>

```CSS
div.test-3d { 
  width: 100px; 
  height: 70px; 
  border: solid 20px;
  border-color: 
    rgba(85,150,230,.45) 
    rgba(85,150,230,.15) 
    rgba(85,150,230,.25) 
    rgba(85,150,230,.65);
  border-top-right-radius: 100%; }
```

### **setting stuff in the :root

```CSS

:root {
  --maroon: #713C46;
  --dark-maroon: #462C2F;
  --salmon: #E16C5B;
  --light-salmon: #FFC8B4;
  --white: #FFFFFF;
  --black: #171314;
}

.maroon {
  background: var(--maroon);
}
```


## snippets

https://css-tricks.com/snippets/css/