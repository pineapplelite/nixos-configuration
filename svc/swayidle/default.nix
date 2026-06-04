{ config, pkgs, ... }:

{
  systemd.user.services.swayidle = {
    wantedBy = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];

    serviceConfig = {
      ExecStart = ''
        ${pkgs.swayidle}/bin/swayidle -w \
        timeout 300 '${pkgs.gtklock}/bin/gtklock' \
        timeout 600 '${pkgs.niri}/bin/niri msg action power-off-monitors' \
        resume '${pkgs.niri}/bin/niri msg action power-on-monitors' \
        before-sleep '${pkgs.gtklock}/bin/gtklock'
      '';

      Restart = "always";
      RestartSec = 2;
    };
  };
}
