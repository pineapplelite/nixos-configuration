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

# Installation

## Clone the repository:
```bash
git clone https://github.com/pineapplelite/nixos-configuration.git && cd nixos-configuration
```

## Copy your system-generated **hardware-configuration.nix** to **./etc/hardware/**:
```bash
cp /etc/nixos/hardware-configuration.nix ./etc/hardware/
```

## Apply the configuration:
```bash
sudo nixos-rebuild switch --flake .#nixos
```
