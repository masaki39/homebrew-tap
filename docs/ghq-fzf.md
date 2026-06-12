# ghq-fzf

Interactive repository picker for [ghq](https://github.com/x-motemen/ghq), powered by [fzf](https://github.com/junegunn/fzf).  
Works out of the box — no configuration required.

---

![ghq-fzf screenshot](./screenshot-ghq-fzf.png)

---

## Features

- **Fuzzy search** across all your ghq-managed repositories
- **File tree preview** via `eza`
- **Branch name + last updated** shown in the footer on focus
- **Open in browser** with `Ctrl-O` (uses `gh`)
- **Clone a new repository** with `Ctrl-G` (`ghq get`) and `cd` into it
- **Tokyo Night color theme** out of the box

## Requirements

The following tools are installed automatically as dependencies:

| Tool | Purpose |
|------|---------|
| [fzf](https://github.com/junegunn/fzf) 0.57+ | Fuzzy finder UI |
| [ghq](https://github.com/x-motemen/ghq) | Repository manager |
| [eza](https://github.com/eza-community/eza) | File tree preview |
| [gh](https://cli.github.com/) | Open repo in browser |

> **Note:** `Ctrl-O` (open in browser) requires `gh auth login` to be completed in advance.

## Installation

```sh
brew tap masaki39/tap
brew install masaki39/tap/ghq-fzf
ghq-fzf install
```

`ghq-fzf install` adds shell integration to `~/.zshrc` and lets you set your command name interactively. Then restart your shell (or run `source ~/.zshrc`).

## Usage

Type your command name (e.g. `gv`) to open the picker and `cd` into the selected repository.

### In-picker keys

| Key | Action |
|-----|--------|
| `Enter` | `cd` into the selected repository |
| `Ctrl-O` | Open the repository in your browser |
| `Ctrl-G` | Clone a new repository (`ghq get`) and `cd` into it |
| `Esc` / `Ctrl-C` | Close without changing directory |

## Customization

To change your command name, edit the line added to `~/.zshrc`:

```zsh
export GHQ_FZF_FUNC='repo'  # your preferred command name
```

Or run `ghq-fzf install` again to overwrite.

## Update

```sh
brew update && brew upgrade masaki39/tap/ghq-fzf
```

## Uninstall

```sh
ghq-fzf uninstall
brew uninstall masaki39/tap/ghq-fzf
```
