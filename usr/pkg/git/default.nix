{ conifg, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    git
  ];
}

