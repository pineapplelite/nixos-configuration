{ config, pkgs, ... }:

{
  home.packages = with pkgs;
  [
    live-server
  ];
}
