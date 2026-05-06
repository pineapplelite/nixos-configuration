{ config, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./graphics.nix
    ./bluetooth.nix
  ];
}
