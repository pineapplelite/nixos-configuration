{ config, ... }:

{
  imports = [
    ./upower
    ./libinput
    ./gvfs
    ./dconf
  ];
}
