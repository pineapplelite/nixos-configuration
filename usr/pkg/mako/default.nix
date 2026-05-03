{ config, pkgs, ... }:

{
  home.packages = with pkgs;
  [
    mako
  ];
  home.file.".config/mako".source = ./config;
}
