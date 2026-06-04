{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    swayidle
  ];
}
