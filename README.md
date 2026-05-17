[![Bash](https://img.shields.io/badge/Language-Bash-4EAA25?style=flat-square&logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)
[![Arch Linux](https://img.shields.io/badge/OS-Arch_Linux-1793D1?style=flat-square&logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![Jay-bin](https://img.shields.io/badge/JAY_BIN-v6-1793D1?style=flat-square&logo=arch-linux&logoColor=white)](https://aur.archlinux.org/packages/jay-bin)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=flat-square)](https://opensource.org/licenses/MIT)

# JAY — Just Another Yogourt

**A lightweight, human-friendly wrapper for `yay` with Flatpak integration.**

JAY is a **powerful yet simple** wrapper designed to make AUR management intuitive. No more memorizing cryptic flags like `-Syu` — just use plain English and let JAY handle the rest.

---

## What's new in v6

- **`pin`** — Toggle `IgnorePkg` in `pacman.conf` without editing it manually
- **`why` / `dp`** — Reverse dependency tree with suggested removal order
- **`stats`** — System statistics with top 10 heaviest packages
- **Log rotation** — Auto-cleaner when `jay.log` exceeds 500KB
- **`slog --lines N`** — Filter log output to last N lines
- **Multi-backend** — Seamless support for `yay`, `paru`, and `pikaur`
- **Refactor** — Cleaner codebase, better variable naming, unified visual style

---

## Key Features

- **Human Syntax** — Use `install`, `update`, or `remove` instead of complex flags
- **Multi-backend** — Works with `yay`, `paru`, `pikaur`, or falls back to `pacman`
- **Hybrid Mode (`-f`)** — Seamless fallback to Flathub if a package isn't found in the AUR
- **Aggressive Mode (`-A`)** — Purge packages along with all unneeded dependencies (`-Rsn`)
- **Auto-Logging** — Every action is recorded in `~/.cache/jay.log`
- **Orphan Purge** — One-command removal of unused dependencies
- **Dependency Inspector** — See what depends on a package before removing it
- **Package Pinning** — Ignore specific packages on updates via `pacman.conf`

---

## Prerequisites

```bash
sudo pacman -S --needed git base-devel
```

---

## Installation

### From source

```bash
git clone https://github.com/xmlzitos154/jay.git
cd jay
chmod +x install.sh
sudo ./install.sh
```

### From the AUR

```bash
# with yay
yay -S jay-bin

# with paru
paru -S jay-bin
```

---

## Usage

```
jay [command] [options] [packages]
```

### Primary Commands

| Command | Alias | Description |
|---------|-------|-------------|
| `install` | `-i` | Sync and install packages (AUR/Repo) |
| `remove` | `-r` | Remove packages from the system |
| `update` | `-u` | Full system update (AUR + Flatpaks) |
| `search` | `-s` | Search for packages in repositories |
| `query` | `-q` | Search locally installed packages |
| `orphan` | `-o` | Remove all orphaned dependencies |
| `cache` | `-c` | Clear Pacman and AUR cache |
| `mirrors` | `-m` | Optimize mirrorlist with Reflector |
| `why`, `dp` | | Show reverse dependencies of a package |
| `pin`, `--ignore` | | Toggle package ignore on updates |
| `stats` | | Show system and package statistics |
| `--check-updates` | `check` | Search for available updates |
| `--pacdiff` | `pd` | Manage `.pacnew` / `.pacsave` files |
| `--view` | `vi` | Read PKGBUILD of AUR packages |
| `--list-aur` | `la` | List all AUR installed packages |
| `--ping` | | Test network connectivity |
| `--fix-keys` | `fk` | Fix GPG key issues |
| `--create-backup` | `cb` | Create a backup of installed packages |
| `--restore-backup` | `rb` | Restore packages from a backup file |

### Power-User Options

| Option | Description |
|--------|-------------|
| `-f`, `--flatpak` | Enable hybrid AUR + Flatpak mode |
| `--flatpak-only` | Use only Flatpak as package manager |
| `-A` | Aggressive mode — equivalent to `-Rsn` (use with `remove`) |
| `--noconfirm` | Skip confirmation prompts |
| `--backend` | Switch AUR helper (`yay`, `paru`, `pikaur`) |
| `--path-to-binary` | Show binary path of a package (use with `query`) |
| `--lines N` | Show last N lines of the log (use with `slog`) |

---

## Examples

```bash
# Install a package
jay install firefox

# Remove with aggressive mode
jay remove spotify-launcher -A

# Check what depends on a package before removing
jay why python

# Pin a package to ignore it on updates (toggle)
jay pin linux-zen

# Show system stats
jay stats

# Search in AUR and Flatpak
jay search obsidian -f

# Update everything including Flatpaks
jay update -f

# Use paru instead of yay
jay --backend paru update

# Show last 10 log entries
jay slog --lines 10

# Restore backup from custom path
jay --restore-backup --path ~/backups/packages.txt
```

---

## Log Management

JAY logs every action to `~/.cache/jay.log`.

```bash
jay slog              # show full log
jay slog --lines 20   # show last 20 entries
```

Log rotation is automatic — when the file exceeds 500KB, JAY will ask to archive it as `jay.log.1`.

---

## Backup Management

```bash
jay --create-backup                          # create backup at default path
jay --restore-backup                         # restore from default path
jay --restore-backup --path ~/my-backup.txt  # restore from custom path
```

Backups are validated with SHA256 checksums to prevent corruption.

---

## License

Distributed under the MIT License. Created by [xmlzitos154](https://github.com/xmlzitos154).

> If you like JAY, don't forget to leave a ⭐ to support the project!
