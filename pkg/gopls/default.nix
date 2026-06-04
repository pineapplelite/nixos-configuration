{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    gopls
  ];
}
