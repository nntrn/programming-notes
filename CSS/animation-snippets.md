# animation snippets

[A Beginner’s Introduction to CSS Animation](https://webdesign.tutsplus.com/tutorials/a-beginners-introduction-to-css-animation--cms-21068) by Catalin Miron

## boat 
```css
@keyframes boat-rotate{
  0%{ transform:  rotate(10deg)}
  25%{ transform: rotate(-10deg)}
  50%{ transform:  rotate(10deg)}
  75%{ transform:  rotate(-10deg)}
  100%{ transform: rotate(10deg)}
}
@keyframes boat-translate{
  0%{ transform: translate(-50%, 45%)}
  50%{ transform: translate(25%, 50%)}
  100%{ transform: translate(100%, 45%)}
}
```
source: [SVG ClipPath Animation](https://codepen.io/niklasnoldin/pen/NEvWxm) by Niklas Noldin

## music notes

```css
@keyframes note-simple {
  0% { opacity: 0;}
  50% { opacity: 1; }

  100% {
    transform: translate(2rem, -0.5rem);
    opacity: 0;
  }
}

@keyframes note-quarter {
  0% { opacity: 0;}
  30% { opacity: 1; }
  100% {
    transform: translate(1.5rem, -1rem);
    opacity: 0;
  }
}

@keyframes note-double {
  0% { opacity: 0;}
  30% { opacity: 1; }

  100% {
    transform: translate(2rem, -1.5rem);
    opacity: 0;
  }
}
```