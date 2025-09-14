# Dotfiles repo

This is my personal dotfile repo with all my configs.

### Dependencies:
- `git`
- `stow`

### How-to:

#### Adding a config
- Make a dotfile directory (if not present)
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
- To use a singular config, do
```bash
stow [name]
```
- To immediately stow everything, it as as simple as stowing every subdirectory
```bash
stow *
```
