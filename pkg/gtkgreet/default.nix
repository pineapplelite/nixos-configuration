{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    gtkgreet
  ];
}
