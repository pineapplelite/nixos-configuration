{ config, pkgs, lib, ... }:

{
  environment = {
    variables = {
      GTK_USE_PORTAL = "1";
      NIXOS_OZONE_WL = "1";

      QT_QPA_PLATFORM = "wayland;xcb";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";

      SDL_VIDEODRIVER = "wayland";
    };
  };
}
