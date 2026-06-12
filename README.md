# homebrew-tap

Homebrew tap for shell utility tools.

## Install

```sh
brew tap masaki39/tap
```

## Tools

### ghq-fzf

Interactive repository picker powered by ghq + fzf. Works out of the box — no configuration required.

→ [Documentation](docs/ghq-fzf.md)

```sh
brew install masaki39/tap/ghq-fzf
```

Add to `~/.zshrc`:
```zsh
source $(brew --prefix)/share/ghq-fzf/init.zsh
```

### typewriter

Displays text with a typewriter effect.

```sh
brew install masaki39/tap/typewriter
```

```sh
typewriter "Hello, World!"   # type message char by char (press any key to skip)
typewriter                   # continuous fortune mode
typewriter --help
```

### csl

Interactive Zotero CSL style selector with clipboard integration.

```sh
brew install masaki39/tap/csl
```

```sh
csl --help
```

### emoji

Interactive emoji picker with clipboard integration.

```sh
brew install masaki39/tap/emoji
```

```sh
emoji           # open interactive picker
emoji face      # open picker with pre-filled search
emoji --help
```

---

## For Developers

### Adding a new version

Each tool is versioned independently using per-tool tags (e.g. `ghq-fzf-v1.0.0`).

1. Update `Formula/<tool>.rb` with the new version in the `url` field
2. Commit and push to `main`
3. Create and push the tag:
   ```sh
   git tag <tool>-v<version>
   git push origin <tool>-v<version>
   ```
4. Get the sha256 from the tarball:
   ```sh
   curl -sL https://github.com/masaki39/homebrew-tap/archive/refs/tags/<tool>-v<version>.tar.gz | shasum -a 256
   ```
5. Update `sha256` in the formula and push to `main`
