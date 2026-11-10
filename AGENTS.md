# carbongo/tap

Homebrew tap: `brew install carbongo/tap/<formula>`. Public repo; formula bumps go
straight to `main`.

| Formula | Source |
|---|---|
| `Formula/syncto.rb` | tag tarball of `carbongo/syncto` |

- Bump: set `url` to the new tag's tarball and `sha256` to `curl -fsSL URL | shasum -a 256`.
- Check: `brew audit --strict carbongo/tap/syncto`, then
  `brew install --build-from-source carbongo/tap/syncto` and `brew test carbongo/tap/syncto`.
