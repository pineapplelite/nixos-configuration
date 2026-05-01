A minimalist Unix-like NixOS configuraion.

---

```
.
├── boot
│   ├── default.nix
│   ├── kernel.nix
│   └── loader.nix
├── etc
│   ├── hardware
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
│   │   ├── default.nix
│   │   ├── home.nix
│   │   └── user.nix
│   └── default.nix
├── pkg
│   ├── dconf
│   │   └── default.nix
│   ├── gvfs
│   │   └── default.nix
│   ├── libinput
│   │   └── default.nix
│   ├── power-profiles-daemon
│   │   └── default.nix
│   ├── upower
│   │   └── default.nix
│   └── default.nix
├── usr
│   ├── pkg
│   │   ├── foot
│   │   │   └── default.nix
│   │   ├── helix
│   │   │   └── default.nix
│   │   ├── niri
│   │   │   └── default.nix
│   │   ├── telegram-desktop
│   │   │   └── default.nix
│   │   ├── tree
│   │   │   └── default.nix
│   │   └── default.nix
│   └── default.nix
├── flake.lock
└── flake.nix

19 directories, 31 files
```
