---
Last Edited: 2024-02-02 13:59:51
---

## Setting up a table for Projects

```dataview
TABLE status as "Status", priority as Priority, file.mtime AS "Recency"
FROM "Projects" OR "Topics"
WHERE !contains(file.tags, "cancelled") AND !contains(file.tags, "done")
```



## New Files

```dataview
TABLE file.ctime AS "Created"
WHERE file.ctime >= date(today) - dur(1 week)
LIMIT 10
```

## Tasks are neat

### Tasks in other files due today
```tasks
path does not include {{query.file.path}}
due today
sort by function task.file.path
limit 5
```
#### Backlog
```tasks 
not done
sort by due date
limit 3
```

## Gather bullet points by tag! So cool 
*from John Engelman*

```dataview
LIST bullets.text
FROM #tag
FLATTEN file.lists as bullets
WHERE contains(bullets.tags, "#tag")
```
Example: 

```dataview
LIST bullets.text
FROM #cnc
FLATTEN file.lists as bullets
WHERE contains(bullets.tags, "#cnc")

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