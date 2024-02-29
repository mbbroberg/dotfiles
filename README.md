# Dotfiles

A fresh take at my dotfiles with [chezmoi](https://www.chezmoi.io/docs/how-to/) as the lightweight dotfile management system.

## What's a dotfile?

Dotfiles are the collection of managed customizations across systems. Read more: 

- [Move your dotfiles to version control](https://opensource.com/article/19/3/move-your-dotfiles-version-control)
- [GitHub ❤ ~/](http://dotfiles.github.io/)

## How-to guide (to my future self)

`chezmoi` does the heavy lifting, but the quick guide looks like this.

### On a new system, run: 

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

### Day to day, run: 

- `chezmoi diff` to see what's changed
- `chezmoi update` will reset `local` with the `upstream` version
- `chezmoi apply` when you want to reset `upstream` with `local` version (will prompt when overwriting)
- `chezmoi re-add` when you edit outside of chezmoi files
- `chezmoi merge` to resolve differences

[Read up on usage here.](https://www.chezmoi.io/user-guide/frequently-asked-questions/usage/)

Unless you are me, you probably don't want to follow this setup verbatim. Make a fork of this project and customize it to be your own. If you are me, here's how to use this, dear future self.

### Recent 

- Add hardlinks to key Obsidian config files so I can sync them across systems

### TODOs

- [x] Correct iTerm and add shortcuts
- [ ] Learn how to run `onchange` scripts properly 
  - [This documentation](https://www.chezmoi.io/user-guide/use-scripts-to-perform-actions/#run-a-script-when-the-contents-of-another-file-changes) shows that I can run on change to a checksum and definitely want that pattern, but I don't get the syntax shown.
