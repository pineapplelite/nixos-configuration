{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    mesa
  ];
}
