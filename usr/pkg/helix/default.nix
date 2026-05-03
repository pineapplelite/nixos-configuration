{ config, ... }:

{
  home.file.".config/helix".source = ./config;
}
