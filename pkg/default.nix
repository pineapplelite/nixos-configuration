{ config, ... }:

{
  imports = [
    ./mesa
    ./libva
    ./libva-utils

    ./upower
    ./libinput
    ./gvfs
    ./dconf
    ./power-profiles-daemon

    ./brightnessctl
    ./playerctl

    ./xdg-utils
    ./xdg-user-dirs
    ./xwayland
    ./xwayland-satellite
    ./android-tools

    ./fish
    ./fastfetch
    ./bottom
    ./git
    ./tree
    ./scc
    ./helix
    ./yazi
    ./ouch

    ./clang
  ];
}
