{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    ouch
  ];
}
