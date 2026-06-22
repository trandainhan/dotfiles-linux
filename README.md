# dotfiles-linux

Full working environment for vim, tmux, and zsh.

- `vimrc` → `~/.vimrc`
- `zshrc` → `~/.zshrc`
- `tmux.conf` → `~/.tmux.conf`
- `vim/` → `~/.vim/` (plugin configs, ftplugin)

## Install

Copy each file to your home directory with a `.` prefix:

```bash
cp vimrc ~/.vimrc
cp zshrc ~/.zshrc
cp tmux.conf ~/.tmux.conf
cp -r vim/. ~/.vim/
```

## Dependencies

### vim
- [vim-plug](https://github.com/junegunn/vim-plug) for plugin management
- [ripgrep](https://github.com/BurntSushi/ripgrep) — `brew install ripgrep`
- [ruff](https://github.com/astral-sh/ruff) — `brew install ruff` (Python linting/formatting)
- [mypy](https://mypy-lang.org) — `brew install mypy` (Python type checking)
- Run `:PlugInstall` inside vim after copying configs

### tmux
- tmux 2.6+ (pbcopy/pbpaste work natively on macOS, no extra tool needed)
- vi bindings in copy mode (`v` to select, `y` to copy, `r` for rectangle)

### zsh
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) — `brew install zsh-autosuggestions`
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) — `brew install zsh-syntax-highlighting`
- [zoxide](https://github.com/ajeetdsouza/zoxide) — `brew install zoxide`

## Vim Plugins

- **fzf + fzf.vim** — fuzzy file/buffer/content search (replaces CtrlP + ag.vim)
- **NERDTree** — file explorer (`Ctrl+\`)
- **vim-tmux-navigator** — seamless pane switching between vim and tmux
- **ALE** — async linting; uses ruff + mypy for Python, golangci-lint for Go
- **vim-go** — Go development
- **vim-fugitive** — Git integration
- **lightline** — status bar
- **tcomment** — toggle comments
- **python-mode** — Python motions/text objects (linting disabled, ALE handles it)

## Key Mappings

| Key | Action |
|-----|--------|
| `,<Space>` | Fuzzy file search |
| `,n` | Fuzzy buffer search |
| `,gg` / `,ag` | Ripgrep content search |
| `,*` | Search word under cursor |
| `Ctrl+\` | Toggle NERDTree |
| `Ctrl+h/j/k/l` | Navigate vim/tmux panes |
| `,w` | Save file |
| `ss` | Horizontal split |
| `vv` | Vertical split |

## tmux Key Bindings

- Prefix: `Ctrl+a`
- `prefix + v` — vertical split
- `prefix + s` — horizontal split
- `prefix + r` — reload config
- `prefix + e/E` — sync/unsync panes
