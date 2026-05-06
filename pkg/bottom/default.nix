{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    bottom
  ];
}
