{ config, pkgs, ... }:

{
  home.file.".config/yazi".source = ./config;
}
