# Homebrew Tap for KeepGoing.dev

Homebrew casks for [KeepGoing](https://keepgoing.dev) Mac apps.

## Install KeepGoing Den

```bash
brew tap keepgoing-dev/tap
brew install --cask keepgoing-den
```

The Den updates itself, so `brew upgrade` leaves it alone. To uninstall, turn off the Claude Code
statusline in the Den first if you turned it on, and deactivate this Mac in Settings if you have a
licence.

```bash
brew uninstall --cask keepgoing-den
```

## Available casks

| Cask | Description |
|------|-------------|
| `keepgoing-den` | Menu bar Pomodoro timer that binds each project to its own desktop |
| `keepgoing` | Deprecated. The old system tray companion, replaced by KeepGoing Den |

If you still have the old tray app, remove it with `brew uninstall --cask keepgoing`.

## Learn more

- [KeepGoing Den](https://keepgoing.dev/den)
