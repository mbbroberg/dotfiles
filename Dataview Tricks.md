---
edited: 2024-04-21 13:18:37
created: 2024-01-27 14:44:55
updated: 2024-06-02
---
*Main documentation at [Dataview](https://blacksmithgu.github.io/obsidian-dataview/)*. Amazing resource [Dataview Obsidian Tutorials](https://obsidianttrpgtutorials.com/Obsidian+TTRPG+Tutorials/Plugin+Tutorials/Dataview/Dataview).


## Automatic MOCs

````
list from [[]] and !outgoing([[]])
````
*This will create a list of all files that link to the current file but _do not_ already have a link in the file. This is a great way to avoid losing files*
- [Source](https://obsidian.rocks/dataview-in-obsidian-a-beginners-guide/)

## "Ago" times 

```
durationformat(date(now) - file.mtime, "h'h' m'm'") + " ago" AS "Updated"`
```
So cool: [[Dataview relative dates or times]]

Reminder: `mtime` is modified time while `ctime` is create.

## New Files

```
TABLE file.ctime AS "Created"
WHERE file.ctime >= date(today) - dur(1 week)
LIMIT 20
```

## Contains relative link in fontmatter

Used this for my [[+Resource Template]]

#### TODOs
```
TASK
WHERE contains(Research, link(this.file.name))
limit 10
```


### Research
```
LIST
FROM "Notes & Ideas" OR "Resources-Research"
WHERE contains(Research, link(this.file.name))
SORT created-on desc
limit 100
```



## Tasks

### Progress bar for tasks in a file 

`$= "![progress](https://progress-bar.dev/" + Math.round(((dv.current().file.tasks.where(t => t.completed).length) / (dv.current().file.tasks).length || 0) * 100) + "/)"`

### Tasks are super easy to filter  

```
due this week
```

### Tag-based Tasks via Dataview
``` 
TABLE WITHOUT ID visual, T.text, T.tags, length(T.tags) 
FLATTEN file.tasks as T 
FLATTEN file.link + " " + T.text as visual
WHERE contains(list(" "), T.status) 
SORT T.tag desc, T.file.name
DESC GROUP BY T.tag
```

``` 
TABLE WITHOUT ID visual, T.text, T.tags, length(T.tags) 
FLATTEN file.tasks as T 
FLATTEN file.link + " " + T.text as visual 
WHERE contains(list(" "), T.status) AND T.tags WHERE file.folder = this.file.folder 
SORT T.tag desc, T.file.name DESC 
GROUP BY T.tag
```

From [here](https://forum.obsidian.md/t/in-dataview-how-can-i-make-the-tasks-in-a-task-query-have-links-to-their-respective-pages-right-next-to-them/59618/8)


## More Ideas 

- https://s-blu.github.io/basic-dataview-query-builder/
- https://obsidian.rocks/obsidian-search-five-hidden-features/
- https://blacksmithgu.github.io/obsidian-dataview/
- https://s-blu.github.io/obsidian_dataview_example_vault/


---
up: []
related: []
created: 2024-06-02
tags:
---



### Recently written 
```dataview
List
WHERE (file.mtime >= date(today) - dur(3 week)) AND !contains(file.name, "0") AND !contains(file.folder, "0")
SORT file.mtime desc
LIMIT 5
```
