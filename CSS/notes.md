
bookmarks
----

- [CSS animations & effects](#css-animations--effects)
- [gradient](#gradient)
- [LESS](#less)
- [random](#random)
  - [@font-face](#font-face)


## [CSS animations & effects](https://learn-the-web.algonquindesign.ca/topics/css-animations-effects-cheat-sheet/)

* [Perfecting a CSS 3D animation](https://subvisual.co/blog/posts/62-perfecting-a-css-3d-animation/)



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

/* Gradient Diagonal Stripes */
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


