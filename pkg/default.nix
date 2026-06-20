{ config, pkgs, ... }:

{
	imports = [
		./mesa
		./libva-utils
		./xdg-utils
		./xdg-user-dirs
		./xfconf
		./xwayland-satellite
		./networkmanagerapplet
		./libnotify

		./niri
		./swayidle
		./gtklock
		./ironbar
		./fish
		./awww
		./mako
		./swayosd

		./wl-clipboard
		./cliphist

		./brightnessctl
		./playerctl

		./clang
		./clang-tools
		./rustc
		./cargo
		./rust-analyzer
		./zig
		./zls
		./go
		./gopls
		./nixd
		./typescript-language-server
		./vscode-langservers-extracted
		./live-server

		./ouch
		./android-tools
		./git
		./scc
		./fastfetch
		./tree
		./bottom
		./jq

		./amberol
		./loupe
		./celluloid
		./file-roller
		./blender
		./libreoffice-fresh
		./retext
		./gimp
		./thunar
		./firefox
		./helix
		./yazi
		./fuzzel
		./zellij
		./foot
		./steam
		./kid3
		./translate-shell

		./lxqt
		./kdePackages
	];
}
