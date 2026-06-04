{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    awww
  ];
}
