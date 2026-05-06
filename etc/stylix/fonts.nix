{ config, pkgs, ... }:

{
  stylix.fonts = {
    sansSerif = {
      package = pkgs.inter;
      name = "Inter";
    };

    serif = {
      package = pkgs.ibm-plex;
      name = "IBM Plex Serif";
    };

    monospace = {
      package = pkgs.nerd-fonts.jetbrains-mono;
      name = "JetBrainsMono Nerd Font";
    };

    sizes = {
      applications = 14;
      terminal = 14;
      desktop = 14;
      popups = 14;
    };
  };

  fonts.packages = with pkgs;
  [
    inter
    ibm-plex
    jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    font-awesome
  ];
}
