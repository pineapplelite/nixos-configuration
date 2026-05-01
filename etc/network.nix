{ config, ... }:

{
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };
}
