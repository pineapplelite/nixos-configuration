{ config, pkgs, ... }:

{
  home.packages = with pkgs;
  [
    foot
  ];
  home.file.".config/foot".source = ./config;
}
