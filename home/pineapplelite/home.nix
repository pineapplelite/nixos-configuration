{ config, ... }:

{
  home-manager.users.pineapplelite = { config, pkgs, ... }:
  {
    home.stateVersion = "25.11";
  };
}
