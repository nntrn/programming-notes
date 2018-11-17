# regex examples & notes

## references
* [data wrangling with dyplr](http://clayford.github.io/dwir/dwr_07_regular_expressions.html)
* [sample problems](http://www.cbs.dtu.dk/courses/27610/regular-expressions-cheat-sheet-v2.pdf)
* [Regular expression cheat sheet](http://www.andrew.cmu.edu/course/15-112-m13/applications/ln/regex.pdf)
* [Quick-Start: Regex Cheat Sheet](https://www.rexegg.com/regex-quickstart.html)
* [DUKE STA523 RegEx](http://www2.stat.duke.edu/~cr173/Sta523_Fa15/regex.html)
* [stringr vignette](https://cran.r-project.org/web/packages/stringr/vignettes/stringr.html)

## tools
* [test your regex](https://www.regextester.com/)


|character|classes|
|--- |--- |
|`.`|any character except newline|
|`\w \d \s`|word, digit, whitespace|
|`\W \D \S`|not word, digit, whitespace|
|`[abc]`|any of a, b, or c|
|`[^abc]`|not a, b, or c|
|`[a-g]`|character between a & g|
|`^abc$`|start / end of the string|
|`\b`|word boundary|
|`\. \* \\`|escaped special characters|
|`\t \n \r`|tab, linefeed, carriage return|
|`\u00A9`|unicode escaped ©|
|`(abc)`|capture group|
|`\1`|backreference to group #1|
|`(?:abc)`|non-capturing group|
|`(?=abc)`|positive lookahead|
|`(?!abc)`|negative lookahead|
|a* a+ a?|0 or more, 1 or more, 0 or 1|
|`a{5} a{2,}`|exactly five, two or more|
|`a{1,3}`|between one & three|
|`a+? a{2,}?`|match as few as possible|
|`ab|cd`|match ab or cd|

<details><summary>making the first column code for the regex table above</summary>

**find**: `(^\|)(.*)(\|[a-z].*)`
**replace**: ``$1`$2`$3``

</details>


## misc

select all by using `.*`

```r
.*(<img src="https://image.flaticon.com/icons/)(\S{1,}.png).*
```

`\b(?!ignoreme|ignoreyou)\b\S+` [](https://www.regextester.com/94017)

```
aaa ignoreme blabla fasdfdsa
bbb ignoreme ad
bbb ignoreyou ad
```