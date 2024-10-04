# Dotfiles repo

This is my personal dotfile repo with all my configs.

### Dependencies:
- `git`
- `stow`

### How-to:
- Make a dotfile directory
```bash
mkdir dotfiles
```
- Move the config you want in this format. For example, to move `nvim` config,
```bash
cd dotfiles
mkdir nvim && mkdir nvim/.config/
cp ~/.config/nvim ~/dotfiles/nvim/.config/
```
- Then commit to repository after changes
```bash
git add *
git commit -m "commit"
git push
```
