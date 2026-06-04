A minimalist Unix-like NixOS configuration.

---

# Configuration tree:

```
.
├── home
│   ├── config
│   │   ├── fastfetch
│   │   │   └── config.jsonc
│   │   ├── foot
│   │   │   └── foot.ini
│   │   ├── fuzzel
│   │   │   └── fuzzel.ini
│   │   ├── helix
│   │   │   ├── config.toml
│   │   │   └── languages.toml
│   │   ├── ironbar
│   │   │   ├── config.corn
│   │   │   └── style.css
│   │   ├── mako
│   │   │   └── config
│   │   ├── niri
│   │   │   ├── hardware
│   │   │   │   ├── default.kdl
│   │   │   │   ├── keyboard.kdl
│   │   │   │   ├── mouse.kdl
│   │   │   │   └── touchpad.kdl
│   │   │   ├── init
│   │   │   │   ├── default.kdl
│   │   │   │   ├── desktop.kdl
│   │   │   │   ├── programs.kdl
│   │   │   │   └── system.kdl
│   │   │   ├── rules
│   │   │   │   ├── default.kdl
│   │   │   │   └── layout.kdl
│   │   │   ├── shortcuts
│   │   │   │   ├── hardware
│   │   │   │   │   ├── audio.kdl
│   │   │   │   │   ├── brightness.kdl
│   │   │   │   │   ├── default.kdl
│   │   │   │   │   └── media.kdl
│   │   │   │   ├── shell
│   │   │   │   │   ├── default.kdl
│   │   │   │   │   ├── exec.kdl
│   │   │   │   │   ├── screenshot.kdl
│   │   │   │   │   ├── system.kdl
│   │   │   │   │   ├── window.kdl
│   │   │   │   │   └── workspace.kdl
│   │   │   │   └── default.kdl
│   │   │   ├── themes
│   │   │   │   ├── default
│   │   │   │   │   ├── default.kdl
│   │   │   │   │   └── layout.kdl
│   │   │   │   └── default.kdl
│   │   │   └── config.kdl
│   │   ├── yazi
│   │   │   └── yazi.toml
│   │   ├── zellij
│   │   │   └── config.kdl
│   │   └── default.nix
│   ├── pineapplelite
│   │   ├── pkg
│   │   │   ├── fluffychat
│   │   │   │   └── default.nix
│   │   │   ├── telegram-desktop
│   │   │   │   └── default.nix
│   │   │   └── default.nix
│   │   ├── default.nix
│   │   ├── home.nix
│   │   └── user.nix
│   └── default.nix
├── pkg
│   ├── amberol
│   │   └── default.nix
│   ├── android-tools
│   │   └── default.nix
│   ├── awww
│   │   └── default.nix
│   ├── blender
│   │   └── default.nix
│   ├── bottom
│   │   └── default.nix
│   ├── brightnessctl
│   │   └── default.nix
│   ├── cargo
│   │   └── default.nix
│   ├── celluloid
│   │   └── default.nix
│   ├── clang
│   │   └── default.nix
│   ├── clang-tools
│   │   └── default.nix
│   ├── cliphist
│   │   └── default.nix
│   ├── fastfetch
│   │   └── default.nix
│   ├── file-roller
│   │   └── default.nix
│   ├── fish
│   │   └── default.nix
│   ├── foot
│   │   └── default.nix
│   ├── fuzzel
│   │   └── default.nix
│   ├── gimp
│   │   └── default.nix
│   ├── git
│   │   └── default.nix
│   ├── go
│   │   └── default.nix
│   ├── gopls
│   │   └── default.nix
│   ├── gtkgreet
│   │   └── default.nix
│   ├── gtklock
│   │   └── default.nix
│   ├── helix
│   │   └── default.nix
│   ├── ironbar
│   │   └── default.nix
│   ├── jq
│   │   └── default.nix
│   ├── kdePackages
│   │   ├── okular
│   │   │   └── default.nix
│   │   └── default.nix
│   ├── libreoffice-fresh
│   │   └── default.nix
│   ├── librewolf
│   │   └── default.nix
│   ├── libva-utils
│   │   └── default.nix
│   ├── live-server
│   │   └── default.nix
│   ├── loupe
│   │   └── default.nix
│   ├── lxqt
│   │   ├── lxqt-policykit
│   │   │   └── default.nix
│   │   └── default.nix
│   ├── mako
│   │   └── default.nix
│   ├── mesa
│   │   └── default.nix
│   ├── niri
│   │   └── default.nix
│   ├── nixd
│   │   └── default.nix
│   ├── ouch
│   │   └── default.nix
│   ├── playerctl
│   │   └── default.nix
│   ├── retext
│   │   └── default.nix
│   ├── rust-analyzer
│   │   └── default.nix
│   ├── rustc
│   │   └── default.nix
│   ├── scc
│   │   └── default.nix
│   ├── steam
│   │   └── default.nix
│   ├── swayidle
│   │   └── default.nix
│   ├── thunar
│   │   └── default.nix
│   ├── tree
│   │   └── default.nix
│   ├── typescript-language-server
│   │   └── default.nix
│   ├── vscode-langservers-extracted
│   │   └── default.nix
│   ├── wl-clipboard
│   │   └── default.nix
│   ├── xdg-user-dirs
│   │   └── default.nix
│   ├── xdg-utils
│   │   └── default.nix
│   ├── xfconf
│   │   └── default.nix
│   ├── yazi
│   │   └── default.nix
│   ├── zellij
│   │   └── default.nix
│   ├── zig
│   │   └── default.nix
│   ├── zls
│   │   └── default.nix
│   └── default.nix
├── svc
│   ├── dbus
│   │   └── default.nix
│   ├── flatpak
│   │   └── default.nix
│   ├── flatpak-repo
│   │   └── default.nix
│   ├── gvfs
│   │   └── default.nix
│   ├── libinput
│   │   └── default.nix
│   ├── logind
│   │   └── default.nix
│   ├── ly
│   │   └── default.nix
│   ├── pipewire
│   │   └── default.nix
│   ├── power-profiles-daemon
│   │   └── default.nix
│   ├── swayidle
│   │   └── default.nix
│   ├── tumbler
│   │   └── default.nix
│   ├── upower
│   │   └── default.nix
│   └── default.nix
├── sys
│   ├── hardware
│   │   ├── bluetooth.nix
│   │   ├── default.nix
│   │   ├── graphics.nix
│   │   └── hardware-configuration.nix
│   ├── boot.nix
│   ├── default.nix
│   ├── env.nix
│   ├── kernel.nix
│   ├── locale.nix
│   ├── memory.nix
│   ├── networking.nix
│   ├── security.nix
│   └── xdg.nix
├── ui
│   ├── cursor.nix
│   ├── default.nix
│   ├── fonts.nix
│   ├── stylix.nix
│   └── wallpaper.png
├── flake.lock
├── flake.nix
├── LICENSE
└── README.md

99 directories, 137 files
```
