{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    translate-shell
  ];
}
