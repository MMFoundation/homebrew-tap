# homebrew-tap

Official [Homebrew](https://brew.sh) tap for [MMFoundation](https://github.com/MMFoundation) macOS software.

## Available Casks

| Cask | Application | Requirements | License |
| --- | --- | --- | --- |
| `ohmyshot` | [OhMyShot](https://www.ohmyshot.org/) — native screenshot, screen recording, annotation, pin, and on-device OCR tool | Apple silicon, macOS 26 (Tahoe) or later | GPL-3.0 |

## Install

```sh
brew install --cask mmfoundation/tap/ohmyshot
```

Or tap once and install by name:

```sh
brew tap mmfoundation/tap
brew install --cask ohmyshot
```

## Upgrade & Uninstall

OhMyShot ships signed [Sparkle](https://sparkle-project.org) in-app updates, and can also be upgraded with Homebrew:

```sh
brew upgrade --cask mmfoundation/tap/ohmyshot
```

To remove the application:

```sh
brew uninstall --cask ohmyshot
```

To remove the application together with preferences, caches, Capture History, downloaded OCR model packs, and Share Extension data:

```sh
brew uninstall --cask --zap ohmyshot
```

## Automation

`Casks/ohmyshot.rb` is updated automatically by `.github/workflows/update-cask.yml` whenever a new [OhMyShot release](https://github.com/MMFoundation/OhMyShot/releases) is published.
