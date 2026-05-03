{ config, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./graphics.nix
    ./audio.nix
    ./bluetooth.nix
  ];
}
