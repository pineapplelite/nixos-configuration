{ config, ... }:

{
  imports = [
    ./hardware
    ./swap.nix
    ./locale.nix
    ./network.nix
    ./xdg.nix
  ];

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.11";
}
