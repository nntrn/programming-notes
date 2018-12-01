# css snippets

## commenting

### Organizing regions of code

> global settings (resets, scrollbars, etc.)
primary layout structure (body, primary divs)
secondary layout structure (header, footer, sidebar)
tertiary layout structure (page regions, floats)
text-related treatments (headings, paragraphs, lists)
images, links, and other salient features (pre, code)
general styles (forms, tables, buttons, acronyms et al)
general classes (.clear, .center, .right, .left, etc.)

[source](https://perishablepress.com/obsessive-css-code-formatting-organization-comments-and-signatures/)

### line length

```css
/**
 * Lorem ipsum dolor sit amet,
 * consectetuer adipiscing elit,
 * sed diam nonummy nibh euismod
 * tincidunt ut laoreet dolore
 * magna aliquam erat volutpat.
 *
 * Ut wisi enim ad minim veniam,
 * quis nostrud exerci tation
 * ullamcorper suscipit lobortis
 * nisl ut aliquip ex ea commodo
 * consequat.
 */
```

[source](http://wilsonpage.co.uk/commenting-css/)

## disable highlighting

```css
.noselect {
  -webkit-touch-callout: none; /* iOS Safari */
    -webkit-user-select: none; /* Safari */
     -khtml-user-select: none; /* Konqueror HTML */
       -moz-user-select: none; /* Firefox */
        -ms-user-select: none; /* Internet Explorer/Edge */
            user-select: none; /* Non-prefixed version, currently
                                  supported by Chrome and Opera */
}
```

[source](https://stackoverflow.com/a/4407335)

## to-do

```css
/**

    TODO:
    - First todo item
    - Second todo item

 */
 ```

 ## boilerplate css

 https://designers.hubspot.com/docs/tools/boilerplate-css

 ```css
 /* ==========================================================================
   Index:         
  1. BASE STYLES   
    - Variables
    - Macros
    - Base
    - Typography
  2. COS STRUCTURE
    - Structure
    - Header
    - Content
    - Footer
  3. MAIN NAVIGATION
    - Custom Menu Primary
    - Mobile Menu
  4. TEMPLATE MODULE CLASSES
    - Common Template Classes
    - Site Pages
    - Landing Pages
    - System Pages
  5. COS COMPONENTS
    - Blog
    - Forms
    - Buttons
  6. MISCELLANOUS
  7. MOBILE MEDIA QUERIES
   ========================================================================== */








/* ==========================================================================
   1. BASE STYLES                                             
   ========================================================================== */
   
```