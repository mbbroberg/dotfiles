# Dotfiles

A fresh take at my dotfiles with [chezmoi](https://www.chezmoi.io/docs/how-to/) as the lightweight dotfile management system.

## What's a dotfile?

Dotfiles are the collection of managed customizations across systems. Read more: 

- [Move your dotfiles to version control](https://opensource.com/article/19/3/move-your-dotfiles-version-control)
- [GitHub ❤ ~/](http://dotfiles.github.io/)

## How-to guide (to my future self)

`chezmoi` does the heavy lifting, but the quick guide is: 

- `chezmoi add` when you change an item manually and want to pull it in
- `chezmoi apply` when you want to set it back to the declarative state

Unless you are me, you probably don't want to follow this setup verbatim. Make a fork of this project and customize it to be your own. If you are me, here's how to use this, dear future self.

To get started on another system, run: 

```bash
chezmoi init $REPO --apply
```

Where `$REPO` is your repository URL. 

Next time I use a Mac: 

- Alfred goes ? (Look it back up)
- Set iterm to look for config here (how? L)
- Load the iterm colors by (?)
