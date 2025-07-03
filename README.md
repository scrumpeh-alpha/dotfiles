# Dotfiles repo

This is my personal dotfile repo with all my configs.

### Dependencies:
- `git`
- `stow`

### How-to:

#### Adding a config
- Make a dotfile directory
```bash
mkdir dotfiles
```
- Move the config you want in this format. For example, to move `nvim` config,
```bash
cd dotfiles
mkdir nvim && mkdir nvim/.config/
mv ~/.config/nvim nvim/.config/
stow nvim
```
- Then commit to repository after changes
```bash
git add *
git commit -m "commit"
git push
```

#### Using a config
- It as as simple as stowing every subdirectory
```bash
stow *
```
