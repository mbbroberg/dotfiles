---
edited: 2024-04-21 14:52:44
created: 2024-01-29 20:05:32
---
### Goals



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

```dataview
list from [[]] and !outgoing([[]])
```
