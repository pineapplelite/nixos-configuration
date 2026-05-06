{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    scc
  ];
}
