{ config, pkgs, ... }:

{
  home.packages = [
    (pkgs.ungoogled-chromium.override {
      commandLineArgs = [
        "--enable-features=UseOzonePlatform"
        "--ozone-platform=wayland"
      ];
    })
  ];
}
