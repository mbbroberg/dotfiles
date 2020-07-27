# Dotfiles

A fresh take at my dotfiles with [chezmoi](https://www.chezmoi.io/docs/how-to/) as the lightweight dotfile management system.

## What's a dotfile?

Dotfiles are the collection of managed customizations across systems. Read more: 

- [Move your dotfiles to version control](https://opensource.com/article/19/3/move-your-dotfiles-version-control)
- [GitHub ❤ ~/](http://dotfiles.github.io/)

## How-to guide

NOTE: Don't run this unless you're me, or you'll get my customizations on your system. 

To get started on another system, run: 

```bash
chezmoi init https://github.com/mbbroberg/dotfiles --apply
```

To do: make these alaises in fish: 

- To generate `gnome-backup` run `dconf dump / > gnome-backup`
- To reload, `dconf load / < gnome-backup`
- To generate `Brewfile` run `brew bundle dump --file=~/.Brewfile` 
- To reload, `brew bundle --file=~/.Brewfile` 
- Autokey config goes to `~/.config/autokey/`
- Setup for guake 

```bash
backup_guake () {
    dconf dump /apps/guake/ > /home/mbbroberg/.local/share/chezmoi/dumps/guake-backup
}

restore_guake () {
    dconf reset -f /apps/guake/
    dconf load /apps/guake/ < /home/mbbroberg/.local/share/chezmoi/dumps/guake-backup
}
```

Next time I use a Mac: 

- Alfred goes ? (Look it back up)
- Set iterm to look for config here (how? L)
- Load the iterm colors by (?)