{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    kid3
  ];
}
