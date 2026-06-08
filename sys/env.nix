{ config, pkgs, lib, ... }:

{
  environment = {
    variables = {
      GTK_USE_PORTAL = "1";
      NIXOS_OZONE_WL = "1";
    };
  };
}
