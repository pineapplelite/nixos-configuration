{ config, ... }:

{
  imports = [
    ./upower
    ./libinput
    ./gvfs
    ./dconf
    ./brightnessctl
    ./playerctl
    ./xdg-utils
    ./xdg-user-dirs
    ./fish
    ./git
    ./tree
    ./helix
    ./yazi
  ];
}
