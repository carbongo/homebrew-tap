# carbongo/tap

Homebrew tap: `brew install carbongo/tap/<formula>`, `brew install --cask carbongo/tap/<cask>`. Public repo; bumps go
straight to `main`.

| Entry | Source |
|---|---|
| `Formula/syncto.rb` | tag tarball of `carbongo/syncto` |
| `Casks/bohemian-day-clock.rb` | `.dmg` of a `carbongo/bohemian-day-clock` GitHub Release |

- Formula bump: set `url` to the new tag's tarball and `sha256` to `curl -fsSL URL | shasum -a 256`.
- Cask bump: set `version`, and `sha256` from the release's `SHA256SUMS.txt` (`.dmg` line).
- Check: `brew audit --strict carbongo/tap/<name>` (casks: `--cask`), then install it; formulae also
  `brew install --build-from-source` and `brew test`.
