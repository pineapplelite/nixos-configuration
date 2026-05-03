{ config, pkgs, ... }:

{
  home.packages = with pkgs;
  [
    fuzzel
  ];
  home.file.".config/fuzzel".source = ./config;
}
