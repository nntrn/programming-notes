# responsive web design

## media queries

### Enabling Media Queries On Mobile Devices
To enable media queries on mobile devices, you can simply add this line to your `<head>` section[^bootstrap]

```CSS
<meta name="viewport" content="width=device-width, initial-scale=1">
```
[^bootstrap]: [bootstrap 2 CSS docs](https://bootstrapdocs.com/v3.3.6/docs/css/)

You can disable zooming capabilities on mobile devices by adding `user-scalable=no` to the viewport meta tag. 
* This disables zooming, meaning users are only able to scroll, and results in your site feeling a bit more like a native application. 
* ==Overall, we don't recommend this on every site, so use caution!==

```CSS
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
```

### stylesheet template
```CSS
/* Small screens (default) */
html { font-size: 100%; }

/* Medium screens (640px) */
@media (min-width: 40rem) { 
  html { font-size: 112%; }
}

/* Large screens (1024px) */
@media (min-width: 64rem) { 
  html { font-size: 120%; }
}
```

### Choose the Right CSS Breakpoints[^media-queries]
A good place to start in this process is to mimic Bootstraps “mobile first” media queries which are defined as the following:

> Min-width: 320px (smaller phone viewpoints)
Min-width: 480px (small devices and most phones)
Min-width: 768px (most tablets)
Min-width: 992px (smaller desktop viewpoints)
Min-width: 1200px (large devices and wide screens)

[^media-queries]: [Media Queries and Mobile CSS Best Practices ](https://www.solodev.com/blog/web-design/media-queries-and-mobile-css-best-practices.stml)
Use these tips to better build responsive sites and make your CSS the envy of designers.

### What Screen Resolutions Are Relevant for Responsive Web Design?
>360x640 (small mobile): 22.64%
1366x768 (average laptop): 11.98%
1920x1080 (large desktop): 7.35%
375x667 (average mobile): 5%
1440x900 (average desktop): 3.17%
720x1280 (large mobile): 2.74%

## references:
* https://bootstrapdocs.com/v3.3.6/docs/css/
* https://adamkaplan.me/grid/



## misc code

`word-wrap: break-word`
: useful for to breaking links
