# GoCodeAlone Homebrew Tap

Homebrew tap for GoCodeAlone command-line tools.

## Tap

```bash
brew tap gocodealone/tap
brew update
```

You can install formulas with the short name after tapping, or use the fully
qualified name from any Homebrew install.

## Recipes

| Name | Kind | Install | Description |
|---|---|---|---|
| `wfctl` | Formula | `brew install gocodealone/tap/wfctl` | Workflow engine CLI: validate, inspect, deploy, and manage configs. |
| `ratchet-cli` | Formula | `brew install --formula gocodealone/tap/ratchet-cli` | Interactive AI agent CLI as a Homebrew formula. |
| `ratchet-cli` | Cask | `brew install --cask gocodealone/tap/ratchet-cli` | Interactive AI agent CLI as a cask. |
| `claude-skills` | Formula | `brew install gocodealone/tap/claude-skills` | Install Claude Code skill files into workspaces. |

## Install

```bash
brew install gocodealone/tap/wfctl
brew install --formula gocodealone/tap/ratchet-cli
brew install gocodealone/tap/claude-skills
```

For the ratchet cask:

```bash
brew install --cask gocodealone/tap/ratchet-cli
```

## Upgrade

Refresh the tap before checking versions, especially immediately after a new
upstream release:

```bash
brew update
brew upgrade wfctl
brew upgrade ratchet-cli
brew upgrade claude-skills
```

Inspect what Homebrew sees:

```bash
brew info gocodealone/tap/wfctl
brew info --formula gocodealone/tap/ratchet-cli
brew info --cask gocodealone/tap/ratchet-cli
brew info gocodealone/tap/claude-skills
```

If `brew info` reports an older version than the latest GitHub release, run
`brew update` first. If it is still stale, check the generated update PRs or
release automation for the source project.

## Pin, Unpin, And Uninstall

```bash
brew pin wfctl
brew unpin wfctl
brew uninstall wfctl
```

Use the same commands for `ratchet-cli` and `claude-skills`.

## wfctl Release Automation

Workflow stable releases dispatch `update-wfctl` to this tap. The workflow in
`.github/workflows/update-wfctl.yml`:

1. Downloads the release `checksums.txt`.
2. Regenerates `Formula/wfctl.rb` with per-platform SHA-256 values.
3. Opens or updates `automation/update-wfctl-<version>`.
4. Requests Copilot review as advisory feedback.
5. Enables auto-merge when available, otherwise polls checks and admin-merges
   after checks are green and review threads are resolved.

The tap's `main` branch must not require human review for generated formula
PRs unless a generated-PR bypass exists. If required reviews are enabled, the
wfctl formula can fall behind even when the source release succeeded.

## Maintainer Checks

```bash
ruby -c Formula/wfctl.rb
ruby -c Formula/ratchet-cli.rb
ruby -c Formula/claude-skills.rb
brew info gocodealone/tap/wfctl
brew info --formula gocodealone/tap/ratchet-cli
brew info --cask gocodealone/tap/ratchet-cli
```

To verify a local branch before merge, commit the branch first, then tap the
worktree under a throwaway name and remove it after inspection:

```bash
brew tap gocodealone/wfctl-docs-test "$(pwd)"
brew info gocodealone/wfctl-docs-test/claude-skills
brew untap gocodealone/wfctl-docs-test
```

Before merging generated wfctl formula PRs, confirm checks are green and there
are no unresolved review threads. Failed generated PRs should remain open until
the formula, upstream release assets, or repository settings are fixed.
