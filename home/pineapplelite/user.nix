{ config, pkgs, ... }:

{
  users.users.pineapplelite = {
    isNormalUser = true;
    home = "/home/pineapplelite";
    shell = pkgs.fish;
    extraGroups = [ "wheel" "networkmanager" ];
  };
}
