{ config, ... }:

{
	home.file.".config/niri".source = ./niri;
	home.file.".config/ironbar".source = ./ironbar;
	home.file.".config/foot".source = ./foot;
	home.file.".config/mako".source = ./mako;
	home.file.".config/fuzzel".source = ./fuzzel;
	home.file.".config/helix".source = ./helix;
	home.file.".config/yazi".source = ./yazi;
	home.file.".config/zellij".source = ./zellij;
	home.file.".config/fastfetch".source = ./fastfetch;
}
