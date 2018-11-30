# svg
this is a compilation of notes taken (either directly or indirectly) from Sarah Drasner

* [PreserveAspectRatio](#preserveaspectratio)
* [paths](#paths)
* [Animating with CSS](#animating-with-css)
* [GreenSock Overview](#greensock-overview)
  * [TweenLite/TweenMax](#tweenlitetweenmax)
  * [stagger](#stagger)
* [misc](#misc)

> **Workshop: Advanced SVG Animations**
[CodePen Collection](https://codepen.io/collection/XvBQJQ/) | [GitHub](https://github.com/sdras/frontendmasters-svganimation)
>
> Slides (3 parts):
  http://slides.com/sdrasner/frontendmasters1
  http://slides.com/sdrasner/frontendmasters2
  http://slides.com/sdrasner/frontendmasters3

* [SVGOMG](https://jakearchibald.github.io/svgomg/)
* [Peter Collingridge's SVG Editor](http://petercollingridge.appspot.com/svg-editor)
* [svgrepo](https://www.svgrepo.com/vectors/html/)

online svg editors:

* [DRAW SVG](http://www.drawsvg.org)
* [SVG URL encoder](https://yoksel.github.io/url-encoder/)

---

## PreserveAspectRatio

cx and cy
: is the center point of the **x-axis** and **y-axis**

rx and ry 
: radius points


**Default**: 
`preserveAspectRatio="xMidYMid meet"`

>uniformly scales, like *background-size: cover;*
>
> align the __ of the element's viewBox with the ___ value of the viewport
**takes 3 parameters:**
>  * `X___` (min, mid, max)
>  * `Y___` (min, mid, max)
>  * `meet` or `slice`
> 
>  `none` will scale to container

Meet (default)
: entire *viewBox* is **visible** within viewport
the viewbox is scaled **up** as much as possible, meeting other critieria
`viewBox < viewport` 

<details><summary>expand</summary>
<img src="https://s3.amazonaws.com/media-p.slid.es/uploads/75854/images/1867404/Screen_Shot_2015-10-23_at_4.57.11_AM.png">
</details>

Slice
: entire *viewport* is **covered** within viewBox
the viewBox is scaled **down** as much as possible, meeting other critieria
`viewBox > viewport`

<details><summary>expand</summary>
<img src="https://s3.amazonaws.com/media-p.slid.es/uploads/75854/images/1867407/Screen_Shot_2015-10-23_at_4.57.23_AM.png"">
</details>


[example:](https://www.w3.org/TR/SVG/coords.html#PreserveAspectRatioAttribute)
```html
<svg preserveAspectRatio="xMinYMin meet" viewBox="0 0 30 40" width="50" height="30">
```

## paths 

capital letters are `absolute` data and lowercase is relative


<details><summary>data paths</summary><img src="https://s3.amazonaws.com/media-p.slid.es/uploads/75854/images/1790156/path-table1.jpg"></details>

<details><summary>curve command</summary><img src="https://s3.amazonaws.com/media-p.slid.es/uploads/75854/images/1790146/path-table.jpg"></details>



## Animating with CSS

Target the element, expand the viewBox,
use fill, and remove the fill from the markup.

```html
<svg width="200px" height="70px" viewBox="0 0 200 70">
  <circle class="ball3" cx="45" cy="45" r="25"/>
</svg>
```
```CSS
@keyframes second-animation {
   0% {
    fill: blue;
    transform: translateX(0);
  }
   50% {
    fill: purple;
    transform: translateX(50px);
  }
   100% {
    fill: red;
    transform: translateX(100px);
  }
}
```
```SHORTHAND
.ball {
  animation: animation-name-you-pick 2s 2s 3 alternate ease-in-out forwards;
}
```

> **Exercise 1:**
> Make a simple SVG with 4+ attributes, optimize it, and animate at least two elements.
>
> * Illustrator
> * Sketch
> * Inkscape
> * Draw SVG
> * Vectr

http://www.grunticon.com/

```css
.fore {
background: url(‘fore.svg’);
animation: bk 7s -5s linear infinite;
}

.mid {
background: url(‘mid.svg’);
animation: bk 15s -5s linear infinite;
}

.bk {
background: url(‘bkwalk2.svg’);
animation: bk 20s -5s linear infinite;
}

@keyframes bk {
100% { background-position: 200% 0; }
}
```
* time at `-5s` is so that the background is rolling by the time the user lands on the page

---

* `xml:space` is used to handle whitespace only text nodes. The white space comes from whitespace characters, such as tabs, line breaks, or carriage returns, which are located between tags to provide formatting. 
* Removing the  preserve value is equivalent to changing it to default, which either collapses or replaces the whitespace characters depending on the XML processor. There is a related question with a more detailed explanation[^xmlspace]

[^xmlspace]: [SVG xml:space attribute issue](https://stackoverflow.com/questions/11493057/svg-xmlspace-attribute-issue)


<details><summary>EXCERCISE 2</summary>

```CSS
//mid and mid-sm are the same
#back {
    opacity: 0.8;
    animation: bkmove 70s linear infinite;
    animation-iteration-count: 3;
}

#teal {
 animation: hover 2s ease-in-out infinite both;
}

#tshadow {
  animation: shadowhover 2s ease-in-out infinite both;
  transform-origin: 50% 50%;
}

#purple {
 animation: hover 2s -0.5s ease-in-out infinite both;
}
//same shadow

#heart {
    animation: heartpop 2s 1.25s ease-out both;
    transform-origin: 50% 50%;
    transform: scale(0);
    -moz-transform: scale(1); //firefox transform-origin svg bug hack
}

/*had to split the heart animation in two due to a bad safari 
svg bug that doesn't allow for opacity and transform*/
#heartopacity {
    animation: heartopacity 1.5s 1s ease-out both;
    opacity: 0;
}

#floaty {
  opacity: 0.2;
  animation: floataround 3s ease-in-out infinite both;
  transform-origin: 50% 50%;
  animation-iteration-count: 30;
}

@keyframes bkmove {
    100% {
        transform: translateX(-1600px);
    }
}

@keyframes heartopacity {
    50% {
        opacity: 0.9;
    }
    90% {
        opacity: 0.2;
    }
    100% {
        opacity: 0;
    }
}

@keyframes heartpop {
    50% {
        transform: scale(1);
        -moz-transform: scale(1);
    }
    90% {
        transform: scale(1.5);
        -moz-transform: scale(1);
    }
    100% {
        transform: scale(0);
        -moz-transform: scale(1);
    }
}
```
</details>


[Benchmarking SVG Animation - CSS hardware accelerated](https://codepen.io/sdras/pen/iEGbI/) by Sarah Drasner

```css
.svg-contain {
  transform: translate3d(0, 0, 0);
  -o-transform: translate3d(0, 0, 0);
  -ms-transform: translate3d(0, 0, 0);
  -moz-transform: translate3d(0, 0, 0);
  -webkit-transform: translate3d(0, 0, 0);

  -webkit-backface-visibility: hidden;
  -moz-backface-visibility: hidden;
  -ms-backface-visibility: hidden;
  backface-visibility: hidden;

  -webkit-perspective: 1000;
  -moz-perspective: 1000;
  -ms-perspective: 1000;
  perspective: 1000;

  animation: slide 2s ease-in-out infinite;
  -o-animation: slide 2s ease-in-out infinite;
  -moz-animation: slide 2s ease-in-out infinite;
  -webkit-animation: slide 2s ease-in-out infinite;
}

@keyframes slide {
  50% {
    transform: translate3d(377px, 0, 0);
  }
}

@-o-keyframes slide {
  50% {
    -o-transform: translate3d(377px, 0, 0);
  }
}

@-moz-keyframes slide {
  50% {
    -moz-transform: translate3d(377px, 0, 0);
  }
}

@-webkit-keyframes slide {
  50% {
    -webkit-transform: translate3d(377px, 0, 0);
  }
}
```

![alt CSS Property Animation on the Web](https://s3.amazonaws.com/media-p.slid.es/uploads/75854/images/1790347/css-propery.jpg)

<mark>USE OPACITY + TRANSFORM !!</mark>

be careful about rotating

## GreenSock Overview

[GreenSock Ease Visualizer](https://greensock.com/ease-visualizer)

```
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
```


### TweenLite/TweenMax 


```
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.15.0/TweenMax.min.js"></script>
```

> **Syntax**
TweenLite/TweenMax .to/.from/.fromTo ( variable, seconds { property:amount, ease });

<details><summary>expand code</summary>

```html
<div></div>
```
```css
div {
  width: 40px;
  height: 40px;
  background: teal;
  margin: 0 auto;
  transform: translate(0, 10px);
}
```
```js
TweenLite.to("div", 2, {scaleY:0.75, scaleX:1.25, y:100, opacity:0.75, ease:Elastic.easeOut});
```
</details>

[view on codepen](https://codepen.io/sdras/pen/f375ce0c3850eb6defaade00ab0dd513)


### stagger

Things like stagger are really complicated to do in CSS animation, and in GSAP are one line of code.


```
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.15.0/TweenMax.min.js"></script>
```

<details>
<summary>expand code</summary>

```html
<div class='scene'>
  <div class='squares'></div>
  <div class='squares'></div>
  <div class='squares'></div>
  <div class='squares'></div>
  <div class='squares'></div>
  <div class='squares'></div>
  <div class='squares'></div>
  <div class='squares'></div>
  <div class='squares'></div>
  <div class='squares'></div>
  <div class='squares'></div>
  <div class='squares'></div>
</div>
```
```SCSS
/* SCSS */
$i: 40px;

.squares {
  float: left;
  width: $i;
  height: $i;
  margin-left: $i/4;
  background: #3f717c;
}

.scene {
  margin: $i/2 auto;
  display: table;
}
```
```js
TweenMax.staggerTo(".squares", 2, {
  y:100, 
  backgroundColor:"#4f9d88",
  ease:Elastic.easeOut
}, 0.05);

TweenMax.staggerTo(".squares", 2, {
  rotation:200, 
  delay:1, 
  scale:0.5, 
  backgroundColor:"#72b165",
  ease:Elastic.easeOut
}, 0.025);
```


</details>

[view on codepen](https://codepen.io/sdras/pen/93aa4abc0248757c934882bf4dac3710)














## misc
###Surprise with technique
<details><summary>SVG Filters</summary>

```js
tl.call(addAttr);
tl.fromTo(feTurb, 1, {
  attr: {
    baseFrequency: '0 0'
  }
}, {
  attr: {
    baseFrequency: '0.8 1.2'
  },
  ease: Sine.easeOut
});
tl.to(feTurb, 1, {
  attr: {
    baseFrequency: '0 0'
  },
  ease: Sine.easeIn
});
tl.call(removeAttr);

// filter attribute helpers
function addAttr() {
  feTurb.setAttribute('baseFrequency', '0 0');
}

function removeAttr() {
  var applyFilter = document.getElementById("applyFilter");
  applyFilter.removeAttribute("filter");
}
```

[^fluid-motion]: [Example Motion Design Docs](https://codepen.io/sdras/pen/JbaGwg)

Entrances and Exits must be consistent. Entrances start from a 90% scale so as not to be too jarring for the user.[^fluid-motion]

**The cubic bezier for entrance is:**
cubic-bezier(0.39, 0.575, 0.565, 1);

**The cubic bezier for exit is:**
cubic-bezier(0.47, 0, 0.745, 0.715);

```js
Math.easeOutSine = function (t, b, c, d) {
  return c * Math.sin(t/d * (Math.PI/2)) + b;
};
          
Math.easeInSine = function (t, b, c, d) {
  return -c * Math.cos(t/d * (Math.PI/2)) + c + b;
};
```
</details>

