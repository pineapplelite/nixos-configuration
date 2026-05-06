{ config, pkgs, ... }:

{
  home.file.".config/fastfetch".source = ./config;
}
