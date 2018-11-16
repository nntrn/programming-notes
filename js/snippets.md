# snippets


* [javascript](#javascript)
  * [get random integer](#get-random-integer)
  * [Close Window](#close-window)
  * [Copy Selected Text](#copy-selected-text)
  * [Focus OnLoad](#focus-onload)
* [css](#css)
  * [gradient border](#gradient-border)
  * [reset style](#reset-style)
* [html](#html)
  * [Find URLs in Text, Make Links (php)](#find-urls-in-text-make-links-php)



<style>

  code[class*="language-"],
  pre[class*="language-"] {
    font-size:.75em!important;
  }

.scroll{
  height: 350px;
  overflow: scroll;
}

p {line-height:125%;}
li {padding: 4% 0}


</style>


## javascript 

### get random integer 
```js
Math.floor(Math.random() * Math.floor(max));
```
<pre>Math.floor(Math.random() * Math.floor(10));
// output: 4</pre>

### Close Window
A close window function is useful when you use a **pop-up** window on your page, as it allows the visitor to easily close the window. You can do it several ways: To use a button, paste the following where you want the button to appear:

```html
<a href="javascript:window.close();">Click to Close Window</a>
```

### Copy Selected Text

```head
function copyit(theField) {
	var selectedText = document.selection;
	if (selectedText.type == 'Text') {
		var newRange = selectedText.createRange();
		theField.focus();
		theField.value = newRange.text;
	} else {
		alert('select a text in the page and then press this button');
	}
}
```
```body
<form name="it">
  <div align="center">
    <input onclick="copyit(this.form.select1)" type="button" value="Press to copy the highlighted text"
      name="btnCopy">
    <p>
      <textarea name="select1" rows="4" cols="45"></textarea>
  </div>
</form>
```
---

### Focus OnLoad
You can put the user's cursor inside a text box (calling the text box' focus) as soon as the page is loaded. This helps ensure that visitors do not 'overlook' an important form item on your site.

```body
<BODY OnLoad="document.nameform.user.focus();">
```

```js
const string = 'food';
const substring = 'foo';

console.log(string.includes(substring)); // true
```

## css 


### gradient border

```CSS
border-top: 2px solid transparent;
border-image: linear-gradient(to left, white 0%, gray 50%, white 100%);
border-image-slice: 1;
```

### reset style

The all property in CSS resets all of the selected element's properties, except the direction and unicode-bidi properties that control text direction.

```CSS
.reset-me {s
  all: unset;
}
```

The point of it is allowing for component-level resetting of styles. Sometimes it's far easier to start from scratch with styling rather than fight against everything that is already there.

**Values**
* `initial`: resets all of the selected element's properties to their initial values as defined in the CSS spec.
* `inherit`: the selected element inherits all of its parent element's styling, including styles that are not normally inheritable.
* `unset`: the selected element inherits any inheritable values passed down from the parent element. If no inheritable value is available, the initial value from the CSS spec is used for each property.

## html
http://htmlshell.com/

```html
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>title</title>
  <meta name="author" content="name">
  <meta name="description" content="description here">
  <meta name="keywords" content="keywords,here">
  <link rel="stylesheet" href="stylesheet.css" type="text/css">
</head>

<body>

</body>

</html>
```


### Find URLs in Text, Make Links (php)

```php
<?php

// The Regular Expression filter
$reg_exUrl = "/(http|https|ftp|ftps)\:\/\/[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(\/\S*)?/";

// The Text you want to filter for urls
$text = "The text you want to filter goes here. http://google.com";

// Check if there is a url in the text
if(preg_match($reg_exUrl, $text, $url)) {

       // make the urls hyper links
       echo preg_replace($reg_exUrl, "<a href="{$url[0]}">{$url[0]}</a> ", $text);

} else {

       // if no urls in the text just return the text
       echo $text;

}
?>
```