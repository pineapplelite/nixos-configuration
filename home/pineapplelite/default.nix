{ config, ... }:

{
  imports = [
    ./user.nix
  ];
  home-manager.users.pineapplelite = ./home.nix;
}
