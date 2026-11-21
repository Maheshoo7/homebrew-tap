# Maheshoo7's Homebrew tap

Homebrew casks for apps by [@Maheshoo7](https://github.com/Maheshoo7).

## ClipPad

[ClipPad](https://github.com/Maheshoo7/clippad) is a fast, private, open-source clipboard history manager for macOS — with a cat.

```sh
brew install --cask maheshoo7/tap/clippad
```

The first time you open ClipPad, macOS blocks it once because it isn't notarised by Apple yet. Allow it in **System Settings → Privacy & Security → Open Anyway**.

### Update

```sh
brew upgrade --cask clippad
```

### Uninstall

```sh
brew uninstall --cask clippad            # remove the app
brew uninstall --zap --cask clippad      # also remove your clipboard history and settings
```

## How this tap stays current

The [Update ClipPad](.github/workflows/update-clippad.yml) workflow checks for a new ClipPad release every six hours and bumps the cask's version and checksums automatically. To pick up a release straight away, run the workflow manually from the **Actions** tab.

## Problems?

Report app issues on the [ClipPad repository](https://github.com/Maheshoo7/clippad/issues), and problems with installing through Homebrew [here](https://github.com/Maheshoo7/homebrew-tap/issues).
