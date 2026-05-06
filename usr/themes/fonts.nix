{ config, pkgs, ... }:

{
  home.packages = with pkgs;
  [
    nerd-fonts.noto
    nerd-fonts.jetbrains-mono
  ];
  fonts.fontconfig.enable = true;
}
