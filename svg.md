<style>

* .reset, .reset > *{
  all: unset;
}

.i, .inline{
  background: none; 
  color: #000;
  font-size:inherit!important;
  padding:0;
  margin:0;
}
</style>



# svg
this is a compilation of notes taken (either directly or indirectly) from Sarah Drasner


> **Workshop: Advanced SVG Animations**
[CodePen Collection](https://codepen.io/collection/XvBQJQ/) | [GitHub](https://github.com/sdras/frontendmasters-svganimation)
>
>Slides (3 parts):
  http://slides.com/sdrasner/frontendmasters1#/
  http://slides.com/sdrasner/frontendmasters2
  http://slides.com/sdrasner/frontendmasters3#/

* [SVGOMG](https://jakearchibald.github.io/svgomg/)
* [Peter Collingridge's SVG Editor](http://petercollingridge.appspot.com/svg-editor)
* [SVGO](https://github.com/svg/svgo) / [SVGO-GUI](https://github.com/svg/svgo-gui)
* [svgrepo](https://www.svgrepo.com/vectors/html/)


---

## PreserveAspectRatio

cx and cy
: is the center point of the **x-axis** and **y-axis**

rx and ry 
: radius points


**Default**: 
<code class="reset">preserveAspectRatio="xMidYMid meet"</code>

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


## paths 

capital letters are `absolute` data and lowercase is relative

### data

<img src="https://s3.amazonaws.com/media-p.slid.es/uploads/75854/images/1790156/path-table1.jpg">

### curve commands

<img src="https://s3.amazonaws.com/media-p.slid.es/uploads/75854/images/1790146/path-table.jpg">



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
Make a simple SVG with 4+ attributes, optimize it, and animate at least two elements.
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


EXCERCISE 2


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

<p data-height="265" data-theme-id="light" data-slug-hash="iEGbI" data-default-tab="html,result" data-user="sdras" data-pen-title="Benchmarking SVG Animation - CSS hardware accelerated" class="codepen">See the Pen <a href="https://codepen.io/sdras/pen/iEGbI/">Benchmarking SVG Animation - CSS hardware accelerated</a> by Sarah Drasner (<a href="https://codepen.io/sdras">@sdras</a>) on <a href="https://codepen.io">CodePen</a>.</p>
<script async src="https://static.codepen.io/assets/embed/ei.js"></script>


```
.svg-contain {
	transform: translate3d(0,0,0);
	-o-transform: translate3d(0,0,0);
	-ms-transform: translate3d(0,0,0);
	-moz-transform: translate3d(0,0,0);
	-webkit-transform: translate3d(0,0,0);

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
		transform: translate3d(377px,0,0);
	}
}

@-o-keyframes slide {
	50% {
		-o-transform: translate3d(377px,0,0);
	}
}

@-moz-keyframes slide {
	50% {
		-moz-transform: translate3d(377px,0,0);
	}
}

@-webkit-keyframes slide {
	50% {
		-webkit-transform: translate3d(377px,0,0);
	}
}
```

![alt CSS Property Animation on the Web](https://s3.amazonaws.com/media-p.slid.es/uploads/75854/images/1790347/css-propery.jpg)

USE OPACITY + TRANSFORM !!

be careful about rotating








---


<details>


<summary>Fluid motion is not just the way things move but how things move. 
</summary>

A beautiful animation can become unsuccessful when there are unnecessary repaints and elements are not properly hardware accelerated. This involves thinking about the element itself along with the way we animate it. Animations should be performed with transforms and opacity where possible. Animated elements must be hardware accelerated (see the docs for our .accelerate class).

Mobile web pages should specify initial-scale=1.0 in the meta tag so that the device is not waiting the required 300MS on the secondary tap before calling action. Interaction for touch events must either start from a larger touch-target (40px x 40px or greater) or use @media(pointer:coarse) when support increases.

SVG should be used in place of jpg, png, or gif for animated elements due to their small filesize when properly designed for performance. The exception to this rule being an element that has to grow many scales higher than its original state, which is a poor use case for SVG due to the cost of that rerender. SVG must be properly optimized with tools like SVGOMG, SVGO, or Peter Coolinridge's SVG Editor.

</details>




<details>

<summary> expand

# storytelling-js

</summary>

[^storytelling]:http://slides.com/sdrasner/storytelling-js#/

[^storytelling]

Surprise with technique
SVG Filters

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

