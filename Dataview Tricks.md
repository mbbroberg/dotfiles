---
Last Edited: 2024-02-02 13:59:51
---

### Tasks 
https://publish.obsidian.md/tasks/Queries/Filters

NOT tasks 
```tasks
not done 
due after 2021-04-04
NOT (path includes Daily) AND NOT (tags include #todo)
```


## Setting up a table for Projects

```dataview
TABLE status as "Status", priority as Priority, durationformat(date(now) - file.mtime, "h'h' m'm'") + " ago" AS "Updated"
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

{{query.file.folder}} or {{query.file.path}} or others >> 
Great info in https://github.com/obsidian-tasks-group/obsidian-tasks/blob/1c8e7a808a1fc80a72a80519c8eef1647fd40e05/docs/Scripting/Placeholders.md#L135

### Tasks and reformat the group by 

group by function task.due.format("YYYY[%%]-MM[%%] MMM", "no due date")

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

### Remove file titles!
*LIST without id *
```dataview
LIST without id bullets.text
FROM #me
FLATTEN file.lists as bullets
WHERE contains(bullets.tags, "#me/lesson") OR contains(bullets.tags, "#me/principle")
SORT bullets.tags DESC
```

### The main thing
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