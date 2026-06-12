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
```

## Usage

Run `ghq-fzf` directly, or add a shell function to `~/.zshrc` for `cd` on selection:

```zsh
function gv() { local r; r=$(ghq-fzf) && [[ -n "$r" ]] && cd "$(ghq root)/$r"; }
```

Then call `gv` (or any name you prefer) to open the picker and jump to the selected repository.

| Key | Action |
|-----|--------|
| `Enter` | Output the selected repository path (or `cd` if using the shell function) |
| `Ctrl-O` | Open the repository in your browser |
| `Esc` / `Ctrl-C` | Close without selection |

## Uninstall

```sh
brew uninstall masaki39/tap/ghq-fzf
```
