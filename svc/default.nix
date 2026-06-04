{ config, ... }:

{
	imports = [
		./upower
		./logind
		./dbus
		./gvfs
		./tumbler
		./pipewire
		./libinput
		./power-profiles-daemon
		./flatpak
		./flatpak-repo
		./ly
		./swayidle
	];
}
