{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    playerctl
  ];
}
