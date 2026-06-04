{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    ironbar
  ];
}
