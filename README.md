# GoCodeAlone Homebrew Tap

```
brew tap GoCodeAlone/tap
```

## Available Packages

| Package | Type | Description |
|---------|------|-------------|
| `ratchet` | Cask | Interactive AI agent CLI |
| `wfctl` | Formula | Workflow engine CLI — validate, inspect, deploy, manage configs |
| `claude-skills` | Cask | Install Claude Code skill files into workspaces |

## Install

```sh
brew install --cask ratchet
brew install wfctl
brew install --cask claude-skills
```

## Auto-Updates

- `ratchet` and `claude-skills` are updated automatically by GoReleaser on each release
- `wfctl` is updated automatically via repository dispatch from the workflow repo's release workflow
