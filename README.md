# NetCheck — Homebrew tap

A menu bar internet reachability + live throughput monitor. [Source repo →](https://github.com/uxvic/NetCheck)

## Install

```sh
brew tap uxvic/netcheck
brew install --cask --no-quarantine netcheck
```

On recent Homebrew, if it refuses the tap as "untrusted", run `brew trust uxvic/netcheck` first.

`--no-quarantine` skips Gatekeeper. NetCheck isn't notarized (no paid Apple Developer
account), so without that flag macOS shows a one-time "Open Anyway" prompt under
**System Settings → Privacy & Security**. Integrity and updates are handled by Sparkle's
own signature, not Apple's.

Prefer not to use Homebrew? Just download the `.dmg` from
[Releases](https://github.com/uxvic/NetCheck/releases/latest), drag it to Applications,
and do the one-time **Open Anyway**.

## Update / uninstall

```sh
brew upgrade --cask netcheck     # (the app also self-updates via Sparkle)
brew uninstall --cask netcheck
```
