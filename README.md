# NetCheck — Homebrew tap

A menu bar internet reachability + live throughput monitor. [Source repo →](https://github.com/uxvic/NetCheck)

## Install

```sh
brew tap uxvic/netcheck
brew install --cask netcheck
```

On recent Homebrew, if it refuses the tap as "untrusted", run `brew trust uxvic/netcheck` first.

NetCheck isn't notarized (no paid Apple Developer account), so the **first launch** shows a
one-time Gatekeeper prompt — open **System Settings → Privacy & Security → Open Anyway**. This
applies to Homebrew and the direct `.dmg` alike. After that, updates are automatic and silent via
Sparkle (it strips the quarantine flag). Power users can skip the prompt with
`xattr -dr com.apple.quarantine /Applications/NetCheck.app`.

Prefer not to use Homebrew? Download the `.dmg` from
[Releases](https://github.com/uxvic/NetCheck/releases/latest), drag it to Applications,
and do the one-time **Open Anyway**.

## Update / uninstall

```sh
brew upgrade --cask netcheck     # (the app also self-updates via Sparkle)
brew uninstall --cask netcheck
```
