{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.stylix.nixosModules.stylix

    ./fonts.nix
    ./cursor.nix
  ];

  stylix = {
    enable = true;

    image = ./noctalia.png;

    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml";
  };
}
