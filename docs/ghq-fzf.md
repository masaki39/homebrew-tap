# ghq-fzf

Interactive repository picker for [ghq](https://github.com/x-motemen/ghq), powered by [fzf](https://github.com/junegunn/fzf).  
Works out of the box — no configuration required.

---

<!-- Screenshot placeholder: replace with an actual screenshot -->
![ghq-fzf screenshot](./screenshot-ghq-fzf.png)

---

## Features

- **Fuzzy search** across all your ghq-managed repositories
- **File tree preview** via `eza`
- **Branch name + last updated** shown in the footer on focus
- **Open in browser** with `Ctrl-O` (uses `gh`)
- **Tokyo Night color theme** out of the box
- **Key binding** — launch from anywhere with `Ctrl-G`

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
ghq-fzf-install
```

Then restart your shell (or run `source ~/.zshrc`).

## Usage

Press **`Ctrl-G`** in your terminal to open the picker.

| Key | Action |
|-----|--------|
| `Enter` | `cd` into the selected repository |
| `Ctrl-O` | Open the repository in your browser |
| `Esc` / `Ctrl-C` | Close without changing directory |

## Key Binding Customization

By default, `Ctrl-G` is used. To change it, add this line to `~/.zshrc` **before** the `source` line:

```zsh
export GHQ_FZF_KEY='^t'   # change to any key
```

> **Note:** Avoid `^r` as it is bound to shell history search by default.

## Uninstall

```sh
brew uninstall masaki39/tap/ghq-fzf
```

Remove the `source` line from `~/.zshrc` manually if desired.
