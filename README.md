🍦 JAY (Just Another Yogurt)

JAY is a lightweight Bash wrapper designed to simplify and automate AUR helper tasks. It provides a more human-readable syntax for yay, paru, or pacman, while keeping a persistent log of your actions.
🚀 Features

    Intuitive Commands: Forget cryptic flags like -Syyu. Use update, refresh, or install.

    Multi-Helper Support: Seamlessly switch between yay, paru, and pacman.

    Action Logging: Every success or failure is logged in ~/.cache/joylog.txt.

    Interactive Mode: If you run a command without arguments, JAY will ask you for them.

🛠️ Dependencies

Ensure you have the following installed:

    base-devel & git

    yay (default helper) or paru (optional)

Bash
```
sudo pacman -S --needed git base-devel
```
📥 Installation
Bash

```
git clone https://github.com/xmlzitos154/JAY-aur-helper.git
cd JAY-aur-helper
chmod +x install.sh
sudo ./install.sh
```

📖 Usage

JAY follows a simple structure: jay [helper-flag] [command] [package]
Helper Flags

By default, JAY uses yay. You can override this using:

    --paru: Uses paru for the operation.

    --basic: Uses pacman (for official repo tasks only).

Primary Commands
Command	Alias for	Description
install	-S	Installs a package
remove	-Rsn	Removes package and unused dependencies
update	-Syu	Updates the system
refresh	-Syy	Forces refresh of package databases
refdate	-Syyu	Refresh databases + System update
search	-Ss	Search for packages in repositories/AUR
query	-Qs	Search for packages already installed
Log Management

    show-logs: Displays your JAY history.

    clog: Clears the log file.

Examples
Bash

# Install a package using yay (default)
```
jay install discord
```
# Update the system using paru
```
jay --paru update
```
# Search for a package in local database using pacman
```
jay --basic query linux
```
📝 Logging

JAY automatically tracks your activity in: $HOME/.cache/joylog.txt

It stores the timestamp, the action taken, and whether it was successful. Perfect for those "Wait, when did I install this?" moments.
🛡️ Contributing

This project is currently in Beta (v0.5.0). Feel free to open issues or PRs to improve the logic!
