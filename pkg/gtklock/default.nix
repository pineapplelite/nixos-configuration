{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    gtklock
  ];

  security.pam.services.gtklock = {};
}
