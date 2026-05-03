A minimalist Unix-like NixOS configuration.

---

# Configuration tree:

```
.
├── boot
│   ├── default.nix
│   ├── kernel.nix
│   └── loader.nix
├── etc
│   ├── hardware
│   │   ├── audio.nix
│   │   ├── bluetooth.nix
│   │   ├── default.nix
│   │   ├── graphics.nix
│   │   └── hardware-configuration.nix
│   ├── default.nix
│   ├── locale.nix
│   ├── network.nix
│   ├── swap.nix
│   └── xdg.nix
├── home
│   ├── pineapplelite
│   │   ├── pkg
│   │   │   ├── telegram-desktop
│   │   │   │   └── default.nix
│   │   │   └── default.nix
│   │   ├── default.nix
│   │   ├── home.nix
│   │   └── user.nix
│   └── default.nix
├── pkg
│   ├── brightnessctl
│   │   └── default.nix
│   ├── dconf
│   │   └── default.nix
│   ├── fish
│   │   └── default.nix
│   ├── git
│   │   └── default.nix
│   ├── gvfs
│   │   └── default.nix
│   ├── helix
│   │   └── default.nix
│   ├── libinput
│   │   └── default.nix
│   ├── playerctl
│   │   └── default.nix
│   ├── power-profiles-daemon
│   │   └── default.nix
│   ├── tree
│   │   └── default.nix
│   ├── upower
│   │   └── default.nix
│   ├── xdg-user-dirs
│   │   └── default.nix
│   ├── xdg-utils
│   │   └── default.nix
│   ├── yazi
│   │   └── default.nix
│   └── default.nix
├── usr
│   ├── pkg
│   │   ├── awww
│   │   │   └── default.nix
│   │   ├── clang
│   │   │   └── default.nix
│   │   ├── clang-tools
│   │   │   └── default.nix
│   │   ├── foot
│   │   │   ├── config
│   │   │   │   └── foot.ini
│   │   │   └── default.nix
│   │   ├── fuzzel
│   │   │   ├── config
│   │   │   │   └── fuzzel.ini
│   │   │   └── default.nix
│   │   ├── helix
│   │   │   ├── config
│   │   │   │   └── config.toml
│   │   │   └── default.nix
│   │   ├── mako
│   │   │   ├── config
│   │   │   │   └── config
│   │   │   └── default.nix
│   │   ├── niri
│   │   │   ├── config
│   │   │   │   ├── hardware
│   │   │   │   │   ├── default.kdl
│   │   │   │   │   ├── keyboard.kdl
│   │   │   │   │   ├── mouse.kdl
│   │   │   │   │   └── touchpad.kdl
│   │   │   │   ├── init
│   │   │   │   │   ├── default.kdl
│   │   │   │   │   ├── desktop.kdl
│   │   │   │   │   ├── programs.kdl
│   │   │   │   │   └── system.kdl
│   │   │   │   ├── rules
│   │   │   │   │   └── default.kdl
│   │   │   │   ├── shortcuts
│   │   │   │   │   ├── hardware
│   │   │   │   │   │   ├── audio.kdl
│   │   │   │   │   │   ├── brightness.kdl
│   │   │   │   │   │   ├── default.kdl
│   │   │   │   │   │   ├── media.kdl
│   │   │   │   │   │   └── screen.kdl
│   │   │   │   │   ├── shell
│   │   │   │   │   │   ├── default.kdl
│   │   │   │   │   │   ├── exec.kdl
│   │   │   │   │   │   ├── system.kdl
│   │   │   │   │   │   ├── window.kdl
│   │   │   │   │   │   └── workspace.kdl
│   │   │   │   │   └── default.kdl
│   │   │   │   ├── themes
│   │   │   │   │   ├── default
│   │   │   │   │   │   ├── default.kdl
│   │   │   │   │   │   └── layout.kdl
│   │   │   │   │   └── default.kdl
│   │   │   │   └── config.kdl
│   │   │   └── default.nix
│   │   ├── nodejs
│   │   │   └── default.nix
│   │   ├── yazi
│   │   │   ├── config
│   │   │   │   └── yazi.toml
│   │   │   └── default.nix
│   │   ├── zen-browser
│   │   │   └── default.nix
│   │   └── default.nix
│   ├── themes
│   │   ├── cursor.nix
│   │   ├── default.nix
│   │   └── fonts.nix
│   └── default.nix
├── flake.lock
├── flake.nix
├── LICENSE
└── README.md

51 directories, 83 files
```
