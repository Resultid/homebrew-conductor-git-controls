<p align="center">
  <img src="https://img.shields.io/badge/macOS-12%2B-blue?style=flat-square" alt="macOS 12+">
  <img src="https://img.shields.io/badge/version-0.3.0-indigo?style=flat-square" alt="Version 0.3.0">
  <img src="https://img.shields.io/badge/license-MIT-green?style=flat-square" alt="MIT License">
</p>

# Conductor Git Controls

A high-performance, minimal macOS interface for managing git operations across your Conductor.build workspaces.

## Install

```bash
brew tap Resultid/conductor-git-controls
brew install --cask conductor-git-controls
```

## Features

**Workspace Native** — Designed for [Conductor.build](https://conductor.build) environments. Automatically discovers and manages all your git worktrees.

**High-Speed Staging** — Single-click UI for bulk staging and unstaging. Stage, commit, and push in one motion.

**Native Performance** — Built with Tauri and Svelte 5 for a footprint under 10MB. Instant startup, zero Electron bloat.

**Local-First** — Your code never leaves your machine. No telemetry, no cloud sync, no external dependencies.

## Upgrade

```bash
brew upgrade --cask conductor-git-controls
```

## Uninstall

```bash
brew uninstall --cask conductor-git-controls
brew untap Resultid/conductor-git-controls
```

## Requirements

- macOS 12 (Monterey) or later
- Apple Silicon (arm64)

## Security

Conductor Git Controls is a local-first utility. It operates entirely on your machine with no network calls, no analytics, and no data collection.

## Links

- [Conductor.build](https://conductor.build)
