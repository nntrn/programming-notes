# regex snippets

## for markdown
### creating links

#### `\S\s(.*):\s(\S*)$`
replace with: `* [$1]($2)`

$ echo -e <details><summary>example</summary>

```
•	Invitation suite: https://www.etsy.com/listing/234165241/floral-watercolor-invitation-set
• Save the date: https://www.etsy.com/listing/234160811/watercolor-save-the-date-script
```

output:
```
* [Invitation suite](https://www.etsy.com/listing/234165241/floral-watercolor-invitation-set)
* [Save the date](https://www.etsy.com/listing/234160811/watercolor-save-the-date-script)
```

</details>