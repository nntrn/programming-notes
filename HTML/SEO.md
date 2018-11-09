## SEO

```HTML

<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Page Title</title>
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta http-equiv="Content-Security-Policy" content="default-src 'self'">

  <!-- PUT YOUR STYLESHEETS HERE  -->
  <link rel="icon" type="image/png" href="../resources/favicon.png">
  <link rel="stylesheet" href="style.css">


  <!-- Short description of the document (limit to 150 characters) -->
  <!-- This content *may* be used as a part of search engine results. -->
  <meta name="description" content="A description of the page">
  <meta name="keywords" content="your, tags" />

  <!-- Control the behavior of search engine crawling and indexing -->
  <meta name="robots" content="index,follow"><!-- All Search Engines -->
  <meta name="googlebot" content="index,follow"><!-- Google Specific -->
  <!-- Tells Google not to show the sitelinks search box -->
  <meta name="google" content="nositelinkssearchbox">
  <!-- Tells Google not to provide a translation for this document -->
  <meta name="google" content="notranslate">

  <meta name="og:site_name" content="@nntrn" />
  <meta name="og:title" content="TITLE" />
  <meta name="og:url" content="https://nntrn.me">
  <meta property="og:description" content="kinda cool kinda nerdy">

  <meta name=”og:type” content="blog" />
  <meta name=”og:image” content=”http://www.yourdomain.com/image-name.jpg” />

  <meta name="description" content="likes to do stats, but not good">
</head>


```

## Robots Meta Tag
The Robots Meta tag is an HTML tag that provides instructions to web crawlers on whether to index or noindex a web page.

```HTML
<meta name="robots" content="noindex, nofollow"> <!-- Means not to index or not to follow this web page. -->

<meta name="robots" content="index, follow"> <!--Means index and follow this web page.-->
```

The Robots Meta tag has four main values for search engine crawlers:

* `FOLLOW` –The search engine crawler will follow all the links in that web page
* `INDEX` –The search engine crawler will index the whole web page
* `NOFOLLOW` – The search engine crawler will NOT follow the page and any links in that web page
* `NOINDEX` – The search engine crawler will NOT index that web page

## Open Graph:

Open Graph Meta tags are designed to promote integration between Facebook, LinkedIn, Google and the website URLs that you shared on these platforms.

```HTML
<meta property="og:type" content="article" />

<meta property="og:title" content="TITLE OF YOUR POST OR PAGE" />

<meta property="og:description" content="DESCRIPTION OF PAGE CONTENT" />

<meta property="og:image" content="LINK TO THE IMAGE FILE" />

<meta property="og:url" content="PERMALINK" />

<meta property="og:site_name" content="SITE NAME" />
```


# references

[Meta Tags in 2018](https://www.advancedwebranking.com/blog/meta-tags-important-in-seo/)