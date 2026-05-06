{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    libva-utils
  ];
}
