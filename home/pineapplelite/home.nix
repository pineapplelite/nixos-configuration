{ config, ... }:

{
  home.username = "pineapplelite";
  home.homeDirectory = "/home/pineapplelite";

  imports = [
    ./pkg
  ];

  home.stateVersion = "25.11";
}
