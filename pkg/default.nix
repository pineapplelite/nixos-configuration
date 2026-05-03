{ config, ... }:

{
  imports = [
    ./upower
    ./libinput
    ./gvfs
    ./dconf
    ./brightnessctl
    ./xdg-utils
    ./xdg-user-dirs
    ./fish
    ./git
    ./tree
    ./helix
    ./yazi
  ];
}
