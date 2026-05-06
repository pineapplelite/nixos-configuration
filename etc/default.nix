{ config, ... }:

{
  imports = [
    ./hardware
    ./stylix
    ./swap.nix
    ./locale.nix
    ./network.nix
    ./xdg.nix
    ./dbus.nix
    ./pipewire.nix
  ];

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.11";
}
