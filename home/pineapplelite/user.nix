{ config, ... }:

{
  users.users.pineapplelite = {
    isNormalUser = true;
    home = "/home/pineapplelite";
    extraGroups = [ "wheel" "networkmanager" ];
  };
}
