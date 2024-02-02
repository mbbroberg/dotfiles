---
Last Edited: 2024-02-02 13:59:51
---
## New Files

```dataview
TABLE file.ctime AS "Created"
WHERE file.ctime >= date(today) - dur(1 week)
LIMIT 10
```

## Area Template 
#### TODOs
```dataview
TASK
WHERE contains(Research, link(this.file.name))
limit 10
```


### Research
```dataview
LIST
FROM "Notes & Ideas" OR "Resources-Research"
WHERE contains(Research, link(this.file.name))
SORT created-on desc
limit 100
```



### Resources 
https://s-blu.github.io/basic-dataview-query-builder/
https://obsidian.rocks/obsidian-search-five-hidden-features/
https://blacksmithgu.github.io/obsidian-dataview/
https://s-blu.github.io/obsidian_dataview_example_vault/