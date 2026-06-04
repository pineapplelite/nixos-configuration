{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    mako
  ];
}
