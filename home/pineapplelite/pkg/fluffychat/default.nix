{ config, pkgs, ... }:

{
  home.packages = with pkgs;
  [
    fluffychat
  ];
}
