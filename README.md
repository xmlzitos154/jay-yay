# 🍦 JAY (Just Another Yogurt)

JAY is a lightweight Bash wrapper designed to simplify and automate AUR helper tasks. It provides a more human-readable syntax for `yay`, `paru`, or `pacman`, while keeping a persistent log of your actions.

## 🚀 Features
* **Intuitive Commands:** Forget cryptic flags like `-Syyu`. Use `update`, `refresh`, or `install`.
* **Multi-Helper Support:** Seamlessly switch between `yay`, `paru`, and `pacman`.
* **Action Logging:** Every success or failure is logged in `~/.cache/joylog.txt`.
* **Interactive Installer:** Simple script to install or remove JAY from your system.

## 🛠️ Dependencies
Ensure you have the following installed:
* `base-devel` & `git`
* `yay` (default helper) or `paru` (optional)

```bash
sudo pacman -S --needed git base-devel

📥 Installation
Bash

git clone [https://github.com/xmlzitos154/jay-yay.git](https://github.com/xmlzitos154/jay-yay.git)
cd jay-yay
chmod +x install.sh
sudo ./install.sh

📖 Usage

JAY follows a simple structure: jay [helper-flag] [command] [package]
Helper Flags

By default, JAY uses yay. You can override this using:

    --paru: Uses paru for the operation.

    --basic: Uses pacman (for official repo tasks only).

Primary Commands
Command	Alias for	Description
install	-S	Installs a package
remove	-Rsn	Removes package and dependencies
update	-Syu	Updates the system
refresh	-Syy	Forces refresh of databases
refdate	-Syyu	Refresh + System update
search	-Ss	Search in repositories/AUR
query	-Qs	Search installed packages
Log Management

    show-logs: Displays your JAY history.

    clog: Clears the log file.