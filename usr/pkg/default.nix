{ config, ... }:

{
  imports = [
    ./wl-clipboard
    ./cliphist
    ./niri
    ./quickshell
    ./noctalia-shell # flakeLevelPackage
    ./fuzzel

    ./fastfetch # systemLevelPackage
    ./foot
    ./zellij
    ./helix # systemLevelPackage
    ./yazi # systemLevelPackage

    ./thunar
    ./zen-browser # flakeLevelPackage
    ./ungoogled-chromium

    ./inkscape
    ./gimp
    ./libreoffice-fresh

    ./vscode-langservers-extracted
    ./typescript-language-server
    ./live-server
    ./clang-tools
  ];
}
